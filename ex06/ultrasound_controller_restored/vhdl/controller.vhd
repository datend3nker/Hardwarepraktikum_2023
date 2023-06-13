library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    port (
        clk_50      : in std_logic;
        finished_1  : in std_logic;
        finished_2  : in std_logic;
        finished_3  : in std_logic;
        enable_1    : out std_logic;
        enable_2    : out std_logic;
        enable_3    : out std_logic
    );
end controller;

architecture behavior of controller is
    type state is (
        STATE_IDLE,
        STATE_SENSOR_1,
        STATE_SENSOR_2,
        STATE_SENSOR_3
    );

    signal ctrl_state    : state := STATE_IDLE;
    signal counter       : unsigned(19 downto 0) := (others => '0');
    signal enable_next   : std_logic := '0';

begin
    -- Counter to ensure a delay between sensor measurements
    process(clk_50)
    begin
        if rising_edge(clk_50) then
            if counter = 1000000-1 then
                counter <= (others => '0');
            else 
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- State machine to control sensor measurements
    process(ctrl_state, finished_1, finished_2, finished_3)
    begin
        case ctrl_state is
            when STATE_IDLE =>
                -- Idle state, wait for trigger
                enable_1 <= '0';
                enable_2 <= '0';
                enable_3 <= '0';
                
                if enable_next = '1' then
                    ctrl_state <= STATE_SENSOR_1;
                end if;
                
            when STATE_SENSOR_1 =>
                -- Sensor 1 measurement
                enable_1 <= '1';
                
                if finished_1 = '1' then
                    ctrl_state <= STATE_SENSOR_2;
                    enable_1 <= '0';
                    enable_next <= '1';
                end if;
                
            when STATE_SENSOR_2 =>
                -- Sensor 2 measurement
                enable_2 <= '1';
                
                if finished_2 = '1' then
                    ctrl_state <= STATE_SENSOR_3;
                    enable_2 <= '0';
                    enable_next <= '1';
                end if;
                
            when STATE_SENSOR_3 =>
                -- Sensor 3 measurement
                enable_3 <= '1';
                
                if finished_3 = '1' then
                    ctrl_state <= STATE_IDLE;
                    enable_3 <= '0';
                    enable_next <= '0';
                end if;
                
        end case;
    end process;

end behavior;
