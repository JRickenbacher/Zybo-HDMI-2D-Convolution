----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2024 03:06:26 PM
-- Design Name: 
-- Module Name: ConvolutionModule - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Redeclare IEEE packages for your entity definition
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.pixel_array_pkg.all;

entity ConvolutionModule is
Generic(MAX_WIDTH : integer := 1920; --Max Screen size width
        MAX_HEIGHT : integer := 1080; --Max screen size height;
        MAX_WEIGHTS : integer := 9;  --Max Size is 7x7 which is 49 weights
        MAX_KERNEL_SIZE : integer := 3;
        MAX_KERNEL_PAD_COUNT : integer := 2;
        MAX_NEXT_COL_BUFFER_FILL_LEVEL : integer := 8);
  Port ( 
	axis_aclk	: in std_logic;
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pixel_width : in std_logic_vector(15 downto 0);
    s_pixel_height : in std_logic_vector(15 downto 0);
    s_kernel_values : in data9_array(0 to MAX_WEIGHTS-1);
    s_enable : in std_logic;
    s_blur : in std_logic;
    
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    
    -- BRAM Signals
    bram_waddr  : out std_logic_vector(10 downto 0);
    bram_writing_data : out std_logic_vector(23 downto 0);
    bram_write_en_array     : out std_logic_vector(0 to 2);
    
    bram_raddr  : out std_logic_vector(10 downto 0);
    bram_reading_data_array : in data24_array(0 to 2)
    
    );

end ConvolutionModule;

architecture Behavioral of ConvolutionModule is

constant READ_DELAY : integer := 3;
constant INIT_PIPELINE_DELAY : integer := 3;
constant SETUP_DELAY : integer := 5;
constant SETUP_CONSTANTS_DELAY : integer := 5;

----------------------------------------------------------------------------------------------
-- State Machine
----------------------------------------------------------------------------------------------
type state_type is (S0_Setup, S1_InputOnly, S2_InputOutput, S3_OutputOnly, S4_SetConstants, S5_IdleUntilSOF, S6_WaitForBRAMClear);
signal curr_state, next_state : state_type := S0_Setup;
-- Control signals
signal set_defaults, incr_write_addr, incr_output_addr, write_zeros_to_bram, reached_max_pixel_addr, vdma_en, set_constants, input_only: std_logic := '0';

----------------------------------------------------------------------------------------------
-- Row State Machine
----------------------------------------------------------------------------------------------
type row_state_type is (S0_InitiateNewRow, S1_ReadDelay, S2_LoadCol1, S3_LoadCol2, 
    S4_InitializeBuffer, S5_PipelineWithoutOutput, S6_PipelineWithOutput, S7_WaitForNextRow, S8_ResetBRAM, S9_WaitForNextFrame, S10_ReadDelayAgain, S11_ShiftKernelValues);
signal curr_row_state, next_row_state : row_state_type := S9_WaitForNextFrame;
-- Control signals
signal reset_output_count, unexpected_SOF, clear_pixels_read_from_vdma, pipeline_delay_complete, pipeline_delay_counter_en, done_resetting_bram, reset_bram, row_state_machine_waiting, enable_row_state_machine : std_logic := '0';
signal answer_output_count : unsigned(31 downto 0) := (others => '0');
signal column_of_next_output  : unsigned(31 downto 0) := (0 => '1', others => '0');
----------------------------------------------------------------------------------------------
-- Current Module Options
----------------------------------------------------------------------------------------------
signal pixel_width, pixel_height : unsigned(15 downto 0) := (others => '0');
signal kernel_values : data9_array(0 to MAX_WEIGHTS-1) := (others => (others => '0'));
signal total_pixels : unsigned(31 downto 0) := (others => '0');
signal unused_bram_spaces : unsigned(31 downto 0) := (others => '0');
signal pixels_read_from_vdma : unsigned(31 downto 0) := (others => '0');
----------------------------------------------------------------------------------------------
-- Convolution Signals
----------------------------------------------------------------------------------------------
-- Current pixels for computing the convolution
signal current_pixels : data24_array(0 to MAX_WEIGHTS-1) := (others => (others => '0'));

signal next_col_buffer : data72_array(0 to MAX_NEXT_COL_BUFFER_FILL_LEVEL-1) := (others => (others => '0'));
signal next_col_buffer_fill_level : integer := 0;


----------------------------------------------------------------------------------------------
-- Control Signals
----------------------------------------------------------------------------------------------
signal shift_curr_kernel_values, blur_en : std_logic := '0';

