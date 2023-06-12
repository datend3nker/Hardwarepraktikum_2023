library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ultrasound_controller is
    port (
        clk_50    : in std_logic;
        enable    : in std_logic;
        trigger   : inout std_logic := 'Z';
        finished  : out std_logic;
        distance  : out std_logic_vector(7 downto 0) := (others => '0')
    );
end ultrasound_controller;

architecture behavior of ultrasound_controller is
    -- State of the counter
    type state is (
        STATE_INIT,
        STATE_SEND_START,
        STATE_SEND_HIGH,
        STATE_SEND_FIN,
        STATE_WAIT,
        STATE_COUNT,
        STATE_FIN
    );
    
    signal ctrl_state        : state := STATE_INIT;
    signal counter          : std_logic_vector(20 downto 0);
    signal counter_high     : std_logic_vector(20 downto 0);
    signal distance_counter : std_logic_vector(7 downto 0) := (others => '0');
    signal last_enable      : std_logic := '0';
    
begin
    process(clk_50)
    begin
        if rising_edge(clk_50) then
            case ctrl_state is
                when STATE_INIT =>
                    -- Wait on enable
                    if enable = '1' and last_enable = '0' then
                        ctrl_state <= STATE_SEND_START;
                        trigger    <= '0';
                        counter    <= (others => '0');
                    else
                        last_enable <= enable;
                    end if;
                
                when STATE_SEND_START =>
                    -- Create low signal
                    if(unsigned(counter) > 500) then
                        counter    <= (others => '0');
                        trigger    <= '1';
                        ctrl_state <= STATE_SEND_HIGH;
                    else
                        counter    <= std_logic_vector(unsigned(counter) + 1);
                    end if;
                    
                when STATE_SEND_HIGH =>
                    -- Create high signal
                    if(unsigned(counter) > 500) then
                        counter    <= (others => '0');
                        trigger    <= '0';
                        ctrl_state <= STATE_SEND_FIN;
                    else
                        counter    <= std_logic_vector(unsigned(counter) + 1);
                    end if;
                    
                when STATE_SEND_FIN =>
                    -- Create low signal
                    if(unsigned(counter) > 500) then
                        trigger    <= 'Z';
                        ctrl_state <= STATE_WAIT;
                        counter    <= (others => '0');
                    else                    
                        counter    <= std_logic_vector(unsigned(counter) + 1);
                    end if;
                    
                when STATE_WAIT =>
                    -- Wait for 1
                    if trigger = '1' then
                        ctrl_state <= STATE_COUNT;
                        distance_counter <= (others => '0');
                        counter_high <= (others => '0');
                    else
                        if(unsigned(counter) > 1500000) then -- Abort
                            ctrl_state   <= STATE_INIT;
                            last_enable <= enable;
                        else
                            counter      <= std_logic_vector(unsigned(counter) + 1);
                        end if;
                    end if;
                    
                when STATE_COUNT =>
                    -- Count until trigger is 0 or reached 30 ms
                    if(trigger = '1') then
                        if(unsigned(counter) > 1500000) then -- Abort due to timeout
                            ctrl_state   <= STATE_INIT;
                            last_enable <= enable;
                        else
                            counter      <= std_logic_vector(unsigned(counter) + 1);
                        end if;
                        
                        if unsigned(counter_high) > 50*58 then
                            counter_high <= (others => '0');
                            distance_counter <= std_logic_vector(unsigned(distance_counter) + 1);
                        else
                            counter_high <= std_logic_vector(unsigned(counter_high) + 1);
                        end if;
                    else -- 0 reached
                        ctrl_state <= STATE_FIN;
                        distance   <= distance_counter;
                    end if;
                    
                when STATE_FIN =>
                    if trigger = 'Z' then
                        ctrl_state   <= STATE_INIT;
                        last_enable <= enable;
                    end if;
            end case;
        end if;
    end process;
    
    finished <= '1' when ctrl_state = STATE_INIT else '0';    
end behavior;
