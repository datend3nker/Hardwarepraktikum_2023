library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ultrasound_controller is
    port (
        clk_50    : in  std_logic;
        enable    : in  std_logic;
        trigger   : inout std_logic;
        finished  : out std_logic;
        distance  : out std_logic_vector(7 downto 0)
    );
end ultrasound_controller;

architecture behavior of ultrasound_controller is
    -- FSM states
    type state_type is (initial_state, trigger_pulse, wait_for_response, measure_distance, timeout);
    signal current_state : state_type;
    
    -- Internal signals and constants
    signal trigger_counter : integer range 0 to 99_999;  -- 50 MHz clock, 10 µs per count
    signal response_counter : integer range 0 to 99_999; -- 50 MHz clock, 10 µs per count
    signal timeout_counter : integer range 0 to 1_499_999; -- 50 MHz clock, 30 ms timeout
    signal measured_distance : integer range 0 to 255;   -- Distance in cm (maximum = 255)
    
begin

    process (clk_50)
    begin
        if rising_edge(clk_50) then
            if enable = '1' then
                case current_state is
                    when initial_state =>
                        -- Initial state: Wait for enable signal
                        if enable = '1' then
                            current_state <= trigger_pulse;
                            trigger_counter <= 0;
                            response_counter <= 0;
                            timeout_counter <= 0;
                            distance <= "00000000";
                            finished <= '0';
                            trigger <= '0'; -- Set trigger to LOW
                        end if;

                    when trigger_pulse =>
                        -- Generate trigger pulse
                        if trigger_counter < 10 then
                            trigger_counter <= trigger_counter + 1;
                            trigger <= '0'; -- Set trigger to LOW
                        elsif trigger_counter = 10 then
                            trigger_counter <= trigger_counter + 1;
                            trigger <= '1'; -- Set trigger to HIGH
                        else
                            current_state <= wait_for_response;
                        end if;

                    when wait_for_response =>
                        -- Wait for sensor response
                        if trigger = 'Z' then  -- Check if the sensor controls the trigger signal
                            response_counter <= response_counter + 1;
                            if response_counter = 5_000 then
                                current_state <= measure_distance;
                            end if;
                        else
                            current_state <= timeout;
                        end if;

                    when measure_distance =>
                        -- Measure distance
                        measured_distance <= response_counter / 58;
                        distance <= std_logic_vector(to_unsigned(measured_distance, 8));
                        current_state <= initial_state;

                    when timeout =>
                        -- Timeout
                        timeout_counter <= timeout_counter + 1;
                        if timeout_counter = 1_499_999 then
                            current_state <= initial_state;
                            finished <= '1';
                        end if;
                end case;
            else
                -- Reset FSM when enable signal is '0'
                current_state <= initial_state;
                finished <= '1';
            end if;
        end if;
    end process;
    
end behavior;