-- Delay Counter Signals
signal actively_reading_from_bram, setup_delay_counter_en, setup_constants_delay_counter_en, setup_delay_complete, setup_constants_delay_complete : std_logic := '0';
signal pipeline_delay_count, setup_delay_count, setup_constants_delay_count : unsigned(3 downto 0) := (others => '0');
signal read_delay_shift_reg : std_logic_vector(2 downto 0) := (others => '0');


-- BRAM Read Index Signals
signal reset_bram_read_index, bram_read_data_valid, increment_bram_read_index : std_logic := '0';
signal bram_read_index : unsigned(10 downto 0) := (0 => '1', others => '0');

--BRAM Write Index Signals
signal bram_write_en, writing_to_last_col_of_bram_next : std_logic := '0';
signal current_bram_write_index, current_bram_write_row : unsigned(10 downto 0) := (others => '0');
signal write_en_array : std_logic_vector(0 to 2) := "000";
signal reset_bram_index : unsigned(10 downto 0) := (others => '0');
-- Current Pixel Signals
signal load_col_1, load_col_2, pipeline_en : std_logic := '0';

-- Next Column Signals
signal initialize_buffer, pipeline_paused : std_logic := '0';

-- Convolution Computation Signals
signal pipeline_clear, answer_valid : std_logic := '1';
signal intermediate_products_red, intermediate_products_green, intermediate_products_blue : signed18_array(0 to MAX_WEIGHTS-1) := (others => (others => '0'));
signal col_sum_red, col_sum_green, col_sum_blue : signed18_array(0 to 2) := (others => (others => '0'));
signal answer_red, answer_green, answer_blue : signed(17 downto 0) := (others => '0');
signal clipped_answer_red, clipped_answer_green, clipped_answer_blue : std_logic_vector(7 downto 0) := (others => '0');

signal bram_waddr_signal : std_logic_vector(10 downto 0) := (others => '0');

begin
    
----------------------------------------------------------------------------------------------
-- Constants (dependent on our inputs)
----------------------------------------------------------------------------------------------
save_constants_for_run : process(axis_aclk)
begin 
if rising_edge(axis_aclk) then
    if set_constants = '1' then
        total_pixels <= (pixel_width*pixel_height);
    end if;
end if;
end process;

----------------------------------------------------------------------------------------------
-- Save kernel values - cycle the rows after each row is finished.
----------------------------------------------------------------------------------------------
process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    if set_defaults = '1' then
        kernel_values <= s_kernel_values;
    elsif shift_curr_kernel_values = '1' then 
        kernel_values(0) <= kernel_values(6);
        kernel_values(1) <= kernel_values(7);
        kernel_values(2) <= kernel_values(8);
        kernel_values(3) <= kernel_values(0);
        kernel_values(4) <= kernel_values(1);
        kernel_values(5) <= kernel_values(2);
        kernel_values(6) <= kernel_values(3);
        kernel_values(7) <= kernel_values(4);
        kernel_values(8) <= kernel_values(5);
    end if;
end if;

end process;

------------------------------------------------------------------------------------
-- Delay Counter (synchronous process, happens on the rising edge)
------------------------------------------------------------------------------------
delay_counter : process(axis_aclk)
begin
if rising_edge (axis_aclk) then
    read_delay_shift_reg <= actively_reading_from_bram & read_delay_shift_reg(2 downto 1);
end if;
end process delay_counter; 

bram_read_data_valid <= read_delay_shift_reg(0);

------------------------------------------------------------------------------------
-- Increment BRAM read index
------------------------------------------------------------------------------------
increment_bram_read_index_proc : process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    if reset_bram_read_index = '1' then
        bram_read_index <= (0 => '1', others => '0');

    elsif increment_bram_read_index = '1' then
        if bram_read_index < pixel_width + 1 then
            bram_read_index <= bram_read_index + 1;
        end if;
    end if;
end if;
end process increment_bram_read_index_proc;

bram_raddr <= std_logic_vector(bram_read_index);

