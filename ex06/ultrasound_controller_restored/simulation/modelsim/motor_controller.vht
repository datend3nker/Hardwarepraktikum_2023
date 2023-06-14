-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/19/2015 20:58:43"
                                                            
-- Vhdl Test Bench template for design  :  motor_controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY motor_controller_vhd_tst IS
END motor_controller_vhd_tst;
ARCHITECTURE motor_controller_arch OF motor_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL direction : STD_LOGIC;
SIGNAL motor_signal1 : STD_LOGIC;
SIGNAL motor_signal2 : STD_LOGIC;
SIGNAL speed : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT motor_controller
	PORT (
	clk_50 : IN STD_LOGIC;
	direction : IN STD_LOGIC;
	motor_signal1 : OUT STD_LOGIC;
	motor_signal2 : OUT STD_LOGIC;
	speed : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : motor_controller
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	direction => direction,
	motor_signal1 => motor_signal1,
	motor_signal2 => motor_signal2,
	speed => speed
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                 
	speed <= "0000000000";	
	wait for 100 us;
	direction <= '1';
	wait for 100 us;
	
	speed <= "0100000000";
	direction <= '0';
	wait for 100 us;
	direction <= '1';
	wait for 100 us;
	
	speed <= "1000000000";
	direction <= '0';
	wait for 100 us;
	direction <= '1';
	wait for 100 us;
	
	speed <= "1100000000";
	direction <= '0';
	wait for 100 us;
	direction <= '1';
	wait for 100 us;
	
	speed <= "1111111111";
	direction <= '0';
	wait for 100 us;
	direction <= '1';
	wait for 100 us;
WAIT;                                                       
END PROCESS init;          
                                 
always : PROCESS                 
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;

process
begin
	clk_50 <= '1'; wait for 10 ns;
	clk_50 <= '0'; wait for 10 ns;
end process;
                                         
END motor_controller_arch;
