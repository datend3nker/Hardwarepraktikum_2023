-- controller: controles 3 ultrasound sensors
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity motor_controller is port
(
	clk_50: in std_logic;
	speed: in std_logic_vector(9 downto 0);
	direction: in std_logic;
	
	motor_signal1: out std_logic;
	motor_signal2: out std_logic
);
end motor_controller;

architecture behaviour of motor_controller is
	signal counter: natural := 0;
begin
	process(clk_50)
	begin
		if rising_edge(clk_50)
		then
			if counter >= 1022
			then
				counter <= 0;
			else
				counter <= counter + 1;
			end if;
		end if;
 	end process;
	
	motor_signal1 <= '1' when direction = '1' and unsigned(speed) > counter else '0';	
	motor_signal2 <= '1' when direction = '0' and unsigned(speed) > counter else '0';
end behaviour;