------------------------------------------------------------------------------------
-- Update current pixels array
------------------------------------------------------------------------------------
current_pixel_updating : process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    if load_col_1 = '1' then
        current_pixels(1) <= bram_reading_data_array(0);
        current_pixels(4) <= bram_reading_data_array(1);
        current_pixels(7) <= bram_reading_data_array(2);
    elsif load_col_2 = '1' then
        current_pixels(2) <= bram_reading_data_array(0);
        current_pixels(5) <= bram_reading_data_array(1);
        current_pixels(8) <= bram_reading_data_array(2);
    elsif pipeline_en = '1' then
        -- Row 0
        current_pixels(0) <= current_pixels(1);
        current_pixels(1) <= current_pixels(2);
        current_pixels(2) <= next_col_buffer(0)(71 downto 48);

        -- Row 1
        current_pixels(3) <= current_pixels(4);
        current_pixels(4) <= current_pixels(5);
        current_pixels(5) <= next_col_buffer(0)(47 downto 24);

        -- Row 2
        current_pixels(6) <= current_pixels(7);
        current_pixels(7) <= current_pixels(8);
        current_pixels(8) <= next_col_buffer(0)(23 downto 0);
    end if; 
end if;
end process current_pixel_updating;

------------------------------------------------------------------------------------
-- Update Next Column Buffer
------------------------------------------------------------------------------------
next_col_buffer_filling : process(axis_aclk)
begin
if rising_edge(axis_aclk) then 

    -- Start buffer
    if initialize_buffer = '1' then
        next_col_buffer(0) <= (bram_reading_data_array(0) & bram_reading_data_array(1) & bram_reading_data_array(2));
        next_col_buffer_fill_level <= 1;

    -- Shift if pipeline is running - no change in fill level
    elsif pipeline_en = '1' then
        
        -- Shift everything in buffer
        next_col_buffer <= next_col_buffer(1 to MAX_NEXT_COL_BUFFER_FILL_LEVEL-1) & "000000000000000000000000000000000000000000000000000000000000000000000000";
        
        if bram_read_data_valid = '1' then
            next_col_buffer(next_col_buffer_fill_level-1) <= (bram_reading_data_array(0) & bram_reading_data_array(1) & bram_reading_data_array(2));
        else
            -- pipeline is running but we do not add anything to replace the value going out
            next_col_buffer_fill_level <= next_col_buffer_fill_level-1;
        end if;

    -- pipeline is not running, but there is room in the buffer
    elsif pipeline_paused = '1' and next_col_buffer_fill_level < MAX_NEXT_COL_BUFFER_FILL_LEVEL then 
        if bram_read_data_valid = '1' then
            next_col_buffer(next_col_buffer_fill_level) <= (bram_reading_data_array(0) & bram_reading_data_array(1) & bram_reading_data_array(2));
            next_col_buffer_fill_level <= next_col_buffer_fill_level+1;
        end if;
    end if;
end if;
end process next_col_buffer_filling;

