library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ultrasound_controller is
    port (
        clk_50   : in  std_logic;
        enable   : in  std_logic;
        trigger  : inout std_logic;
        finished : out std_logic;
        distance : out std_logic_vector(7 downto 0)
    );
end ultrasound_controller;

architecture behavior of ultrasound_controller is
    -- Declare the states of the FSM
    type state_type is (INITIAL, TRIGGER_PULSE, WAIT_FOR_RESPONSE, MEASURE_DISTANCE, TIMEOUT);
    signal current_state, next_state : state_type;
    
    -- Declare the signal to measure the response pulse length
    signal response_pulse_length : unsigned(15 downto 0);
    
    -- Declare constants for time values
    constant TRIGGER_PULSE_LENGTH : time := 10 us;
    constant RESPONSE_TIMEOUT : time := 30 ms;
    
    -- Declare internal signals for time measurement
    signal start_time, end_time : time;
    
    begin
    
    -- Register process for state transition
    process(clk_50)
    begin
        if rising_edge(clk_50) then
            if enable = '1' then
                current_state <= next_state;
            end if;
        end if;
    end process;
    
    -- Combinational process for next state and output logic
    process(current_state, enable, response_pulse_length)
    begin
        next_state <= current_state;
        finished <= '0';
        distance <= (others => '0');
        
        case current_state is
            when INITIAL =>
                if enable = '1' then
                    next_state <= TRIGGER_PULSE;
                    trigger <= '0';
                    finished <= '0';
                end if;
                
            when TRIGGER_PULSE =>
                trigger <= '0';
                start_time <= now;
                next_state <= WAIT_FOR_RESPONSE;
                
            when WAIT_FOR_RESPONSE =>
                trigger <= 'Z';
                end_time <= now;
                
                if enable = '0' then
                    next_state <= INITIAL;
                    finished <= '1';
                elsif (end_time - start_time) >= RESPONSE_TIMEOUT then
                    next_state <= TIMEOUT;
                elsif trigger = '1' then
                    next_state <= MEASURE_DISTANCE;
                end if;
                
            when MEASURE_DISTANCE =>
                response_pulse_length <= response_pulse_length + 1;
                
                if enable = '0' then
                    next_state <= INITIAL;
                    finished <= '1';
                    distance <= std_logic_vector(response_pulse_length(10 downto 3) / 58);
                end if;
                
            when TIMEOUT =>
                next_state <= INITIAL;
                finished <= '1';
        end case;
    end process;
    
end behavior;
