-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "06/08/2023 18:54:31"
                                                            
-- Vhdl Test Bench template for design  :  ultrasound_controller
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ultrasound_controller_vhd_tst IS
END ultrasound_controller_vhd_tst;
ARCHITECTURE ultrasound_controller_arch OF ultrasound_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50 : STD_LOGIC;
SIGNAL distance : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL finished : STD_LOGIC;
SIGNAL trigger : STD_LOGIC;
COMPONENT ultrasound_controller
	PORT (
	clk_50 : IN STD_LOGIC;
	distance : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	enable : IN STD_LOGIC;
	finished : OUT STD_LOGIC;
	trigger : INOUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ultrasound_controller
	PORT MAP (
-- list connections between master ports and signals
	clk_50 => clk_50,
	distance => distance,
	enable => enable,
	finished => finished,
	trigger => trigger
	);
init : -- Clock generation process
process
begin
    clk_50 <= '1';
    wait for 10 ns;
    clk_50 <= '0';
    wait for 10 ns;
end process;

-- Simulation process
process
begin
    enable <= '0';
    trigger <= 'Z';
    wait for 1 ms;
    
    -- Start the measurement
    enable <= '1';
    
    -- Wait for the trigger signal to be over
    while trigger /= '1' loop
        wait for 1 us;
    end loop;
    
    while trigger = '1' loop
        wait for 1 us;
    end loop;
    
    -- Stop measuring after the first sample
    enable <= '0';
    
    -- Send response after a short delay
    wait for 10 us;
    trigger <= '1';
    wait for 5 ms;
    trigger <= '0';
    wait for 10 us;
    trigger <= 'Z';
    
    wait;
end process;                                          
END ultrasound_controller_arch;