------------------------------------------------------------------------------------
-- Convolution Computation Pipelined
------------------------------------------------------------------------------------
convolution_computation : process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    if pipeline_clear = '1' then
        intermediate_products_red <= (others => (others => '0'));
        col_sum_red <= (others => (others => '0'));
        answer_red <= (others => '0');
        
        intermediate_products_green <= (others => (others => '0'));
        col_sum_green <= (others => (others => '0'));
        answer_green <= (others => '0');
        
        intermediate_products_blue <= (others => (others => '0'));
        col_sum_blue <= (others => (others => '0'));
        answer_blue <= (others => '0');
    elsif pipeline_en = '1' then
        -- Col 0
        intermediate_products_red(0) <= signed(kernel_values(0)) * signed('0' & current_pixels(0)(23 downto 16));
        intermediate_products_red(3) <= signed(kernel_values(3)) * signed('0' & (current_pixels(3)(23 downto 16)));
        intermediate_products_red(6) <= signed(kernel_values(6)) * signed('0' & (current_pixels(6)(23 downto 16)));
        
        -- Col 1
        intermediate_products_red(1) <= signed(kernel_values(1)) * signed('0' & (current_pixels(1)(23 downto 16)));
        intermediate_products_red(4) <= signed(kernel_values(4)) * signed('0' & (current_pixels(4)(23 downto 16)));
        intermediate_products_red(7) <= signed(kernel_values(7)) * signed('0' & (current_pixels(7)(23 downto 16)));
        
        -- Col 2
        intermediate_products_red(2) <= signed(kernel_values(2)) * signed('0' & (current_pixels(2)(23 downto 16)));
        intermediate_products_red(5) <= signed(kernel_values(5)) * signed('0' & (current_pixels(5)(23 downto 16)));
        intermediate_products_red(8) <= signed(kernel_values(8)) * signed('0' & (current_pixels(8)(23 downto 16)));
        
        col_sum_red(0) <= intermediate_products_red(0) + intermediate_products_red(3) + intermediate_products_red(6);
        col_sum_red(1) <= intermediate_products_red(1) + intermediate_products_red(4) + intermediate_products_red(7);
        col_sum_red(2) <= intermediate_products_red(2) + intermediate_products_red(5) + intermediate_products_red(8);
        
        answer_red <= col_sum_red(0) + col_sum_red(1) + col_sum_red(2);
        
        if blur_en = '1' then
            if answer_red < 0 then
                clipped_answer_red <= (others => '0');
            elsif answer_red > 4095 then
                clipped_answer_red <= (others => '1');
            else
                clipped_answer_red <= std_logic_vector(answer_red(11 downto 4));
            end if;
        else
            if answer_red < 0 then
                clipped_answer_red <= (others => '0');
            elsif answer_red > 255 then
                clipped_answer_red <= (others => '1');
            else
                clipped_answer_red <= std_logic_vector(answer_red(7 downto 0));
            end if;
        end if;
        
        
        -- Col 0
        intermediate_products_green(0) <= signed(kernel_values(0)) * signed('0' & (current_pixels(0)(15 downto 8)));
        intermediate_products_green(3) <= signed(kernel_values(3)) * signed('0' & (current_pixels(3)(15 downto 8)));
        intermediate_products_green(6) <= signed(kernel_values(6)) * signed('0' & (current_pixels(6)(15 downto 8)));
        
        -- Col 1
        intermediate_products_green(1) <= signed(kernel_values(1)) * signed('0' & (current_pixels(1)(15 downto 8)));
        intermediate_products_green(4) <= signed(kernel_values(4)) * signed('0' & (current_pixels(4)(15 downto 8)));
        intermediate_products_green(7) <= signed(kernel_values(7)) * signed('0' & (current_pixels(7)(15 downto 8)));
        
        -- Col 2
        intermediate_products_green(2) <= signed(kernel_values(2)) * signed('0' & (current_pixels(2)(15 downto 8)));
        intermediate_products_green(5) <= signed(kernel_values(5)) * signed('0' & (current_pixels(5)(15 downto 8)));
        intermediate_products_green(8) <= signed(kernel_values(8)) * signed('0' & (current_pixels(8)(15 downto 8)));
        
        col_sum_green(0) <= intermediate_products_green(0) + intermediate_products_green(3) + intermediate_products_green(6);
        col_sum_green(1) <= intermediate_products_green(1) + intermediate_products_green(4) + intermediate_products_green(7);
        col_sum_green(2) <= intermediate_products_green(2) + intermediate_products_green(5) + intermediate_products_green(8);
        
        answer_green <= col_sum_green(0) + col_sum_green(1) + col_sum_green(2);
        
        if blur_en = '1' then
            if answer_green < 0 then
                clipped_answer_green <= (others => '0');
            elsif answer_green > 4095 then
                clipped_answer_green <= (others => '1');
            else
                clipped_answer_green <= std_logic_vector(answer_green(11 downto 4));
            end if;
        else
            if answer_green < 0 then
                clipped_answer_green <= (others => '0');
            elsif answer_green > 255 then
                clipped_answer_green <= (others => '1');
            else
                clipped_answer_green <= std_logic_vector(answer_green(7 downto 0));
            end if;
        end if;
        
        
        -- Col 0
        intermediate_products_blue(0) <= signed(kernel_values(0)) * signed('0' & (current_pixels(0)(7 downto 0)));
        intermediate_products_blue(3) <= signed(kernel_values(3)) * signed('0' & (current_pixels(3)(7 downto 0)));
        intermediate_products_blue(6) <= signed(kernel_values(6)) * signed('0' & (current_pixels(6)(7 downto 0)));
        
        -- Col 1
        intermediate_products_blue(1) <= signed(kernel_values(1)) * signed('0' & (current_pixels(1)(7 downto 0)));
        intermediate_products_blue(4) <= signed(kernel_values(4)) * signed('0' & (current_pixels(4)(7 downto 0)));
        intermediate_products_blue(7) <= signed(kernel_values(7)) * signed('0' & (current_pixels(7)(7 downto 0)));
        
        -- Col 2
        intermediate_products_blue(2) <= signed(kernel_values(2)) * signed('0' & (current_pixels(2)(7 downto 0)));
        intermediate_products_blue(5) <= signed(kernel_values(5)) * signed('0' & (current_pixels(5)(7 downto 0)));
        intermediate_products_blue(8) <= signed(kernel_values(8)) * signed('0' & (current_pixels(8)(7 downto 0)));
        
        col_sum_blue(0) <= intermediate_products_blue(0) + intermediate_products_blue(3) + intermediate_products_blue(6);
        col_sum_blue(1) <= intermediate_products_blue(1) + intermediate_products_blue(4) + intermediate_products_blue(7);
        col_sum_blue(2) <= intermediate_products_blue(2) + intermediate_products_blue(5) + intermediate_products_blue(8);
        
        answer_blue <= col_sum_blue(0) + col_sum_blue(1) + col_sum_blue(2);
        
        if blur_en = '1' then
            if answer_blue < 0 then
                clipped_answer_blue <= (others => '0');
            elsif answer_blue > 4095 then
                clipped_answer_blue <= (others => '1');
            else
                clipped_answer_blue <= std_logic_vector(answer_blue(11 downto 4));
            end if;
        else
            if answer_blue < 0 then
                clipped_answer_blue <= (others => '0');
            elsif answer_blue > 255 then
                clipped_answer_blue <= (others => '1');
            else
                clipped_answer_blue <= std_logic_vector(answer_blue(7 downto 0));
            end if;
        end if;
        
    end if;
