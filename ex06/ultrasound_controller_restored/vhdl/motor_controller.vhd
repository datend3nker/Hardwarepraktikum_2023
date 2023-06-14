-- controller: controles 3 ultrasound sensors
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motor_controller is
    port (
        clk_50          : in std_logic;
        speed           : in std_logic_vector(9 downto 0);
        direction       : in std_logic;
        motor_signal1   : out std_logic;
        motor_signal2   : out std_logic
    );
end motor_controller;

architecture behavior of motor_controller is

    signal direction_signal : std_logic := '0';

begin
    process(clk_50)
    begin
        if rising_edge(clk_50) then
            -- Steuerung der Drehrichtung basierend auf dem direction-Eingang
            if direction = '1' then
                direction_signal <= '1';
            else
                direction_signal <= '0';
            end if;
        end if;
    end process;

    -- Motorsteuerung basierend auf der Drehrichtung
    motor_signal1 <= direction_signal;
    motor_signal2 <= not direction_signal;

end behavior;
