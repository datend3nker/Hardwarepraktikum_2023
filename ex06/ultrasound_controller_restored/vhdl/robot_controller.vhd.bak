library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity robot_controller is port
(
	distance_us1: in std_logic_vector(7 downto 0);
	distance_us2: in std_logic_vector(7 downto 0);
	distance_us3: in std_logic_vector(7 downto 0);
	
	motor_A_speed: out std_logic_vector(9 downto 0);
	motor_A_direction: out std_logic;
	motor_B_speed: out std_logic_vector(9 downto 0);
	motor_B_direction: out std_logic
);
end robot_controller;

architecture behaviour of robot_controller is
begin
	motor_A_direction <= '1';
	motor_B_direction <= '1';
	
	motor_A_speed <= (others => '0') when
		unsigned(distance_us1) < 50 or
		unsigned(distance_us1) < 50 or
		unsigned(distance_us1) < 50 else (3 => '1', others => '0');

	motor_B_speed <= (others => '0') when
		unsigned(distance_us1) < 50 or
		unsigned(distance_us1) < 50 or
		unsigned(distance_us1) < 50 else (3 => '1', others => '0');
		
	-- sobald ein us meldet, dass in der Naehe ein hindernis ist, stoppt der roboter
end behaviour;