end if;
end process convolution_computation;

------------------------------------------------------------------------------------
-- BRAM write index counter
------------------------------------------------------------------------------------
bram_write_index_counter : process(axis_aclk)
begin
if rising_edge(axis_aclk) then

    if set_defaults = '1' then
        current_bram_write_index <= (0 => '1', others => '0');
        current_bram_write_row <= (0 => '1', others => '0');
    elsif bram_write_en = '1' then
        
        -- reset index to 1, increment row
        if writing_to_last_col_of_bram_next = '1' then
            current_bram_write_index <= (0 => '1', others => '0'); -- 1 to WIDTH
            
            -- wrap back to first row
            if current_bram_write_row = 2 then
                current_bram_write_row <= (others => '0'); -- 0 to 2
            else
                current_bram_write_row <= current_bram_write_row + 1;
            end if;
            
        -- increment index
        else
            current_bram_write_index <= current_bram_write_index + 1;
        end if;

        if current_bram_write_index = pixel_width - 1 then
            writing_to_last_col_of_bram_next <= '1';
        else
            writing_to_last_col_of_bram_next <= '0';
        end if;
    end if;
end if;
end process bram_write_index_counter;

------------------------------------------------------------------------------------
-- BRAM write logic
------------------------------------------------------------------------------------
writing_to_bram_selection : process(bram_write_en, s_axis_tdata, current_bram_write_index, write_zeros_to_bram, current_bram_write_row, s_axis_tvalid, reset_bram, reset_bram_index)
begin

-- default
write_en_array <= (others => '0');

if reset_bram = '1' then
    write_en_array <= (others => '0');
    bram_waddr_signal <= std_logic_vector(reset_bram_index);
    write_en_array <= (others => '1');
elsif bram_write_en = '1' then
    if current_bram_write_row = 0 then
        write_en_array(0) <= '1';
    elsif current_bram_write_row = 1 then
        write_en_array(1) <= '1';
    else
        write_en_array(2) <= '1';
    end if;
    
    bram_waddr_signal <= std_logic_vector(current_bram_write_index);

end if;

if (write_zeros_to_bram = '1') or reset_bram = '1' then
    bram_writing_data <= (others => '0');
else
    bram_writing_data <= s_axis_tdata;
end if;

end process writing_to_bram_selection;

bram_waddr <= bram_waddr_signal;
bram_write_en_array <= write_en_array;

----------------------------------------------------------------------------------------------
-- Pixels read from vdma
----------------------------------------------------------------------------------------------
process(axis_aclk)
begin

if rising_edge(axis_aclk) then
    if clear_pixels_read_from_vdma = '1' then
        pixels_read_from_vdma <= (others => '0');
    elsif bram_write_en = '1' and write_zeros_to_bram = '0' then
        if pixels_read_from_vdma < total_pixels then
            pixels_read_from_vdma <= pixels_read_from_vdma + 1;
        end if;
    end if;
end if;

end process;


----------------------------------------------------------------------------------------------
-- When to enable bram_write_en
----------------------------------------------------------------------------------------------
process(unused_bram_spaces, s_axis_tvalid, write_zeros_to_bram, next_col_buffer_fill_level)
begin

-- If there are spaces to fill in and 
if unused_bram_spaces > 0 and (s_axis_tvalid = '1' or write_zeros_to_bram = '1') and (next_col_buffer_fill_level < MAX_NEXT_COL_BUFFER_FILL_LEVEL - 3) then
    bram_write_en <= '1';
else
    bram_write_en <= '0';
end if;
    
end process;

