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
-- Generated on "05/22/2023 19:15:25"
                                                            
-- Vhdl Test Bench template for design  :  ex4_buttonsToLEDs
-- 
-- Simulation tool : ModelSim (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ex4_buttonsToLEDs_vhd_tst IS
END ex4_buttonsToLEDs_vhd_tst;
ARCHITECTURE ex4_buttonsToLEDs_arch OF ex4_buttonsToLEDs_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_CS : STD_LOGIC;
SIGNAL ADC_DIN : STD_LOGIC;
SIGNAL ADC_DOUT : STD_LOGIC;
SIGNAL ADC_SCLK : STD_LOGIC;
SIGNAL clk_50 : STD_LOGIC;
SIGNAL LCD_Data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LCD_E : STD_LOGIC;
SIGNAL LCD_RS : STD_LOGIC;
SIGNAL LCD_RW : STD_LOGIC;
SIGNAL Led : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT ex4_buttonsToLEDs
	PORT (
	ADC_CS : OUT STD_LOGIC;
	ADC_DIN : OUT STD_LOGIC;
	ADC_DOUT : IN STD_LOGIC;
	ADC_SCLK : OUT STD_LOGIC;
	clk_50 : IN STD_LOGIC;
	LCD_Data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LCD_E : OUT STD_LOGIC;
	LCD_RS : OUT STD_LOGIC;
	LCD_RW : OUT STD_LOGIC;
	Led : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ex4_buttonsToLEDs
	PORT MAP (
-- list connections between master ports and signals
	ADC_CS => ADC_CS,
	ADC_DIN => ADC_DIN,
	ADC_DOUT => ADC_DOUT,
	ADC_SCLK => ADC_SCLK,
	clk_50 => clk_50,
	LCD_Data => LCD_Data,
	LCD_E => LCD_E,
	LCD_RS => LCD_RS,
	LCD_RW => LCD_RW,
	Led => Led
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END ex4_buttonsToLEDs_arch;