----------------------------------------------------------------------------------------------
-- Update number of spaces available
----------------------------------------------------------------------------------------------
process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    if set_constants = '1' then
        unused_bram_spaces <= pixel_width * 2;
        
    elsif (input_only = '1') and bram_write_en = '1' then
        unused_bram_spaces <= unused_bram_spaces - 1;
    -- If the answer is valid, the stream converter is ready to take the data, and we are not writing, then we have one more spac
    -- if in answer is for the first column, then we dont open up a space. if the answer is in the last column, then we open up two spaces
    elsif (answer_valid = '1') and (m_axis_tready = '1') and (column_of_next_output /= 1) then
        if bram_write_en = '0' and column_of_next_output = pixel_width then
            unused_bram_spaces <= unused_bram_spaces + 2;
        elsif bram_write_en = '0' then
            unused_bram_spaces <= unused_bram_spaces + 1;
        elsif bram_write_en = '1' and column_of_next_output = pixel_width then
            unused_bram_spaces <= unused_bram_spaces + 1;
        end if;
    elsif bram_write_en = '1' then
        unused_bram_spaces <= unused_bram_spaces - 1;
    end if;
end if;

end process;


----------------------------------------------------------------------------------------------
-- Keep track of information about the current output
----------------------------------------------------------------------------------------------
process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    -- Total pixel counter
    if reset_output_count = '1' then
        answer_output_count <= (others => '0');
    elsif (answer_valid = '1') and (m_axis_tready = '1') then
        answer_output_count <= answer_output_count + 1;
    end if;

    -- Just the column of the output
    if reset_output_count = '1' then
        column_of_next_output <= (0 => '1', others => '0');
    elsif (answer_valid = '1') and (m_axis_tready = '1') then
        if column_of_next_output = pixel_width then
            column_of_next_output <= (0 => '1', others => '0');
        else
            column_of_next_output <= column_of_next_output + 1;
        end if;
    end if;

end if;

end process;

----------------------------------------------------------------------------------------------
-- Default Setup
----------------------------------------------------------------------------------------------
default_setup : process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    if set_defaults = '1' then
        pixel_height <= unsigned(s_pixel_height);
        pixel_width <= unsigned(s_pixel_width);
        blur_en <= s_blur;
    end if;
end if;
end process;

----------------------------------------------------------------------------------------------
-- Reset BRAM
----------------------------------------------------------------------------------------------
reset_bram_proc : process(axis_aclk)
begin

if rising_edge(axis_aclk) then

    -- control signal
    if reset_bram_index = pixel_width-1 and reset_bram = '1' then
        done_resetting_bram <= '1';
    else
        done_resetting_bram <= '0';
    end if;


    if reset_bram = '1' then
        reset_bram_index <= reset_bram_index + 1;
    else
        reset_bram_index <= (0 => '1', others => '0');
    end if;

end if;

end process reset_bram_proc;


----------------------------------------------------------------------------------------------
-- Pipeline delay
----------------------------------------------------------------------------------------------

piepline_delay_counter : process(axis_aclk)
begin
if rising_edge (axis_aclk) then
    if pipeline_delay_counter_en = '1' then 
        if pipeline_delay_count < INIT_PIPELINE_DELAY then
            pipeline_delay_count <= pipeline_delay_count + 1;
        end if;
    else
        pipeline_delay_count <= (others => '0');
    end if;
end if;
end process piepline_delay_counter; 

pipeline_delay_complete <= '1' when (pipeline_delay_count = INIT_PIPELINE_DELAY) else '0';

----------------------------------------------------------------------------------------------
-- Setup delay
----------------------------------------------------------------------------------------------
setup_delay_counter : process(axis_aclk)
begin
if rising_edge (axis_aclk) then
    if setup_delay_counter_en = '1' then 
        if setup_delay_count < SETUP_DELAY then
            setup_delay_count <= setup_delay_count + 1;
        end if;
    else
        setup_delay_count <= (others => '0');
    end if;
end if;
end process setup_delay_counter; 

setup_delay_complete <= '1' when (setup_delay_count = SETUP_DELAY) else '0';

----------------------------------------------------------------------------------------------
-- Setup constants delay
----------------------------------------------------------------------------------------------
setup_constants_delay_counter : process(axis_aclk)
begin
if rising_edge (axis_aclk) then
    if setup_constants_delay_counter_en = '1' then 
        if setup_constants_delay_count < SETUP_DELAY then
            setup_constants_delay_count <= setup_constants_delay_count + 1;
        end if;
    else
        setup_constants_delay_count <= (others => '0');
    end if;
end if;
end process setup_constants_delay_counter; 

setup_constants_delay_complete <= '1' when (setup_constants_delay_count = SETUP_CONSTANTS_DELAY) else '0';

----------------------------------------------------------------------------------------------
-- Unexpected SOF
----------------------------------------------------------------------------------------------

unexpected_SOF <= '1' when  s_axis_tuser = "1" and (pixels_read_from_vdma > 0 and pixels_read_from_vdma < total_pixels) else '0';


------------------------------------------------------------------------------------
-- Next State Logic + Control Signals
------------------------------------------------------------------------------------
row_state_logic : process(curr_row_state, pipeline_delay_complete, m_axis_tready, unused_bram_spaces, column_of_next_output, done_resetting_bram, enable_row_state_machine, answer_output_count, unexpected_SOF)
begin
    --defaults
    next_row_state <= curr_row_state;
    pipeline_clear <= '0';
    reset_bram_read_index <= '0';
    load_col_1 <= '0';
    load_col_2 <= '0';
    initialize_buffer <= '0';
    pipeline_en <= '0';
    answer_valid <= '0';
    pipeline_paused <= '0';
    actively_reading_from_bram <= '0';
    shift_curr_kernel_values <= '0';
    reset_output_count <= '0';
    pipeline_delay_counter_en <= '0';
    row_state_machine_waiting <= '0';
    reset_bram <= '0';

    case curr_row_state is
        
        when S0_InitiateNewRow => 
            -- Control Signals
            pipeline_clear <= '1';
            reset_bram_read_index <= '1';
            actively_reading_from_bram <= '1';
            
            -- Next State Logic
            next_row_state <= S1_ReadDelay;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;
        
        when S1_ReadDelay => 
            -- Control Signals
            increment_bram_read_index <= '1';
            actively_reading_from_bram <= '1';
            
            -- Next State Logic
            next_row_state <= S10_ReadDelayAgain;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;
            
        when S10_ReadDelayAgain =>
            -- Control Signals
            increment_bram_read_index <= '1';
            actively_reading_from_bram <= '1';
            
            -- Next State Logic
            next_row_state <= S2_LoadCol1;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S2_LoadCol1 => 
            -- Control Signals
            load_col_1 <= '1';
            increment_bram_read_index <= '1';
            actively_reading_from_bram <= '1';

            -- Next State Logic
            next_row_state <= S3_LoadCol2;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S3_LoadCol2 => 
            -- Control Signals
            load_col_2 <= '1';
            increment_bram_read_index <= '1';
            actively_reading_from_bram <= '1';
            
            -- Next State Logic
            next_row_state <= S4_InitializeBuffer;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S4_InitializeBuffer => 
            -- Control Signals
            initialize_buffer <= '1';
            increment_bram_read_index <= '1';
            actively_reading_from_bram <= '1';
            
            -- Next State Logic
            next_row_state <= S5_PipelineWithoutOutput;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S5_PipelineWithoutOutput => 
            -- Control Signals
            pipeline_en <= '1';
            pipeline_delay_counter_en <= '1';
            increment_bram_read_index <= '1';
            actively_reading_from_bram <= '1';
            
            -- Next State Logic
            if pipeline_delay_complete = '1' then
                next_row_state <= S6_PipelineWithOutput;
            end if;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S6_PipelineWithOutput => 
            -- Control Signals
            if m_axis_tready = '1' then
                pipeline_en <= '1';
                increment_bram_read_index <= '1';
                actively_reading_from_bram <= '1';
            else
                pipeline_en <= '0';
                pipeline_paused <= '1';
            end if;
            
            answer_valid <= '1';

            -- Next State Logic
            if answer_output_count = total_pixels-1 and m_axis_tready = '1' then
                next_row_state <= S8_ResetBRAM;
            elsif column_of_next_output = pixel_width and m_axis_tready = '1' then
                next_row_state <= S11_ShiftKernelValues;
            end if;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;
            
        when S11_ShiftKernelValues => 
            -- Control Signals
            shift_curr_kernel_values <= '1';
            
            -- Next State Logic
            next_row_state <= S7_WaitForNextRow;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S7_WaitForNextRow =>
            -- Control Signals
            
            -- Next State Logic
            if unused_bram_spaces = 0 then
                next_row_state <= S0_InitiateNewRow;
            end if;
            
            if unexpected_SOF = '1' then
                next_row_state <= S8_ResetBRAM;
            end if;

        when S8_ResetBRAM =>
            -- Control Signals
            reset_bram <= '1';
            reset_output_count <= '1';

            -- Next State Logic
            if done_resetting_bram = '1' then
                next_row_state <= S9_WaitForNextFrame;
            end if;

        when S9_WaitForNextFrame =>
            -- Control Signals
            row_state_machine_waiting <= '1';

            -- Next State Logic
            if enable_row_state_machine = '1' then
                next_row_state <= S0_InitiateNewRow;
            end if;

        when others =>
            next_row_state <= S0_InitiateNewRow;
    end case;
end process row_state_logic;
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- Row State Machine Update
------------------------------------------------------------------------------------
row_state_update : process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    curr_row_state <= next_row_state;
end if;
end process row_state_update;
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- Next State Logic + Control Signals
------------------------------------------------------------------------------------
state_logic : process(curr_state, unexpected_SOF, s_axis_tvalid, reached_max_pixel_addr, vdma_en, m_axis_tready, s_enable, pixels_read_from_vdma, bram_write_en, setup_delay_complete, row_state_machine_waiting, setup_constants_delay_complete, s_axis_tuser)
begin
    --defaults
    next_state <= curr_state;
    set_defaults <= '0';
    write_zeros_to_bram <= '0';
    set_constants <= '0';
    input_only <= '0';
    setup_delay_counter_en <= '0';
    enable_row_state_machine <= '0';
    setup_constants_delay_counter_en <= '0';
    clear_pixels_read_from_vdma <= '0';
    
    case curr_state is
        when S5_IdleUntilSOF => 
        
            if (s_axis_tuser = "1" and s_enable = '1') then
                next_state <= S0_Setup;
            end if; 
    
        when S0_Setup => 
            -- Control Signals
            set_defaults <= '1';
            clear_pixels_read_from_vdma <= '1';
            
            if s_enable = '1' then
                setup_delay_counter_en <= '1';
            end if;
            
            -- Next State Logic
            if setup_delay_complete = '1' then
                next_state <= S4_SetConstants;
            end if;
            
        when S4_SetConstants => 
            -- Control Signals
            set_constants <= '1';
            setup_constants_delay_counter_en <= '1';
            
            -- Next State Logic
            if setup_constants_delay_complete = '1' then
                next_state <= S1_InputOnly;
            end if;

        when S1_InputOnly => 
            -- Control Signals
            input_only <= '1';
            
            -- Next State Logic
            if unused_bram_spaces = 0 then 
                next_state <= S2_InputOutput;
            end if;
            
            if unexpected_SOF = '1' then
                next_state <= S6_WaitForBRAMClear;
            end if;

        when S2_InputOutput => 
            -- Control Signals
            enable_row_state_machine <= '1';
            
            -- Next State Logic
            if pixels_read_from_vdma = total_pixels-1 and bram_write_en = '1' then
                next_state <= S3_OutputOnly;
            end if;
            
            if unexpected_SOF = '1' then
                next_state <= S6_WaitForBRAMClear;
            end if;
            

        when S3_OutputOnly => 
            -- Control Signals
            if row_state_machine_waiting = '0' then
                enable_row_state_machine <= '1';
            end if;
            write_zeros_to_bram <= '1';
            
            -- Next State Logic
            if row_state_machine_waiting = '1' then
                next_state <= S0_Setup;
            end if;
            
            if unexpected_SOF = '1' then
                next_state <= S6_WaitForBRAMClear;
            end if;
            
        when S6_WaitForBRAMClear => 
            -- Control Signals
            
            -- Next State Logic
            if row_state_machine_waiting = '1' then
                next_state <= S0_Setup;
            end if;

        when others =>
            next_state <= S0_Setup;
    end case;
end process state_logic;
------------------------------------------------------------------------------------

------------------------------------------------------------------------------------
-- State Machine Update
------------------------------------------------------------------------------------
state_update : process(axis_aclk)
begin
if rising_edge(axis_aclk) then
    curr_state <= next_state;
end if;
end process state_update;
------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------
-- Outputs
----------------------------------------------------------------------------------------------
s_axis_tready <= '1' when (bram_write_en = '1' and write_zeros_to_bram = '0') and (unexpected_SOF = '0' and reset_bram = '0') else '0';
m_axis_tvalid <= answer_valid;
m_axis_tlast <= '1' when column_of_next_output = pixel_width else '0';
m_axis_tuser <= "1" when answer_output_count = 0 and answer_valid = '1' else "0";


m_axis_tdata(23 downto 16) <= clipped_answer_red;
m_axis_tdata(15 downto 8) <= clipped_answer_green;
m_axis_tdata(7 downto 0) <= clipped_answer_blue;




end Behavioral;
