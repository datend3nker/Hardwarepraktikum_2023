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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "05/22/2023 20:04:50"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ex4_buttonsToLEDs IS
    PORT (
	ADC_DIN : OUT std_logic;
	clk_50 : IN std_logic;
	ADC_DOUT : IN std_logic;
	ADC_CS : OUT std_logic;
	ADC_SCLK : OUT std_logic;
	LCD_E : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_Data : OUT std_logic_vector(7 DOWNTO 0);
	Led : OUT std_logic_vector(5 DOWNTO 0)
	);
END ex4_buttonsToLEDs;

-- Design Ports Information
-- ADC_DIN	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_CS	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_SCLK	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_E	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_Data[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[5]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Led[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_DOUT	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ex4_buttonsToLEDs IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_DIN : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_ADC_DOUT : std_logic;
SIGNAL ww_ADC_CS : std_logic;
SIGNAL ww_ADC_SCLK : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|clk_spi~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_DIN~output_o\ : std_logic;
SIGNAL \ADC_CS~output_o\ : std_logic;
SIGNAL \ADC_SCLK~output_o\ : std_logic;
SIGNAL \LCD_E~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_Data[7]~output_o\ : std_logic;
SIGNAL \LCD_Data[6]~output_o\ : std_logic;
SIGNAL \LCD_Data[5]~output_o\ : std_logic;
SIGNAL \LCD_Data[4]~output_o\ : std_logic;
SIGNAL \LCD_Data[3]~output_o\ : std_logic;
SIGNAL \LCD_Data[2]~output_o\ : std_logic;
SIGNAL \LCD_Data[1]~output_o\ : std_logic;
SIGNAL \LCD_Data[0]~output_o\ : std_logic;
SIGNAL \Led[5]~output_o\ : std_logic;
SIGNAL \Led[4]~output_o\ : std_logic;
SIGNAL \Led[3]~output_o\ : std_logic;
SIGNAL \Led[2]~output_o\ : std_logic;
SIGNAL \Led[1]~output_o\ : std_logic;
SIGNAL \Led[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|clk_spi_count[0]~3_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[1]~0_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[2]~1_combout\ : std_logic;
SIGNAL \inst|clk_spi_count[3]~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|clk_spi~0_combout\ : std_logic;
SIGNAL \inst|clk_spi~feeder_combout\ : std_logic;
SIGNAL \inst|clk_spi~q\ : std_logic;
SIGNAL \inst|clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~3_combout\ : std_logic;
SIGNAL \inst|active2~feeder_combout\ : std_logic;
SIGNAL \inst|active2~q\ : std_logic;
SIGNAL \inst|count[1]~0_combout\ : std_logic;
SIGNAL \inst|count[2]~1_combout\ : std_logic;
SIGNAL \inst|count[3]~2_combout\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst|channel[0]~0_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|channel[1]~2_combout\ : std_logic;
SIGNAL \inst|channel[2]~1_combout\ : std_logic;
SIGNAL \inst|DIN~0_combout\ : std_logic;
SIGNAL \inst|DIN~1_combout\ : std_logic;
SIGNAL \inst|DIN~2_combout\ : std_logic;
SIGNAL \inst|DIN~q\ : std_logic;
SIGNAL \inst|SCLK~0_combout\ : std_logic;
SIGNAL \inst2|counter[0]~31_combout\ : std_logic;
SIGNAL \inst2|counter[5]~42\ : std_logic;
SIGNAL \inst2|counter[6]~43_combout\ : std_logic;
SIGNAL \inst2|counter[6]~44\ : std_logic;
SIGNAL \inst2|counter[7]~45_combout\ : std_logic;
SIGNAL \inst2|counter[7]~46\ : std_logic;
SIGNAL \inst2|counter[8]~47_combout\ : std_logic;
SIGNAL \inst2|counter[8]~48\ : std_logic;
SIGNAL \inst2|counter[9]~49_combout\ : std_logic;
SIGNAL \inst2|counter[9]~50\ : std_logic;
SIGNAL \inst2|counter[10]~51_combout\ : std_logic;
SIGNAL \inst2|counter[10]~52\ : std_logic;
SIGNAL \inst2|counter[11]~53_combout\ : std_logic;
SIGNAL \inst2|counter[11]~54\ : std_logic;
SIGNAL \inst2|counter[12]~55_combout\ : std_logic;
SIGNAL \inst2|process_0~18_combout\ : std_logic;
SIGNAL \inst2|process_0~26_combout\ : std_logic;
SIGNAL \inst2|counter[12]~56\ : std_logic;
SIGNAL \inst2|counter[13]~57_combout\ : std_logic;
SIGNAL \inst2|counter[13]~58\ : std_logic;
SIGNAL \inst2|counter[14]~59_combout\ : std_logic;
SIGNAL \inst2|counter[14]~60\ : std_logic;
SIGNAL \inst2|counter[15]~61_combout\ : std_logic;
SIGNAL \inst2|counter[15]~62\ : std_logic;
SIGNAL \inst2|counter[16]~63_combout\ : std_logic;
SIGNAL \inst2|counter[16]~64\ : std_logic;
SIGNAL \inst2|counter[17]~65_combout\ : std_logic;
SIGNAL \inst2|process_0~15_combout\ : std_logic;
SIGNAL \inst2|counter[17]~66\ : std_logic;
SIGNAL \inst2|counter[18]~67_combout\ : std_logic;
SIGNAL \inst2|counter[18]~68\ : std_logic;
SIGNAL \inst2|counter[19]~69_combout\ : std_logic;
SIGNAL \inst2|counter[19]~70\ : std_logic;
SIGNAL \inst2|counter[20]~71_combout\ : std_logic;
SIGNAL \inst2|counter[20]~72\ : std_logic;
SIGNAL \inst2|counter[21]~73_combout\ : std_logic;
SIGNAL \inst2|counter[21]~74\ : std_logic;
SIGNAL \inst2|counter[22]~75_combout\ : std_logic;
SIGNAL \inst2|state.init0~feeder_combout\ : std_logic;
SIGNAL \inst2|state.init0~q\ : std_logic;
SIGNAL \inst2|process_0~16_combout\ : std_logic;
SIGNAL \inst2|process_0~17_combout\ : std_logic;
SIGNAL \inst2|Equal5~2_combout\ : std_logic;
SIGNAL \inst2|counter[22]~76\ : std_logic;
SIGNAL \inst2|counter[23]~77_combout\ : std_logic;
SIGNAL \inst2|counter[23]~78\ : std_logic;
SIGNAL \inst2|counter[24]~79_combout\ : std_logic;
SIGNAL \inst2|counter[24]~80\ : std_logic;
SIGNAL \inst2|counter[25]~81_combout\ : std_logic;
SIGNAL \inst2|counter[25]~82\ : std_logic;
SIGNAL \inst2|counter[26]~83_combout\ : std_logic;
SIGNAL \inst2|counter[26]~84\ : std_logic;
SIGNAL \inst2|counter[27]~85_combout\ : std_logic;
SIGNAL \inst2|e~2_combout\ : std_logic;
SIGNAL \inst2|e~1_combout\ : std_logic;
SIGNAL \inst2|counter[27]~86\ : std_logic;
SIGNAL \inst2|counter[28]~87_combout\ : std_logic;
SIGNAL \inst2|counter[28]~88\ : std_logic;
SIGNAL \inst2|counter[29]~89_combout\ : std_logic;
SIGNAL \inst2|counter[29]~90\ : std_logic;
SIGNAL \inst2|counter[30]~91_combout\ : std_logic;
SIGNAL \inst2|e~3_combout\ : std_logic;
SIGNAL \inst2|Equal5~3_combout\ : std_logic;
SIGNAL \inst2|process_0~19_combout\ : std_logic;
SIGNAL \inst1|counter[0]~31_combout\ : std_logic;
SIGNAL \inst1|counter[1]~34\ : std_logic;
SIGNAL \inst1|counter[2]~35_combout\ : std_logic;
SIGNAL \inst1|counter[2]~36\ : std_logic;
SIGNAL \inst1|counter[3]~37_combout\ : std_logic;
SIGNAL \inst1|counter[3]~38\ : std_logic;
SIGNAL \inst1|counter[4]~39_combout\ : std_logic;
SIGNAL \inst1|counter[4]~40\ : std_logic;
SIGNAL \inst1|counter[5]~44_combout\ : std_logic;
SIGNAL \inst1|counter[5]~45\ : std_logic;
SIGNAL \inst1|counter[6]~46_combout\ : std_logic;
SIGNAL \inst1|counter[6]~47\ : std_logic;
SIGNAL \inst1|counter[7]~48_combout\ : std_logic;
SIGNAL \inst1|counter[7]~49\ : std_logic;
SIGNAL \inst1|counter[8]~50_combout\ : std_logic;
SIGNAL \inst1|counter[8]~51\ : std_logic;
SIGNAL \inst1|counter[9]~52_combout\ : std_logic;
SIGNAL \inst1|counter[9]~53\ : std_logic;
SIGNAL \inst1|counter[10]~54_combout\ : std_logic;
SIGNAL \inst1|counter[10]~55\ : std_logic;
SIGNAL \inst1|counter[11]~56_combout\ : std_logic;
SIGNAL \inst1|counter[11]~57\ : std_logic;
SIGNAL \inst1|counter[12]~58_combout\ : std_logic;
SIGNAL \inst1|counter[12]~59\ : std_logic;
SIGNAL \inst1|counter[13]~60_combout\ : std_logic;
SIGNAL \inst1|counter[13]~61\ : std_logic;
SIGNAL \inst1|counter[14]~62_combout\ : std_logic;
SIGNAL \inst1|counter[14]~63\ : std_logic;
SIGNAL \inst1|counter[15]~64_combout\ : std_logic;
SIGNAL \inst1|counter[15]~65\ : std_logic;
SIGNAL \inst1|counter[16]~66_combout\ : std_logic;
SIGNAL \inst1|counter[16]~67\ : std_logic;
SIGNAL \inst1|counter[17]~68_combout\ : std_logic;
SIGNAL \inst1|counter[17]~69\ : std_logic;
SIGNAL \inst1|counter[18]~70_combout\ : std_logic;
SIGNAL \inst1|counter[18]~71\ : std_logic;
SIGNAL \inst1|counter[19]~72_combout\ : std_logic;
SIGNAL \inst1|counter[19]~73\ : std_logic;
SIGNAL \inst1|counter[20]~74_combout\ : std_logic;
SIGNAL \inst1|counter[20]~75\ : std_logic;
SIGNAL \inst1|counter[21]~76_combout\ : std_logic;
SIGNAL \inst1|counter[21]~77\ : std_logic;
SIGNAL \inst1|counter[22]~78_combout\ : std_logic;
SIGNAL \inst1|process_0~9_combout\ : std_logic;
SIGNAL \inst1|process_0~10_combout\ : std_logic;
SIGNAL \inst1|process_0~8_combout\ : std_logic;
SIGNAL \inst1|lineCount[1]~3_combout\ : std_logic;
SIGNAL \inst1|lineCount~0_combout\ : std_logic;
SIGNAL \inst1|charCount[0]~5_combout\ : std_logic;
SIGNAL \inst1|charCount[0]~13_combout\ : std_logic;
SIGNAL \inst1|charCount[0]~6\ : std_logic;
SIGNAL \inst1|charCount[1]~7_combout\ : std_logic;
SIGNAL \inst1|charCount[1]~8\ : std_logic;
SIGNAL \inst1|charCount[2]~9_combout\ : std_logic;
SIGNAL \inst1|charCount[2]~10\ : std_logic;
SIGNAL \inst1|charCount[3]~11_combout\ : std_logic;
SIGNAL \inst1|charCount[3]~12\ : std_logic;
SIGNAL \inst1|charCount[4]~14_combout\ : std_logic;
SIGNAL \inst1|lcd_data~65_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|lineCount~1_combout\ : std_logic;
SIGNAL \inst1|lineCount[0]~2_combout\ : std_logic;
SIGNAL \inst1|state~11_combout\ : std_logic;
SIGNAL \inst1|state~10_combout\ : std_logic;
SIGNAL \inst1|state.update~q\ : std_logic;
SIGNAL \inst1|state.pause~0_combout\ : std_logic;
SIGNAL \inst1|state.pause~q\ : std_logic;
SIGNAL \inst1|process_0~7_combout\ : std_logic;
SIGNAL \inst1|counter[22]~79\ : std_logic;
SIGNAL \inst1|counter[23]~80_combout\ : std_logic;
SIGNAL \inst1|counter[23]~81\ : std_logic;
SIGNAL \inst1|counter[24]~82_combout\ : std_logic;
SIGNAL \inst1|counter[24]~83\ : std_logic;
SIGNAL \inst1|counter[25]~84_combout\ : std_logic;
SIGNAL \inst1|counter[25]~85\ : std_logic;
SIGNAL \inst1|counter[26]~86_combout\ : std_logic;
SIGNAL \inst1|counter[26]~87\ : std_logic;
SIGNAL \inst1|counter[27]~88_combout\ : std_logic;
SIGNAL \inst1|counter[27]~89\ : std_logic;
SIGNAL \inst1|counter[28]~90_combout\ : std_logic;
SIGNAL \inst1|counter[28]~91\ : std_logic;
SIGNAL \inst1|counter[29]~92_combout\ : std_logic;
SIGNAL \inst1|counter[29]~93\ : std_logic;
SIGNAL \inst1|counter[30]~94_combout\ : std_logic;
SIGNAL \inst1|process_0~3_combout\ : std_logic;
SIGNAL \inst1|process_0~2_combout\ : std_logic;
SIGNAL \inst1|process_0~4_combout\ : std_logic;
SIGNAL \inst1|process_0~1_combout\ : std_logic;
SIGNAL \inst1|process_0~5_combout\ : std_logic;
SIGNAL \inst1|process_0~6_combout\ : std_logic;
SIGNAL \inst1|process_0~11_combout\ : std_logic;
SIGNAL \inst1|state~9_combout\ : std_logic;
SIGNAL \inst1|counter[21]~41_combout\ : std_logic;
SIGNAL \inst1|process_1~1_combout\ : std_logic;
SIGNAL \inst1|process_1~0_combout\ : std_logic;
SIGNAL \inst1|process_1~2_combout\ : std_logic;
SIGNAL \inst1|counter[21]~42_combout\ : std_logic;
SIGNAL \inst1|counter[21]~43_combout\ : std_logic;
SIGNAL \inst1|counter[0]~32\ : std_logic;
SIGNAL \inst1|counter[1]~33_combout\ : std_logic;
SIGNAL \inst1|process_1~3_combout\ : std_logic;
SIGNAL \inst1|process_1~4_combout\ : std_logic;
SIGNAL \inst1|lcd_write_n~q\ : std_logic;
SIGNAL \inst2|process_0~22_combout\ : std_logic;
SIGNAL \inst2|state.sendingAddress~q\ : std_logic;
SIGNAL \inst2|state~25_combout\ : std_logic;
SIGNAL \inst2|state.init3~q\ : std_logic;
SIGNAL \inst2|Equal6~4_combout\ : std_logic;
SIGNAL \inst2|Equal6~3_combout\ : std_logic;
SIGNAL \inst2|Equal6~2_combout\ : std_logic;
SIGNAL \inst2|Equal6~5_combout\ : std_logic;
SIGNAL \inst2|Equal6~7_combout\ : std_logic;
SIGNAL \inst2|Equal6~8_combout\ : std_logic;
SIGNAL \inst2|state~26_combout\ : std_logic;
SIGNAL \inst2|state~27_combout\ : std_logic;
SIGNAL \inst2|state.init4~q\ : std_logic;
SIGNAL \inst2|state~31_combout\ : std_logic;
SIGNAL \inst2|state.init5~q\ : std_logic;
SIGNAL \inst2|state~30_combout\ : std_logic;
SIGNAL \inst2|state.init6~q\ : std_logic;
SIGNAL \inst2|Equal5~6_combout\ : std_logic;
SIGNAL \inst2|Equal5~0_combout\ : std_logic;
SIGNAL \inst2|Equal5~1_combout\ : std_logic;
SIGNAL \inst2|Equal5~4_combout\ : std_logic;
SIGNAL \inst2|Equal5~5_combout\ : std_logic;
SIGNAL \inst2|Equal5~7_combout\ : std_logic;
SIGNAL \inst2|process_0~25_combout\ : std_logic;
SIGNAL \inst2|state~32_combout\ : std_logic;
SIGNAL \inst2|state.init7~q\ : std_logic;
SIGNAL \inst2|process_0~23_combout\ : std_logic;
SIGNAL \inst2|state~24_combout\ : std_logic;
SIGNAL \inst2|state.sendingData~q\ : std_logic;
SIGNAL \inst2|state~17_combout\ : std_logic;
SIGNAL \inst2|state~22_combout\ : std_logic;
SIGNAL \inst2|state~28_combout\ : std_logic;
SIGNAL \inst2|state.init1~q\ : std_logic;
SIGNAL \inst2|process_0~24_combout\ : std_logic;
SIGNAL \inst2|state~29_combout\ : std_logic;
SIGNAL \inst2|state.init2~q\ : std_logic;
SIGNAL \inst2|process_0~20_combout\ : std_logic;
SIGNAL \inst2|Equal6~6_combout\ : std_logic;
SIGNAL \inst2|process_0~21_combout\ : std_logic;
SIGNAL \inst2|state~19_combout\ : std_logic;
SIGNAL \inst2|state~20_combout\ : std_logic;
SIGNAL \inst2|state~18_combout\ : std_logic;
SIGNAL \inst2|state~21_combout\ : std_logic;
SIGNAL \inst2|state~34_combout\ : std_logic;
SIGNAL \inst2|state~23_combout\ : std_logic;
SIGNAL \inst2|state.ready~q\ : std_logic;
SIGNAL \inst2|state~33_combout\ : std_logic;
SIGNAL \inst2|counter[0]~32\ : std_logic;
SIGNAL \inst2|counter[1]~33_combout\ : std_logic;
SIGNAL \inst2|counter[1]~34\ : std_logic;
SIGNAL \inst2|counter[2]~35_combout\ : std_logic;
SIGNAL \inst2|counter[2]~36\ : std_logic;
SIGNAL \inst2|counter[3]~37_combout\ : std_logic;
SIGNAL \inst2|counter[3]~38\ : std_logic;
SIGNAL \inst2|counter[4]~39_combout\ : std_logic;
SIGNAL \inst2|counter[4]~40\ : std_logic;
SIGNAL \inst2|counter[5]~41_combout\ : std_logic;
SIGNAL \inst2|e~0_combout\ : std_logic;
SIGNAL \inst2|e~4_combout\ : std_logic;
SIGNAL \inst2|e~5_combout\ : std_logic;
SIGNAL \inst2|e~6_combout\ : std_logic;
SIGNAL \inst2|e~7_combout\ : std_logic;
SIGNAL \inst2|process_1~0_combout\ : std_logic;
SIGNAL \inst1|display_counter[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst1|display_counter[0]~32\ : std_logic;
SIGNAL \inst1|display_counter[1]~33_combout\ : std_logic;
SIGNAL \inst1|display_counter[1]~34\ : std_logic;
SIGNAL \inst1|display_counter[2]~35_combout\ : std_logic;
SIGNAL \inst1|display_counter[2]~36\ : std_logic;
SIGNAL \inst1|display_counter[3]~37_combout\ : std_logic;
SIGNAL \inst1|display_counter[3]~38\ : std_logic;
SIGNAL \inst1|display_counter[4]~39_combout\ : std_logic;
SIGNAL \inst1|display_counter[4]~40\ : std_logic;
SIGNAL \inst1|display_counter[5]~41_combout\ : std_logic;
SIGNAL \inst1|display_counter[5]~42\ : std_logic;
SIGNAL \inst1|display_counter[6]~43_combout\ : std_logic;
SIGNAL \inst1|display_counter[6]~44\ : std_logic;
SIGNAL \inst1|display_counter[7]~45_combout\ : std_logic;
SIGNAL \inst1|display_counter[7]~46\ : std_logic;
SIGNAL \inst1|display_counter[8]~47_combout\ : std_logic;
SIGNAL \inst1|display_counter[8]~48\ : std_logic;
SIGNAL \inst1|display_counter[9]~49_combout\ : std_logic;
SIGNAL \inst1|display_counter[9]~50\ : std_logic;
SIGNAL \inst1|display_counter[10]~51_combout\ : std_logic;
SIGNAL \inst1|display_counter[10]~52\ : std_logic;
SIGNAL \inst1|display_counter[11]~53_combout\ : std_logic;
SIGNAL \inst1|display_counter[11]~54\ : std_logic;
SIGNAL \inst1|display_counter[12]~55_combout\ : std_logic;
SIGNAL \inst1|display_counter[12]~56\ : std_logic;
SIGNAL \inst1|display_counter[13]~57_combout\ : std_logic;
SIGNAL \inst1|display_counter[13]~58\ : std_logic;
SIGNAL \inst1|display_counter[14]~59_combout\ : std_logic;
SIGNAL \inst1|display_counter[14]~60\ : std_logic;
SIGNAL \inst1|display_counter[15]~61_combout\ : std_logic;
SIGNAL \inst1|display_counter[15]~62\ : std_logic;
SIGNAL \inst1|display_counter[16]~63_combout\ : std_logic;
SIGNAL \inst1|display_counter[16]~64\ : std_logic;
SIGNAL \inst1|display_counter[17]~65_combout\ : std_logic;
SIGNAL \inst1|display_counter[17]~66\ : std_logic;
SIGNAL \inst1|display_counter[18]~67_combout\ : std_logic;
SIGNAL \inst1|display_counter[18]~68\ : std_logic;
SIGNAL \inst1|display_counter[19]~69_combout\ : std_logic;
SIGNAL \inst1|display_counter[19]~70\ : std_logic;
SIGNAL \inst1|display_counter[20]~71_combout\ : std_logic;
SIGNAL \inst1|display_counter[20]~72\ : std_logic;
SIGNAL \inst1|display_counter[21]~73_combout\ : std_logic;
SIGNAL \inst1|display_counter[21]~74\ : std_logic;
SIGNAL \inst1|display_counter[22]~75_combout\ : std_logic;
SIGNAL \inst1|display_counter[22]~76\ : std_logic;
SIGNAL \inst1|display_counter[23]~77_combout\ : std_logic;
SIGNAL \inst1|display_counter[23]~78\ : std_logic;
SIGNAL \inst1|display_counter[24]~79_combout\ : std_logic;
SIGNAL \inst1|display_counter[24]~80\ : std_logic;
SIGNAL \inst1|display_counter[25]~81_combout\ : std_logic;
SIGNAL \inst1|display_counter[25]~82\ : std_logic;
SIGNAL \inst1|display_counter[26]~83_combout\ : std_logic;
SIGNAL \inst1|display_counter[26]~84\ : std_logic;
SIGNAL \inst1|display_counter[27]~85_combout\ : std_logic;
SIGNAL \inst1|display_counter[27]~86\ : std_logic;
SIGNAL \inst1|display_counter[28]~87_combout\ : std_logic;
SIGNAL \inst1|display_counter[28]~88\ : std_logic;
SIGNAL \inst1|display_counter[29]~89_combout\ : std_logic;
SIGNAL \inst1|display_counter[29]~90\ : std_logic;
SIGNAL \inst1|display_counter[30]~91_combout\ : std_logic;
SIGNAL \inst1|LessThan1~5_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~4_combout\ : std_logic;
SIGNAL \inst1|LessThan1~6_combout\ : std_logic;
SIGNAL \inst1|LessThan1~7_combout\ : std_logic;
SIGNAL \inst1|display_state~feeder_combout\ : std_logic;
SIGNAL \inst1|display_state~q\ : std_logic;
SIGNAL \inst1|lcd_data~11_combout\ : std_logic;
SIGNAL \inst1|lcd_data~12_combout\ : std_logic;
SIGNAL \inst1|lcd_data~23_combout\ : std_logic;
SIGNAL \inst1|lcd_data~15_combout\ : std_logic;
SIGNAL \inst1|lcd_data~16_combout\ : std_logic;
SIGNAL \inst1|lcd_data~7_combout\ : std_logic;
SIGNAL \inst1|lcd_data~17_combout\ : std_logic;
SIGNAL \inst1|lcd_data~18_combout\ : std_logic;
SIGNAL \inst1|lcd_data~13_combout\ : std_logic;
SIGNAL \inst1|lcd_data~14_combout\ : std_logic;
SIGNAL \inst1|lcd_data~19_combout\ : std_logic;
SIGNAL \inst1|lcd_data~20_combout\ : std_logic;
SIGNAL \inst1|lcd_data~21_combout\ : std_logic;
SIGNAL \inst1|lcd_data~22_combout\ : std_logic;
SIGNAL \inst1|lcd_data~8_combout\ : std_logic;
SIGNAL \inst1|lcd_data~6_combout\ : std_logic;
SIGNAL \inst1|lcd_data~9_combout\ : std_logic;
SIGNAL \inst1|lcd_data~10_combout\ : std_logic;
SIGNAL \inst1|lcd_data~24_combout\ : std_logic;
SIGNAL \inst2|dataStorage[6]~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[6]~2_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~1_combout\ : std_logic;
SIGNAL \inst2|dataOut[6]~3_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~5_combout\ : std_logic;
SIGNAL \inst1|Equal15~0_combout\ : std_logic;
SIGNAL \inst1|lcd_data~25_combout\ : std_logic;
SIGNAL \inst1|lcd_data~118_combout\ : std_logic;
SIGNAL \inst1|lcd_data~26_combout\ : std_logic;
SIGNAL \inst1|lcd_data~30_combout\ : std_logic;
SIGNAL \inst1|lcd_data~31_combout\ : std_logic;
SIGNAL \inst1|lcd_data~27_combout\ : std_logic;
SIGNAL \inst1|lcd_data~28_combout\ : std_logic;
SIGNAL \inst1|lcd_data~29_combout\ : std_logic;
SIGNAL \inst1|lcd_data~32_combout\ : std_logic;
SIGNAL \inst1|lcd_data~33_combout\ : std_logic;
SIGNAL \inst2|dataStorage[5]~1_combout\ : std_logic;
SIGNAL \inst1|lcd_posX[4]~feeder_combout\ : std_logic;
SIGNAL \inst2|addressStorage~0_combout\ : std_logic;
SIGNAL \inst2|dataOut[5]~4_combout\ : std_logic;
SIGNAL \inst2|dataOut[5]~6_combout\ : std_logic;
SIGNAL \inst2|addressStorage~1_combout\ : std_logic;
SIGNAL \inst1|lcd_data~35_combout\ : std_logic;
SIGNAL \inst1|lcd_data~34_combout\ : std_logic;
SIGNAL \inst1|lcd_data~36_combout\ : std_logic;
SIGNAL \inst1|lcd_data~37_combout\ : std_logic;
SIGNAL \inst1|lcd_data~38_combout\ : std_logic;
SIGNAL \inst1|lcd_data~41_combout\ : std_logic;
SIGNAL \inst1|lcd_data~42_combout\ : std_logic;
SIGNAL \inst1|lcd_data~43_combout\ : std_logic;
SIGNAL \inst1|lcd_data~39_combout\ : std_logic;
SIGNAL \inst1|lcd_data~40_combout\ : std_logic;
SIGNAL \inst1|lcd_data~44_combout\ : std_logic;
SIGNAL \inst1|lcd_data~45_combout\ : std_logic;
SIGNAL \inst1|lcd_data~46_combout\ : std_logic;
SIGNAL \inst1|lcd_data~47_combout\ : std_logic;
SIGNAL \inst2|dataOut[4]~7_combout\ : std_logic;
SIGNAL \inst2|dataOut[4]~8_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~9_combout\ : std_logic;
SIGNAL \inst2|addressStorage~2_combout\ : std_logic;
SIGNAL \inst1|lcd_data~52_combout\ : std_logic;
SIGNAL \inst1|lcd_data~53_combout\ : std_logic;
SIGNAL \inst1|lcd_data~48_combout\ : std_logic;
SIGNAL \inst1|lcd_data~50_combout\ : std_logic;
SIGNAL \inst1|lcd_data~49_combout\ : std_logic;
SIGNAL \inst1|lcd_data~51_combout\ : std_logic;
SIGNAL \inst1|lcd_data~63_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s0_s~0_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s0_s~q\ : std_logic;
SIGNAL \inst1|converter1|number[10]~6_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~0_combout\ : std_logic;
SIGNAL \inst1|converter1|number[10]~9_combout\ : std_logic;
SIGNAL \inst1|converter1|number[10]~5_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~1\ : std_logic;
SIGNAL \inst1|converter1|Add3~3\ : std_logic;
SIGNAL \inst1|converter1|Add3~5\ : std_logic;
SIGNAL \inst1|converter1|Add3~7\ : std_logic;
SIGNAL \inst1|converter1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~5\ : std_logic;
SIGNAL \inst1|converter1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~1\ : std_logic;
SIGNAL \inst1|converter1|Add5~3\ : std_logic;
SIGNAL \inst1|converter1|Add5~5\ : std_logic;
SIGNAL \inst1|converter1|Add5~7\ : std_logic;
SIGNAL \inst1|converter1|Add5~9\ : std_logic;
SIGNAL \inst1|converter1|Add5~10_combout\ : std_logic;
SIGNAL \inst1|converter1|number~13_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~9\ : std_logic;
SIGNAL \inst1|converter1|Add0~11\ : std_logic;
SIGNAL \inst1|converter1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|converter1|number~14_combout\ : std_logic;
SIGNAL \inst1|converter1|number[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \ADC_DOUT~input_o\ : std_logic;
SIGNAL \inst|Equal4~3_combout\ : std_logic;
SIGNAL \inst|data~0_combout\ : std_logic;
SIGNAL \inst|Data0[6]~feeder_combout\ : std_logic;
SIGNAL \inst|Data0[11]~0_combout\ : std_logic;
SIGNAL \inst|Data0[11]~1_combout\ : std_logic;
SIGNAL \inst1|converter1|number[10]~10_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~7\ : std_logic;
SIGNAL \inst1|converter1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~13\ : std_logic;
SIGNAL \inst1|converter1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~11\ : std_logic;
SIGNAL \inst1|converter1|Add5~12_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~9\ : std_logic;
SIGNAL \inst1|converter1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|converter1|number~29_combout\ : std_logic;
SIGNAL \inst1|converter1|number~30_combout\ : std_logic;
SIGNAL \inst1|converter1|number[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~8_combout\ : std_logic;
SIGNAL \inst|data~5_combout\ : std_logic;
SIGNAL \inst|Data0[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~15\ : std_logic;
SIGNAL \inst1|converter1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~11\ : std_logic;
SIGNAL \inst1|converter1|Add3~12_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~9\ : std_logic;
SIGNAL \inst1|converter1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~13\ : std_logic;
SIGNAL \inst1|converter1|Add5~14_combout\ : std_logic;
SIGNAL \inst1|converter1|number~27_combout\ : std_logic;
SIGNAL \inst1|converter1|number~28_combout\ : std_logic;
SIGNAL \inst1|converter1|number[8]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~10_combout\ : std_logic;
SIGNAL \inst|data~9_combout\ : std_logic;
SIGNAL \inst|Data0[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~17\ : std_logic;
SIGNAL \inst1|converter1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~11\ : std_logic;
SIGNAL \inst1|converter1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~13\ : std_logic;
SIGNAL \inst1|converter1|Add3~14_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~15\ : std_logic;
SIGNAL \inst1|converter1|Add5~16_combout\ : std_logic;
SIGNAL \inst1|converter1|number~25_combout\ : std_logic;
SIGNAL \inst1|converter1|number~26_combout\ : std_logic;
SIGNAL \inst1|converter1|number[9]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~12_combout\ : std_logic;
SIGNAL \inst|data~11_combout\ : std_logic;
SIGNAL \inst|Data0[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~15\ : std_logic;
SIGNAL \inst1|converter1|Add3~16_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~19\ : std_logic;
SIGNAL \inst1|converter1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~13\ : std_logic;
SIGNAL \inst1|converter1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~17\ : std_logic;
SIGNAL \inst1|converter1|Add5~18_combout\ : std_logic;
SIGNAL \inst1|converter1|number~23_combout\ : std_logic;
SIGNAL \inst1|converter1|number~24_combout\ : std_logic;
SIGNAL \inst1|converter1|number[10]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~9_combout\ : std_logic;
SIGNAL \inst|data~8_combout\ : std_logic;
SIGNAL \inst|Data0[10]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~15\ : std_logic;
SIGNAL \inst1|converter1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~21\ : std_logic;
SIGNAL \inst1|converter1|Add0~22_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~19\ : std_logic;
SIGNAL \inst1|converter1|Add5~20_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~17\ : std_logic;
SIGNAL \inst1|converter1|Add3~18_combout\ : std_logic;
SIGNAL \inst1|converter1|number~21_combout\ : std_logic;
SIGNAL \inst1|converter1|number~22_combout\ : std_logic;
SIGNAL \inst1|converter1|number[11]~feeder_combout\ : std_logic;
SIGNAL \inst|data~7_combout\ : std_logic;
SIGNAL \inst|Data0[11]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~23\ : std_logic;
SIGNAL \inst1|converter1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|converter1|number~19_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~17\ : std_logic;
SIGNAL \inst1|converter1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~19\ : std_logic;
SIGNAL \inst1|converter1|Add3~20_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~21\ : std_logic;
SIGNAL \inst1|converter1|Add5~22_combout\ : std_logic;
SIGNAL \inst1|converter1|number~17_combout\ : std_logic;
SIGNAL \inst1|converter1|number~18_combout\ : std_logic;
SIGNAL \inst1|converter1|number~20_combout\ : std_logic;
SIGNAL \inst1|converter1|number[0]~feeder_combout\ : std_logic;
SIGNAL \inst|data~6_combout\ : std_logic;
SIGNAL \inst|Data0[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|converter1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|converter1|number~31_combout\ : std_logic;
SIGNAL \inst1|converter1|number~32_combout\ : std_logic;
SIGNAL \inst1|converter1|number[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~11_combout\ : std_logic;
SIGNAL \inst|data~10_combout\ : std_logic;
SIGNAL \inst|Data0[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|converter1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_3~0_combout\ : std_logic;
SIGNAL \inst1|converter1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|converter1|number~0_combout\ : std_logic;
SIGNAL \inst1|converter1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|converter1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|converter1|number~1_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~3\ : std_logic;
SIGNAL \inst1|converter1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|converter1|number~3_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~2_combout\ : std_logic;
SIGNAL \inst1|converter1|number~2_combout\ : std_logic;
SIGNAL \inst1|converter1|number~4_combout\ : std_logic;
SIGNAL \inst1|converter1|number[2]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~7_combout\ : std_logic;
SIGNAL \inst|data~4_combout\ : std_logic;
SIGNAL \inst|Data0[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~5\ : std_logic;
SIGNAL \inst1|converter1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~4_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|converter1|number~11_combout\ : std_logic;
SIGNAL \inst1|converter1|number~12_combout\ : std_logic;
SIGNAL \inst1|converter1|number[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~5_combout\ : std_logic;
SIGNAL \inst|data~2_combout\ : std_logic;
SIGNAL \inst|Data0[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~7\ : std_logic;
SIGNAL \inst1|converter1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~1\ : std_logic;
SIGNAL \inst1|converter1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~6_combout\ : std_logic;
SIGNAL \inst1|converter1|number~7_combout\ : std_logic;
SIGNAL \inst1|converter1|number~8_combout\ : std_logic;
SIGNAL \inst1|converter1|number[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~4_combout\ : std_logic;
SIGNAL \inst|data~1_combout\ : std_logic;
SIGNAL \inst|Data0[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|Add1~3\ : std_logic;
SIGNAL \inst1|converter1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|converter1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|converter1|Add5~8_combout\ : std_logic;
SIGNAL \inst1|converter1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|converter1|number~15_combout\ : std_logic;
SIGNAL \inst1|converter1|number~16_combout\ : std_logic;
SIGNAL \inst1|converter1|number[5]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal4~6_combout\ : std_logic;
SIGNAL \inst|data~3_combout\ : std_logic;
SIGNAL \inst|Data0[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_3~1_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_3~2_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_3~3_combout\ : std_logic;
SIGNAL \inst1|converter1|state~16_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s5~q\ : std_logic;
SIGNAL \inst1|converter1|state~17_combout\ : std_logic;
SIGNAL \inst1|converter1|state~18_combout\ : std_logic;
SIGNAL \inst1|converter1|state~25_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s1~q\ : std_logic;
SIGNAL \inst1|converter1|state~21_combout\ : std_logic;
SIGNAL \inst1|converter1|state~22_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s2~q\ : std_logic;
SIGNAL \inst1|converter1|state~24_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s3~q\ : std_logic;
SIGNAL \inst1|converter1|state~23_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s4~q\ : std_logic;
SIGNAL \inst1|converter1|state~19_combout\ : std_logic;
SIGNAL \inst1|converter1|state~20_combout\ : std_logic;
SIGNAL \inst1|converter1|state.s0~q\ : std_logic;
SIGNAL \inst1|converter1|digit_int_3~5_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_3[2]~4_combout\ : std_logic;
SIGNAL \inst1|converter1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|converter1|Add2~1_combout\ : std_logic;
SIGNAL \inst1|converter1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_out_3[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_1~1_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_1[2]~0_combout\ : std_logic;
SIGNAL \inst1|converter1|Add6~2_combout\ : std_logic;
SIGNAL \inst1|converter1|Add6~1_combout\ : std_logic;
SIGNAL \inst1|converter1|Add6~0_combout\ : std_logic;
SIGNAL \inst1|lcd_data~64_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_0~0_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_0[1]~1_combout\ : std_logic;
SIGNAL \inst1|lcd_data~66_combout\ : std_logic;
SIGNAL \inst1|lcd_data~67_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_2~1_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_2[2]~0_combout\ : std_logic;
SIGNAL \inst1|converter1|Add4~2_combout\ : std_logic;
SIGNAL \inst1|converter1|Add4~1_combout\ : std_logic;
SIGNAL \inst1|converter1|Add4~0_combout\ : std_logic;
SIGNAL \inst1|lcd_data~68_combout\ : std_logic;
SIGNAL \inst1|lcd_data~60_combout\ : std_logic;
SIGNAL \inst1|lcd_data~59_combout\ : std_logic;
SIGNAL \inst1|lcd_data~61_combout\ : std_logic;
SIGNAL \inst1|lcd_data~54_combout\ : std_logic;
SIGNAL \inst1|lcd_data~55_combout\ : std_logic;
SIGNAL \inst1|lcd_data~56_combout\ : std_logic;
SIGNAL \inst1|lcd_data~57_combout\ : std_logic;
SIGNAL \inst1|lcd_data~58_combout\ : std_logic;
SIGNAL \inst1|lcd_data~62_combout\ : std_logic;
SIGNAL \inst1|lcd_data~69_combout\ : std_logic;
SIGNAL \inst1|lcd_data~70_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~10_combout\ : std_logic;
SIGNAL \inst2|dataOut[3]~11_combout\ : std_logic;
SIGNAL \inst1|lcd_data~79_combout\ : std_logic;
SIGNAL \inst1|lcd_data~80_combout\ : std_logic;
SIGNAL \inst1|lcd_data~81_combout\ : std_logic;
SIGNAL \inst1|lcd_data~82_combout\ : std_logic;
SIGNAL \inst1|lcd_data~83_combout\ : std_logic;
SIGNAL \inst1|lcd_data~85_combout\ : std_logic;
SIGNAL \inst1|lcd_data~84_combout\ : std_logic;
SIGNAL \inst1|lcd_data~86_combout\ : std_logic;
SIGNAL \inst1|lcd_data~87_combout\ : std_logic;
SIGNAL \inst1|lcd_data~75_combout\ : std_logic;
SIGNAL \inst1|lcd_data~76_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_0~2_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_out_0[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|lcd_data~74_combout\ : std_logic;
SIGNAL \inst1|lcd_data~77_combout\ : std_logic;
SIGNAL \inst1|lcd_data~78_combout\ : std_logic;
SIGNAL \inst1|lcd_data~72_combout\ : std_logic;
SIGNAL \inst1|lcd_data~71_combout\ : std_logic;
SIGNAL \inst1|lcd_data~73_combout\ : std_logic;
SIGNAL \inst1|lcd_data~88_combout\ : std_logic;
SIGNAL \inst2|dataStorage[2]~2_combout\ : std_logic;
SIGNAL \inst2|addressStorage~3_combout\ : std_logic;
SIGNAL \inst2|dataOut[2]~12_combout\ : std_logic;
SIGNAL \inst2|dataOut[2]~13_combout\ : std_logic;
SIGNAL \inst1|lcd_data~89_combout\ : std_logic;
SIGNAL \inst1|lcd_data~90_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_out_1[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|lcd_data~93_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_0~3_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_out_0[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|lcd_data~91_combout\ : std_logic;
SIGNAL \inst1|lcd_data~92_combout\ : std_logic;
SIGNAL \inst1|lcd_data~94_combout\ : std_logic;
SIGNAL \inst1|lcd_data~95_combout\ : std_logic;
SIGNAL \inst1|lcd_data~96_combout\ : std_logic;
SIGNAL \inst1|lcd_data~5_combout\ : std_logic;
SIGNAL \inst1|lcd_data~4_combout\ : std_logic;
SIGNAL \inst1|lcd_data~119_combout\ : std_logic;
SIGNAL \inst1|lcd_data~97_combout\ : std_logic;
SIGNAL \inst1|lcd_data~98_combout\ : std_logic;
SIGNAL \inst1|lcd_data~99_combout\ : std_logic;
SIGNAL \inst1|lcd_data~100_combout\ : std_logic;
SIGNAL \inst1|lcd_data~101_combout\ : std_logic;
SIGNAL \inst2|dataStorage[1]~3_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~14_combout\ : std_logic;
SIGNAL \inst2|dataOut[1]~15_combout\ : std_logic;
SIGNAL \inst1|lcd_data~110_combout\ : std_logic;
SIGNAL \inst1|lcd_data~111_combout\ : std_logic;
SIGNAL \inst1|lcd_data~107_combout\ : std_logic;
SIGNAL \inst1|lcd_data~108_combout\ : std_logic;
SIGNAL \inst1|lcd_data~102_combout\ : std_logic;
SIGNAL \inst1|lcd_data~103_combout\ : std_logic;
SIGNAL \inst1|lcd_data~104_combout\ : std_logic;
SIGNAL \inst1|lcd_data~105_combout\ : std_logic;
SIGNAL \inst1|lcd_data~106_combout\ : std_logic;
SIGNAL \inst1|lcd_data~109_combout\ : std_logic;
SIGNAL \inst1|lcd_data~112_combout\ : std_logic;
SIGNAL \inst1|lcd_data~114_combout\ : std_logic;
SIGNAL \inst1|lcd_data~115_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_0~4_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_out_0[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|lcd_data~113_combout\ : std_logic;
SIGNAL \inst1|lcd_data~116_combout\ : std_logic;
SIGNAL \inst1|lcd_data~117_combout\ : std_logic;
SIGNAL \inst2|addressStorage[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|dataOut[0]~16_combout\ : std_logic;
SIGNAL \inst2|dataOut[0]~17_combout\ : std_logic;
SIGNAL \inst4|Equal5~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|Equal7~1_combout\ : std_logic;
SIGNAL \inst4|Equal5~2_combout\ : std_logic;
SIGNAL \inst4|Equal5~1_combout\ : std_logic;
SIGNAL \inst4|Equal5~3_combout\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Equal1~1_combout\ : std_logic;
SIGNAL \inst4|Led[2]~0_combout\ : std_logic;
SIGNAL \inst4|Led[2]~1_combout\ : std_logic;
SIGNAL \inst4|Equal1~2_combout\ : std_logic;
SIGNAL \inst4|Equal1~3_combout\ : std_logic;
SIGNAL \inst4|Equal0~1_combout\ : std_logic;
SIGNAL \inst4|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|converter1|digit_int_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|converter1|digit_out_0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|dataStorage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|converter1|number\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst1|converter1|digit_int_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst1|converter1|digit_int_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|converter1|digit_int_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|charCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|lineCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|addressStorage\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst1|display_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst|Data0\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|channel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clk_spi_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|lcd_posY\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|converter1|digit_out_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|converter1|digit_out_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|lcd_posX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|converter1|digit_out_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|data\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ALT_INV_clk_spi~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_active2~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ADC_DIN <= ww_ADC_DIN;
ww_clk_50 <= clk_50;
ww_ADC_DOUT <= ADC_DOUT;
ADC_CS <= ww_ADC_CS;
ADC_SCLK <= ww_ADC_SCLK;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_RS <= ww_LCD_RS;
LCD_Data <= ww_LCD_Data;
Led <= ww_Led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk_spi~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clk_spi~q\);

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst|ALT_INV_clk_spi~clkctrl_outclk\ <= NOT \inst|clk_spi~clkctrl_outclk\;
\inst|ALT_INV_active2~q\ <= NOT \inst|active2~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N16
\ADC_DIN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|DIN~q\,
	devoe => ww_devoe,
	o => \ADC_DIN~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\ADC_CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_active2~q\,
	devoe => ww_devoe,
	o => \ADC_CS~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\ADC_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SCLK~0_combout\,
	devoe => ww_devoe,
	o => \ADC_SCLK~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\LCD_E~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|e~7_combout\,
	devoe => ww_devoe,
	o => \LCD_E~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|process_1~0_combout\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\LCD_Data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|state.sendingAddress~q\,
	devoe => ww_devoe,
	o => \LCD_Data[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\LCD_Data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[6]~3_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\LCD_Data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[5]~6_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\LCD_Data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[4]~8_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\LCD_Data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[3]~11_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\LCD_Data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[2]~13_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\LCD_Data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[1]~15_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\LCD_Data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|dataOut[0]~17_combout\,
	devoe => ww_devoe,
	o => \LCD_Data[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\Led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Led[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\Led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Equal7~1_combout\,
	devoe => ww_devoe,
	o => \Led[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\Led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Equal5~3_combout\,
	devoe => ww_devoe,
	o => \Led[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Led[2]~1_combout\,
	devoe => ww_devoe,
	o => \Led[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Equal1~3_combout\,
	devoe => ww_devoe,
	o => \Led[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \Led[0]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clk_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50,
	o => \clk_50~input_o\);

-- Location: CLKCTRL_G18
\clk_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X32_Y33_N30
\inst|clk_spi_count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[0]~3_combout\ = !\inst|clk_spi_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_spi_count\(0),
	combout => \inst|clk_spi_count[0]~3_combout\);

-- Location: FF_X32_Y33_N31
\inst|clk_spi_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(0));

-- Location: LCCOMB_X32_Y33_N14
\inst|clk_spi_count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[1]~0_combout\ = \inst|clk_spi_count\(1) $ (\inst|clk_spi_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clk_spi_count\(1),
	datad => \inst|clk_spi_count\(0),
	combout => \inst|clk_spi_count[1]~0_combout\);

-- Location: FF_X32_Y33_N15
\inst|clk_spi_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(1));

-- Location: LCCOMB_X32_Y33_N4
\inst|clk_spi_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[2]~1_combout\ = \inst|clk_spi_count\(2) $ (((\inst|clk_spi_count\(1) & \inst|clk_spi_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi_count\(1),
	datac => \inst|clk_spi_count\(2),
	datad => \inst|clk_spi_count\(0),
	combout => \inst|clk_spi_count[2]~1_combout\);

-- Location: FF_X32_Y33_N5
\inst|clk_spi_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(2));

-- Location: LCCOMB_X32_Y33_N2
\inst|clk_spi_count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi_count[3]~2_combout\ = \inst|clk_spi_count\(3) $ (((\inst|clk_spi_count\(2) & (\inst|clk_spi_count\(1) & \inst|clk_spi_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi_count\(2),
	datab => \inst|clk_spi_count\(1),
	datac => \inst|clk_spi_count\(3),
	datad => \inst|clk_spi_count\(0),
	combout => \inst|clk_spi_count[3]~2_combout\);

-- Location: FF_X32_Y33_N3
\inst|clk_spi_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi_count[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi_count\(3));

-- Location: LCCOMB_X32_Y33_N28
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|clk_spi_count\(0) & (!\inst|clk_spi_count\(1) & (!\inst|clk_spi_count\(2) & !\inst|clk_spi_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi_count\(0),
	datab => \inst|clk_spi_count\(1),
	datac => \inst|clk_spi_count\(2),
	datad => \inst|clk_spi_count\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y33_N0
\inst|clk_spi~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi~0_combout\ = \inst|clk_spi~q\ $ (\inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clk_spi~q\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|clk_spi~0_combout\);

-- Location: LCCOMB_X32_Y33_N26
\inst|clk_spi~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clk_spi~feeder_combout\ = \inst|clk_spi~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clk_spi~0_combout\,
	combout => \inst|clk_spi~feeder_combout\);

-- Location: FF_X32_Y33_N27
\inst|clk_spi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|clk_spi~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_spi~q\);

-- Location: CLKCTRL_G12
\inst|clk_spi~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk_spi~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk_spi~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y33_N20
\inst|count[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~3_combout\ = !\inst|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(0),
	combout => \inst|count[0]~3_combout\);

-- Location: LCCOMB_X30_Y33_N8
\inst|active2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|active2~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|active2~feeder_combout\);

-- Location: FF_X30_Y33_N9
\inst|active2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|active2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|active2~q\);

-- Location: FF_X31_Y33_N13
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|count[0]~3_combout\,
	clrn => \inst|active2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X32_Y33_N10
\inst|count[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~0_combout\ = \inst|count\(0) $ (\inst|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datad => \inst|count\(1),
	combout => \inst|count[1]~0_combout\);

-- Location: FF_X31_Y33_N23
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|count[1]~0_combout\,
	clrn => \inst|active2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X32_Y33_N8
\inst|count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~1_combout\ = \inst|count\(2) $ (((\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|count\(0),
	combout => \inst|count[2]~1_combout\);

-- Location: FF_X31_Y33_N9
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|count[2]~1_combout\,
	clrn => \inst|active2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X32_Y33_N24
\inst|count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~2_combout\ = \inst|count\(3) $ (((\inst|count\(0) & (\inst|count\(2) & \inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|count[3]~2_combout\);

-- Location: FF_X31_Y33_N7
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	asdata => \inst|count[3]~2_combout\,
	clrn => \inst|active2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X31_Y33_N8
\inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = (\inst|count\(1) & (\inst|count\(0) & (\inst|count\(2) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count\(3),
	combout => \inst|Equal4~2_combout\);

-- Location: LCCOMB_X31_Y33_N10
\inst|channel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|channel[0]~0_combout\ = \inst|channel\(0) $ (\inst|Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|channel\(0),
	datad => \inst|Equal4~2_combout\,
	combout => \inst|channel[0]~0_combout\);

-- Location: FF_X31_Y33_N11
\inst|channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|channel[0]~0_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|channel\(0));

-- Location: LCCOMB_X31_Y33_N24
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|count\(3) & (\inst|count\(2) & (!\inst|count\(1) & !\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X31_Y33_N4
\inst|channel[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|channel[1]~2_combout\ = \inst|channel\(1) $ (((\inst|Equal4~2_combout\ & \inst|channel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~2_combout\,
	datac => \inst|channel\(1),
	datad => \inst|channel\(0),
	combout => \inst|channel[1]~2_combout\);

-- Location: FF_X31_Y33_N5
\inst|channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|channel[1]~2_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|channel\(1));

-- Location: LCCOMB_X31_Y33_N14
\inst|channel[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|channel[2]~1_combout\ = \inst|channel\(2) $ (((\inst|Equal4~2_combout\ & (\inst|channel\(1) & \inst|channel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~2_combout\,
	datab => \inst|channel\(1),
	datac => \inst|channel\(2),
	datad => \inst|channel\(0),
	combout => \inst|channel[2]~1_combout\);

-- Location: FF_X31_Y33_N15
\inst|channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|channel[2]~1_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|channel\(2));

-- Location: LCCOMB_X31_Y33_N26
\inst|DIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIN~0_combout\ = (\inst|count\(0) & (\inst|channel\(1))) # (!\inst|count\(0) & ((\inst|channel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|channel\(1),
	datac => \inst|channel\(2),
	datad => \inst|count\(0),
	combout => \inst|DIN~0_combout\);

-- Location: LCCOMB_X31_Y33_N20
\inst|DIN~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIN~1_combout\ = (\inst|count\(2)) # ((\inst|count\(3)) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(3),
	combout => \inst|DIN~1_combout\);

-- Location: LCCOMB_X31_Y33_N0
\inst|DIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DIN~2_combout\ = (\inst|DIN~1_combout\ & (\inst|channel\(0) & (\inst|Equal4~0_combout\))) # (!\inst|DIN~1_combout\ & (((\inst|DIN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|channel\(0),
	datab => \inst|Equal4~0_combout\,
	datac => \inst|DIN~0_combout\,
	datad => \inst|DIN~1_combout\,
	combout => \inst|DIN~2_combout\);

-- Location: FF_X31_Y33_N1
\inst|DIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|ALT_INV_clk_spi~clkctrl_outclk\,
	d => \inst|DIN~2_combout\,
	ena => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DIN~q\);

-- Location: LCCOMB_X32_Y33_N12
\inst|SCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|SCLK~0_combout\ = (\inst|clk_spi~q\) # (!\inst|active2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|active2~q\,
	datad => \inst|clk_spi~q\,
	combout => \inst|SCLK~0_combout\);

-- Location: LCCOMB_X50_Y31_N2
\inst2|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[0]~31_combout\ = \inst2|counter\(0) $ (VCC)
-- \inst2|counter[0]~32\ = CARRY(\inst2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(0),
	datad => VCC,
	combout => \inst2|counter[0]~31_combout\,
	cout => \inst2|counter[0]~32\);

-- Location: LCCOMB_X50_Y31_N12
\inst2|counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[5]~41_combout\ = (\inst2|counter\(5) & (!\inst2|counter[4]~40\)) # (!\inst2|counter\(5) & ((\inst2|counter[4]~40\) # (GND)))
-- \inst2|counter[5]~42\ = CARRY((!\inst2|counter[4]~40\) # (!\inst2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datad => VCC,
	cin => \inst2|counter[4]~40\,
	combout => \inst2|counter[5]~41_combout\,
	cout => \inst2|counter[5]~42\);

-- Location: LCCOMB_X50_Y31_N14
\inst2|counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[6]~43_combout\ = (\inst2|counter\(6) & (\inst2|counter[5]~42\ $ (GND))) # (!\inst2|counter\(6) & (!\inst2|counter[5]~42\ & VCC))
-- \inst2|counter[6]~44\ = CARRY((\inst2|counter\(6) & !\inst2|counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(6),
	datad => VCC,
	cin => \inst2|counter[5]~42\,
	combout => \inst2|counter[6]~43_combout\,
	cout => \inst2|counter[6]~44\);

-- Location: FF_X50_Y31_N15
\inst2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[6]~43_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(6));

-- Location: LCCOMB_X50_Y31_N16
\inst2|counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[7]~45_combout\ = (\inst2|counter\(7) & (!\inst2|counter[6]~44\)) # (!\inst2|counter\(7) & ((\inst2|counter[6]~44\) # (GND)))
-- \inst2|counter[7]~46\ = CARRY((!\inst2|counter[6]~44\) # (!\inst2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(7),
	datad => VCC,
	cin => \inst2|counter[6]~44\,
	combout => \inst2|counter[7]~45_combout\,
	cout => \inst2|counter[7]~46\);

-- Location: FF_X50_Y31_N17
\inst2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[7]~45_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(7));

-- Location: LCCOMB_X50_Y31_N18
\inst2|counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[8]~47_combout\ = (\inst2|counter\(8) & (\inst2|counter[7]~46\ $ (GND))) # (!\inst2|counter\(8) & (!\inst2|counter[7]~46\ & VCC))
-- \inst2|counter[8]~48\ = CARRY((\inst2|counter\(8) & !\inst2|counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(8),
	datad => VCC,
	cin => \inst2|counter[7]~46\,
	combout => \inst2|counter[8]~47_combout\,
	cout => \inst2|counter[8]~48\);

-- Location: FF_X50_Y31_N19
\inst2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[8]~47_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(8));

-- Location: LCCOMB_X50_Y31_N20
\inst2|counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[9]~49_combout\ = (\inst2|counter\(9) & (!\inst2|counter[8]~48\)) # (!\inst2|counter\(9) & ((\inst2|counter[8]~48\) # (GND)))
-- \inst2|counter[9]~50\ = CARRY((!\inst2|counter[8]~48\) # (!\inst2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(9),
	datad => VCC,
	cin => \inst2|counter[8]~48\,
	combout => \inst2|counter[9]~49_combout\,
	cout => \inst2|counter[9]~50\);

-- Location: FF_X50_Y31_N21
\inst2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[9]~49_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(9));

-- Location: LCCOMB_X50_Y31_N22
\inst2|counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[10]~51_combout\ = (\inst2|counter\(10) & (\inst2|counter[9]~50\ $ (GND))) # (!\inst2|counter\(10) & (!\inst2|counter[9]~50\ & VCC))
-- \inst2|counter[10]~52\ = CARRY((\inst2|counter\(10) & !\inst2|counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(10),
	datad => VCC,
	cin => \inst2|counter[9]~50\,
	combout => \inst2|counter[10]~51_combout\,
	cout => \inst2|counter[10]~52\);

-- Location: FF_X50_Y31_N23
\inst2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[10]~51_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(10));

-- Location: LCCOMB_X50_Y31_N24
\inst2|counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[11]~53_combout\ = (\inst2|counter\(11) & (!\inst2|counter[10]~52\)) # (!\inst2|counter\(11) & ((\inst2|counter[10]~52\) # (GND)))
-- \inst2|counter[11]~54\ = CARRY((!\inst2|counter[10]~52\) # (!\inst2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(11),
	datad => VCC,
	cin => \inst2|counter[10]~52\,
	combout => \inst2|counter[11]~53_combout\,
	cout => \inst2|counter[11]~54\);

-- Location: FF_X50_Y31_N25
\inst2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[11]~53_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(11));

-- Location: LCCOMB_X50_Y31_N26
\inst2|counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[12]~55_combout\ = (\inst2|counter\(12) & (\inst2|counter[11]~54\ $ (GND))) # (!\inst2|counter\(12) & (!\inst2|counter[11]~54\ & VCC))
-- \inst2|counter[12]~56\ = CARRY((\inst2|counter\(12) & !\inst2|counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(12),
	datad => VCC,
	cin => \inst2|counter[11]~54\,
	combout => \inst2|counter[12]~55_combout\,
	cout => \inst2|counter[12]~56\);

-- Location: FF_X50_Y31_N27
\inst2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[12]~55_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(12));

-- Location: LCCOMB_X48_Y31_N14
\inst2|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~18_combout\ = (!\inst2|counter\(7) & (!\inst2|counter\(3) & (!\inst2|counter\(12) & \inst2|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(7),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(12),
	datad => \inst2|counter\(6),
	combout => \inst2|process_0~18_combout\);

-- Location: LCCOMB_X48_Y31_N26
\inst2|process_0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~26_combout\ = (!\inst2|counter\(5) & (\inst2|process_0~18_combout\ & \inst2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datab => \inst2|process_0~18_combout\,
	datac => \inst2|counter\(9),
	combout => \inst2|process_0~26_combout\);

-- Location: LCCOMB_X50_Y31_N28
\inst2|counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[13]~57_combout\ = (\inst2|counter\(13) & (!\inst2|counter[12]~56\)) # (!\inst2|counter\(13) & ((\inst2|counter[12]~56\) # (GND)))
-- \inst2|counter[13]~58\ = CARRY((!\inst2|counter[12]~56\) # (!\inst2|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(13),
	datad => VCC,
	cin => \inst2|counter[12]~56\,
	combout => \inst2|counter[13]~57_combout\,
	cout => \inst2|counter[13]~58\);

-- Location: FF_X50_Y31_N29
\inst2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[13]~57_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(13));

-- Location: LCCOMB_X50_Y31_N30
\inst2|counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[14]~59_combout\ = (\inst2|counter\(14) & (\inst2|counter[13]~58\ $ (GND))) # (!\inst2|counter\(14) & (!\inst2|counter[13]~58\ & VCC))
-- \inst2|counter[14]~60\ = CARRY((\inst2|counter\(14) & !\inst2|counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(14),
	datad => VCC,
	cin => \inst2|counter[13]~58\,
	combout => \inst2|counter[14]~59_combout\,
	cout => \inst2|counter[14]~60\);

-- Location: FF_X50_Y31_N31
\inst2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[14]~59_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(14));

-- Location: LCCOMB_X50_Y30_N0
\inst2|counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[15]~61_combout\ = (\inst2|counter\(15) & (!\inst2|counter[14]~60\)) # (!\inst2|counter\(15) & ((\inst2|counter[14]~60\) # (GND)))
-- \inst2|counter[15]~62\ = CARRY((!\inst2|counter[14]~60\) # (!\inst2|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(15),
	datad => VCC,
	cin => \inst2|counter[14]~60\,
	combout => \inst2|counter[15]~61_combout\,
	cout => \inst2|counter[15]~62\);

-- Location: FF_X50_Y30_N1
\inst2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[15]~61_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(15));

-- Location: LCCOMB_X50_Y30_N2
\inst2|counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[16]~63_combout\ = (\inst2|counter\(16) & (\inst2|counter[15]~62\ $ (GND))) # (!\inst2|counter\(16) & (!\inst2|counter[15]~62\ & VCC))
-- \inst2|counter[16]~64\ = CARRY((\inst2|counter\(16) & !\inst2|counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(16),
	datad => VCC,
	cin => \inst2|counter[15]~62\,
	combout => \inst2|counter[16]~63_combout\,
	cout => \inst2|counter[16]~64\);

-- Location: FF_X50_Y30_N3
\inst2|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[16]~63_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(16));

-- Location: LCCOMB_X50_Y30_N4
\inst2|counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[17]~65_combout\ = (\inst2|counter\(17) & (!\inst2|counter[16]~64\)) # (!\inst2|counter\(17) & ((\inst2|counter[16]~64\) # (GND)))
-- \inst2|counter[17]~66\ = CARRY((!\inst2|counter[16]~64\) # (!\inst2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(17),
	datad => VCC,
	cin => \inst2|counter[16]~64\,
	combout => \inst2|counter[17]~65_combout\,
	cout => \inst2|counter[17]~66\);

-- Location: FF_X50_Y30_N5
\inst2|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[17]~65_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(17));

-- Location: LCCOMB_X48_Y31_N24
\inst2|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~15_combout\ = (!\inst2|counter\(13) & (!\inst2|counter\(15) & (!\inst2|counter\(17) & !\inst2|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(13),
	datab => \inst2|counter\(15),
	datac => \inst2|counter\(17),
	datad => \inst2|counter\(16),
	combout => \inst2|process_0~15_combout\);

-- Location: LCCOMB_X50_Y30_N6
\inst2|counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[18]~67_combout\ = (\inst2|counter\(18) & (\inst2|counter[17]~66\ $ (GND))) # (!\inst2|counter\(18) & (!\inst2|counter[17]~66\ & VCC))
-- \inst2|counter[18]~68\ = CARRY((\inst2|counter\(18) & !\inst2|counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(18),
	datad => VCC,
	cin => \inst2|counter[17]~66\,
	combout => \inst2|counter[18]~67_combout\,
	cout => \inst2|counter[18]~68\);

-- Location: FF_X50_Y30_N7
\inst2|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[18]~67_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(18));

-- Location: LCCOMB_X50_Y30_N8
\inst2|counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[19]~69_combout\ = (\inst2|counter\(19) & (!\inst2|counter[18]~68\)) # (!\inst2|counter\(19) & ((\inst2|counter[18]~68\) # (GND)))
-- \inst2|counter[19]~70\ = CARRY((!\inst2|counter[18]~68\) # (!\inst2|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(19),
	datad => VCC,
	cin => \inst2|counter[18]~68\,
	combout => \inst2|counter[19]~69_combout\,
	cout => \inst2|counter[19]~70\);

-- Location: FF_X50_Y30_N9
\inst2|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[19]~69_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(19));

-- Location: LCCOMB_X50_Y30_N10
\inst2|counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[20]~71_combout\ = (\inst2|counter\(20) & (\inst2|counter[19]~70\ $ (GND))) # (!\inst2|counter\(20) & (!\inst2|counter[19]~70\ & VCC))
-- \inst2|counter[20]~72\ = CARRY((\inst2|counter\(20) & !\inst2|counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(20),
	datad => VCC,
	cin => \inst2|counter[19]~70\,
	combout => \inst2|counter[20]~71_combout\,
	cout => \inst2|counter[20]~72\);

-- Location: FF_X50_Y30_N11
\inst2|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[20]~71_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(20));

-- Location: LCCOMB_X50_Y30_N12
\inst2|counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[21]~73_combout\ = (\inst2|counter\(21) & (!\inst2|counter[20]~72\)) # (!\inst2|counter\(21) & ((\inst2|counter[20]~72\) # (GND)))
-- \inst2|counter[21]~74\ = CARRY((!\inst2|counter[20]~72\) # (!\inst2|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(21),
	datad => VCC,
	cin => \inst2|counter[20]~72\,
	combout => \inst2|counter[21]~73_combout\,
	cout => \inst2|counter[21]~74\);

-- Location: FF_X50_Y30_N13
\inst2|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[21]~73_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(21));

-- Location: LCCOMB_X50_Y30_N14
\inst2|counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[22]~75_combout\ = (\inst2|counter\(22) & (\inst2|counter[21]~74\ $ (GND))) # (!\inst2|counter\(22) & (!\inst2|counter[21]~74\ & VCC))
-- \inst2|counter[22]~76\ = CARRY((\inst2|counter\(22) & !\inst2|counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(22),
	datad => VCC,
	cin => \inst2|counter[21]~74\,
	combout => \inst2|counter[22]~75_combout\,
	cout => \inst2|counter[22]~76\);

-- Location: FF_X50_Y30_N15
\inst2|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[22]~75_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(22));

-- Location: LCCOMB_X47_Y31_N20
\inst2|state.init0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state.init0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst2|state.init0~feeder_combout\);

-- Location: FF_X47_Y31_N21
\inst2|state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state.init0~feeder_combout\,
	ena => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init0~q\);

-- Location: LCCOMB_X48_Y31_N2
\inst2|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~16_combout\ = (!\inst2|state.init0~q\ & (\inst2|counter\(11) & (!\inst2|counter\(4) & \inst2|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init0~q\,
	datab => \inst2|counter\(11),
	datac => \inst2|counter\(4),
	datad => \inst2|counter\(18),
	combout => \inst2|process_0~16_combout\);

-- Location: LCCOMB_X48_Y31_N4
\inst2|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~17_combout\ = (\inst2|counter\(19) & (\inst2|counter\(14) & (\inst2|counter\(22) & \inst2|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(19),
	datab => \inst2|counter\(14),
	datac => \inst2|counter\(22),
	datad => \inst2|process_0~16_combout\,
	combout => \inst2|process_0~17_combout\);

-- Location: LCCOMB_X50_Y31_N0
\inst2|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~2_combout\ = (!\inst2|counter\(2) & (!\inst2|counter\(0) & (!\inst2|counter\(1) & \inst2|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(0),
	datac => \inst2|counter\(1),
	datad => \inst2|counter\(8),
	combout => \inst2|Equal5~2_combout\);

-- Location: LCCOMB_X50_Y30_N16
\inst2|counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[23]~77_combout\ = (\inst2|counter\(23) & (!\inst2|counter[22]~76\)) # (!\inst2|counter\(23) & ((\inst2|counter[22]~76\) # (GND)))
-- \inst2|counter[23]~78\ = CARRY((!\inst2|counter[22]~76\) # (!\inst2|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(23),
	datad => VCC,
	cin => \inst2|counter[22]~76\,
	combout => \inst2|counter[23]~77_combout\,
	cout => \inst2|counter[23]~78\);

-- Location: FF_X51_Y31_N13
\inst2|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[23]~77_combout\,
	sclr => \inst2|state~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(23));

-- Location: LCCOMB_X50_Y30_N18
\inst2|counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[24]~79_combout\ = (\inst2|counter\(24) & (\inst2|counter[23]~78\ $ (GND))) # (!\inst2|counter\(24) & (!\inst2|counter[23]~78\ & VCC))
-- \inst2|counter[24]~80\ = CARRY((\inst2|counter\(24) & !\inst2|counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(24),
	datad => VCC,
	cin => \inst2|counter[23]~78\,
	combout => \inst2|counter[24]~79_combout\,
	cout => \inst2|counter[24]~80\);

-- Location: FF_X50_Y30_N19
\inst2|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[24]~79_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(24));

-- Location: LCCOMB_X50_Y30_N20
\inst2|counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[25]~81_combout\ = (\inst2|counter\(25) & (!\inst2|counter[24]~80\)) # (!\inst2|counter\(25) & ((\inst2|counter[24]~80\) # (GND)))
-- \inst2|counter[25]~82\ = CARRY((!\inst2|counter[24]~80\) # (!\inst2|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(25),
	datad => VCC,
	cin => \inst2|counter[24]~80\,
	combout => \inst2|counter[25]~81_combout\,
	cout => \inst2|counter[25]~82\);

-- Location: FF_X51_Y31_N31
\inst2|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[25]~81_combout\,
	sclr => \inst2|state~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(25));

-- Location: LCCOMB_X50_Y30_N22
\inst2|counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[26]~83_combout\ = (\inst2|counter\(26) & (\inst2|counter[25]~82\ $ (GND))) # (!\inst2|counter\(26) & (!\inst2|counter[25]~82\ & VCC))
-- \inst2|counter[26]~84\ = CARRY((\inst2|counter\(26) & !\inst2|counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(26),
	datad => VCC,
	cin => \inst2|counter[25]~82\,
	combout => \inst2|counter[26]~83_combout\,
	cout => \inst2|counter[26]~84\);

-- Location: FF_X51_Y31_N29
\inst2|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[26]~83_combout\,
	sclr => \inst2|state~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(26));

-- Location: LCCOMB_X50_Y30_N24
\inst2|counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[27]~85_combout\ = (\inst2|counter\(27) & (!\inst2|counter[26]~84\)) # (!\inst2|counter\(27) & ((\inst2|counter[26]~84\) # (GND)))
-- \inst2|counter[27]~86\ = CARRY((!\inst2|counter[26]~84\) # (!\inst2|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(27),
	datad => VCC,
	cin => \inst2|counter[26]~84\,
	combout => \inst2|counter[27]~85_combout\,
	cout => \inst2|counter[27]~86\);

-- Location: FF_X51_Y31_N7
\inst2|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[27]~85_combout\,
	sclr => \inst2|state~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(27));

-- Location: LCCOMB_X51_Y31_N18
\inst2|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~2_combout\ = (!\inst2|counter\(27) & (!\inst2|counter\(26) & (!\inst2|counter\(25) & !\inst2|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(27),
	datab => \inst2|counter\(26),
	datac => \inst2|counter\(25),
	datad => \inst2|counter\(24),
	combout => \inst2|e~2_combout\);

-- Location: LCCOMB_X51_Y31_N8
\inst2|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~1_combout\ = (!\inst2|counter\(23) & (!\inst2|counter\(10) & (!\inst2|counter\(20) & !\inst2|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(23),
	datab => \inst2|counter\(10),
	datac => \inst2|counter\(20),
	datad => \inst2|counter\(21),
	combout => \inst2|e~1_combout\);

-- Location: LCCOMB_X50_Y30_N26
\inst2|counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[28]~87_combout\ = (\inst2|counter\(28) & (\inst2|counter[27]~86\ $ (GND))) # (!\inst2|counter\(28) & (!\inst2|counter[27]~86\ & VCC))
-- \inst2|counter[28]~88\ = CARRY((\inst2|counter\(28) & !\inst2|counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(28),
	datad => VCC,
	cin => \inst2|counter[27]~86\,
	combout => \inst2|counter[28]~87_combout\,
	cout => \inst2|counter[28]~88\);

-- Location: FF_X51_Y31_N5
\inst2|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[28]~87_combout\,
	sclr => \inst2|state~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(28));

-- Location: LCCOMB_X50_Y30_N28
\inst2|counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[29]~89_combout\ = (\inst2|counter\(29) & (!\inst2|counter[28]~88\)) # (!\inst2|counter\(29) & ((\inst2|counter[28]~88\) # (GND)))
-- \inst2|counter[29]~90\ = CARRY((!\inst2|counter[28]~88\) # (!\inst2|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(29),
	datad => VCC,
	cin => \inst2|counter[28]~88\,
	combout => \inst2|counter[29]~89_combout\,
	cout => \inst2|counter[29]~90\);

-- Location: FF_X50_Y30_N29
\inst2|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[29]~89_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(29));

-- Location: LCCOMB_X50_Y30_N30
\inst2|counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[30]~91_combout\ = \inst2|counter[29]~90\ $ (!\inst2|counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|counter\(30),
	cin => \inst2|counter[29]~90\,
	combout => \inst2|counter[30]~91_combout\);

-- Location: FF_X51_Y31_N23
\inst2|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|counter[30]~91_combout\,
	sclr => \inst2|state~33_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(30));

-- Location: LCCOMB_X51_Y31_N20
\inst2|e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~3_combout\ = (!\inst2|counter\(28) & (!\inst2|counter\(30) & !\inst2|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(28),
	datac => \inst2|counter\(30),
	datad => \inst2|counter\(29),
	combout => \inst2|e~3_combout\);

-- Location: LCCOMB_X51_Y31_N26
\inst2|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~3_combout\ = (\inst2|Equal5~2_combout\ & (\inst2|e~2_combout\ & (\inst2|e~1_combout\ & \inst2|e~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~2_combout\,
	datab => \inst2|e~2_combout\,
	datac => \inst2|e~1_combout\,
	datad => \inst2|e~3_combout\,
	combout => \inst2|Equal5~3_combout\);

-- Location: LCCOMB_X48_Y31_N16
\inst2|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~19_combout\ = (\inst2|process_0~26_combout\ & (\inst2|process_0~15_combout\ & (\inst2|process_0~17_combout\ & \inst2|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~26_combout\,
	datab => \inst2|process_0~15_combout\,
	datac => \inst2|process_0~17_combout\,
	datad => \inst2|Equal5~3_combout\,
	combout => \inst2|process_0~19_combout\);

-- Location: LCCOMB_X45_Y29_N2
\inst1|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[0]~31_combout\ = \inst1|counter\(0) $ (VCC)
-- \inst1|counter[0]~32\ = CARRY(\inst1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(0),
	datad => VCC,
	combout => \inst1|counter[0]~31_combout\,
	cout => \inst1|counter[0]~32\);

-- Location: LCCOMB_X45_Y29_N4
\inst1|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[1]~33_combout\ = (\inst1|counter\(1) & (!\inst1|counter[0]~32\)) # (!\inst1|counter\(1) & ((\inst1|counter[0]~32\) # (GND)))
-- \inst1|counter[1]~34\ = CARRY((!\inst1|counter[0]~32\) # (!\inst1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(1),
	datad => VCC,
	cin => \inst1|counter[0]~32\,
	combout => \inst1|counter[1]~33_combout\,
	cout => \inst1|counter[1]~34\);

-- Location: LCCOMB_X45_Y29_N6
\inst1|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[2]~35_combout\ = (\inst1|counter\(2) & (\inst1|counter[1]~34\ $ (GND))) # (!\inst1|counter\(2) & (!\inst1|counter[1]~34\ & VCC))
-- \inst1|counter[2]~36\ = CARRY((\inst1|counter\(2) & !\inst1|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(2),
	datad => VCC,
	cin => \inst1|counter[1]~34\,
	combout => \inst1|counter[2]~35_combout\,
	cout => \inst1|counter[2]~36\);

-- Location: FF_X45_Y29_N7
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[2]~35_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LCCOMB_X45_Y29_N8
\inst1|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[3]~37_combout\ = (\inst1|counter\(3) & (!\inst1|counter[2]~36\)) # (!\inst1|counter\(3) & ((\inst1|counter[2]~36\) # (GND)))
-- \inst1|counter[3]~38\ = CARRY((!\inst1|counter[2]~36\) # (!\inst1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(3),
	datad => VCC,
	cin => \inst1|counter[2]~36\,
	combout => \inst1|counter[3]~37_combout\,
	cout => \inst1|counter[3]~38\);

-- Location: FF_X45_Y29_N9
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[3]~37_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: LCCOMB_X45_Y29_N10
\inst1|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[4]~39_combout\ = (\inst1|counter\(4) & (\inst1|counter[3]~38\ $ (GND))) # (!\inst1|counter\(4) & (!\inst1|counter[3]~38\ & VCC))
-- \inst1|counter[4]~40\ = CARRY((\inst1|counter\(4) & !\inst1|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(4),
	datad => VCC,
	cin => \inst1|counter[3]~38\,
	combout => \inst1|counter[4]~39_combout\,
	cout => \inst1|counter[4]~40\);

-- Location: FF_X45_Y29_N11
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[4]~39_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LCCOMB_X45_Y29_N12
\inst1|counter[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[5]~44_combout\ = (\inst1|counter\(5) & (!\inst1|counter[4]~40\)) # (!\inst1|counter\(5) & ((\inst1|counter[4]~40\) # (GND)))
-- \inst1|counter[5]~45\ = CARRY((!\inst1|counter[4]~40\) # (!\inst1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(5),
	datad => VCC,
	cin => \inst1|counter[4]~40\,
	combout => \inst1|counter[5]~44_combout\,
	cout => \inst1|counter[5]~45\);

-- Location: FF_X45_Y29_N13
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[5]~44_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: LCCOMB_X45_Y29_N14
\inst1|counter[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[6]~46_combout\ = (\inst1|counter\(6) & (\inst1|counter[5]~45\ $ (GND))) # (!\inst1|counter\(6) & (!\inst1|counter[5]~45\ & VCC))
-- \inst1|counter[6]~47\ = CARRY((\inst1|counter\(6) & !\inst1|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(6),
	datad => VCC,
	cin => \inst1|counter[5]~45\,
	combout => \inst1|counter[6]~46_combout\,
	cout => \inst1|counter[6]~47\);

-- Location: FF_X45_Y29_N15
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[6]~46_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LCCOMB_X45_Y29_N16
\inst1|counter[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[7]~48_combout\ = (\inst1|counter\(7) & (!\inst1|counter[6]~47\)) # (!\inst1|counter\(7) & ((\inst1|counter[6]~47\) # (GND)))
-- \inst1|counter[7]~49\ = CARRY((!\inst1|counter[6]~47\) # (!\inst1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(7),
	datad => VCC,
	cin => \inst1|counter[6]~47\,
	combout => \inst1|counter[7]~48_combout\,
	cout => \inst1|counter[7]~49\);

-- Location: FF_X45_Y29_N17
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[7]~48_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: LCCOMB_X45_Y29_N18
\inst1|counter[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[8]~50_combout\ = (\inst1|counter\(8) & (\inst1|counter[7]~49\ $ (GND))) # (!\inst1|counter\(8) & (!\inst1|counter[7]~49\ & VCC))
-- \inst1|counter[8]~51\ = CARRY((\inst1|counter\(8) & !\inst1|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(8),
	datad => VCC,
	cin => \inst1|counter[7]~49\,
	combout => \inst1|counter[8]~50_combout\,
	cout => \inst1|counter[8]~51\);

-- Location: FF_X45_Y29_N19
\inst1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[8]~50_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(8));

-- Location: LCCOMB_X45_Y29_N20
\inst1|counter[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[9]~52_combout\ = (\inst1|counter\(9) & (!\inst1|counter[8]~51\)) # (!\inst1|counter\(9) & ((\inst1|counter[8]~51\) # (GND)))
-- \inst1|counter[9]~53\ = CARRY((!\inst1|counter[8]~51\) # (!\inst1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(9),
	datad => VCC,
	cin => \inst1|counter[8]~51\,
	combout => \inst1|counter[9]~52_combout\,
	cout => \inst1|counter[9]~53\);

-- Location: FF_X45_Y29_N21
\inst1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[9]~52_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(9));

-- Location: LCCOMB_X45_Y29_N22
\inst1|counter[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[10]~54_combout\ = (\inst1|counter\(10) & (\inst1|counter[9]~53\ $ (GND))) # (!\inst1|counter\(10) & (!\inst1|counter[9]~53\ & VCC))
-- \inst1|counter[10]~55\ = CARRY((\inst1|counter\(10) & !\inst1|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(10),
	datad => VCC,
	cin => \inst1|counter[9]~53\,
	combout => \inst1|counter[10]~54_combout\,
	cout => \inst1|counter[10]~55\);

-- Location: FF_X45_Y29_N23
\inst1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[10]~54_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(10));

-- Location: LCCOMB_X45_Y29_N24
\inst1|counter[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[11]~56_combout\ = (\inst1|counter\(11) & (!\inst1|counter[10]~55\)) # (!\inst1|counter\(11) & ((\inst1|counter[10]~55\) # (GND)))
-- \inst1|counter[11]~57\ = CARRY((!\inst1|counter[10]~55\) # (!\inst1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(11),
	datad => VCC,
	cin => \inst1|counter[10]~55\,
	combout => \inst1|counter[11]~56_combout\,
	cout => \inst1|counter[11]~57\);

-- Location: FF_X45_Y29_N25
\inst1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[11]~56_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(11));

-- Location: LCCOMB_X45_Y29_N26
\inst1|counter[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[12]~58_combout\ = (\inst1|counter\(12) & (\inst1|counter[11]~57\ $ (GND))) # (!\inst1|counter\(12) & (!\inst1|counter[11]~57\ & VCC))
-- \inst1|counter[12]~59\ = CARRY((\inst1|counter\(12) & !\inst1|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(12),
	datad => VCC,
	cin => \inst1|counter[11]~57\,
	combout => \inst1|counter[12]~58_combout\,
	cout => \inst1|counter[12]~59\);

-- Location: FF_X45_Y29_N27
\inst1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[12]~58_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(12));

-- Location: LCCOMB_X45_Y29_N28
\inst1|counter[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[13]~60_combout\ = (\inst1|counter\(13) & (!\inst1|counter[12]~59\)) # (!\inst1|counter\(13) & ((\inst1|counter[12]~59\) # (GND)))
-- \inst1|counter[13]~61\ = CARRY((!\inst1|counter[12]~59\) # (!\inst1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(13),
	datad => VCC,
	cin => \inst1|counter[12]~59\,
	combout => \inst1|counter[13]~60_combout\,
	cout => \inst1|counter[13]~61\);

-- Location: FF_X45_Y29_N29
\inst1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[13]~60_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(13));

-- Location: LCCOMB_X45_Y29_N30
\inst1|counter[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[14]~62_combout\ = (\inst1|counter\(14) & (\inst1|counter[13]~61\ $ (GND))) # (!\inst1|counter\(14) & (!\inst1|counter[13]~61\ & VCC))
-- \inst1|counter[14]~63\ = CARRY((\inst1|counter\(14) & !\inst1|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(14),
	datad => VCC,
	cin => \inst1|counter[13]~61\,
	combout => \inst1|counter[14]~62_combout\,
	cout => \inst1|counter[14]~63\);

-- Location: FF_X45_Y29_N31
\inst1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[14]~62_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(14));

-- Location: LCCOMB_X45_Y28_N0
\inst1|counter[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[15]~64_combout\ = (\inst1|counter\(15) & (!\inst1|counter[14]~63\)) # (!\inst1|counter\(15) & ((\inst1|counter[14]~63\) # (GND)))
-- \inst1|counter[15]~65\ = CARRY((!\inst1|counter[14]~63\) # (!\inst1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(15),
	datad => VCC,
	cin => \inst1|counter[14]~63\,
	combout => \inst1|counter[15]~64_combout\,
	cout => \inst1|counter[15]~65\);

-- Location: FF_X45_Y28_N1
\inst1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[15]~64_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(15));

-- Location: LCCOMB_X45_Y28_N2
\inst1|counter[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[16]~66_combout\ = (\inst1|counter\(16) & (\inst1|counter[15]~65\ $ (GND))) # (!\inst1|counter\(16) & (!\inst1|counter[15]~65\ & VCC))
-- \inst1|counter[16]~67\ = CARRY((\inst1|counter\(16) & !\inst1|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(16),
	datad => VCC,
	cin => \inst1|counter[15]~65\,
	combout => \inst1|counter[16]~66_combout\,
	cout => \inst1|counter[16]~67\);

-- Location: FF_X45_Y28_N3
\inst1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[16]~66_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(16));

-- Location: LCCOMB_X45_Y28_N4
\inst1|counter[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[17]~68_combout\ = (\inst1|counter\(17) & (!\inst1|counter[16]~67\)) # (!\inst1|counter\(17) & ((\inst1|counter[16]~67\) # (GND)))
-- \inst1|counter[17]~69\ = CARRY((!\inst1|counter[16]~67\) # (!\inst1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(17),
	datad => VCC,
	cin => \inst1|counter[16]~67\,
	combout => \inst1|counter[17]~68_combout\,
	cout => \inst1|counter[17]~69\);

-- Location: FF_X45_Y28_N5
\inst1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[17]~68_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(17));

-- Location: LCCOMB_X45_Y28_N6
\inst1|counter[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[18]~70_combout\ = (\inst1|counter\(18) & (\inst1|counter[17]~69\ $ (GND))) # (!\inst1|counter\(18) & (!\inst1|counter[17]~69\ & VCC))
-- \inst1|counter[18]~71\ = CARRY((\inst1|counter\(18) & !\inst1|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(18),
	datad => VCC,
	cin => \inst1|counter[17]~69\,
	combout => \inst1|counter[18]~70_combout\,
	cout => \inst1|counter[18]~71\);

-- Location: FF_X45_Y28_N7
\inst1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[18]~70_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(18));

-- Location: LCCOMB_X45_Y28_N8
\inst1|counter[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[19]~72_combout\ = (\inst1|counter\(19) & (!\inst1|counter[18]~71\)) # (!\inst1|counter\(19) & ((\inst1|counter[18]~71\) # (GND)))
-- \inst1|counter[19]~73\ = CARRY((!\inst1|counter[18]~71\) # (!\inst1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(19),
	datad => VCC,
	cin => \inst1|counter[18]~71\,
	combout => \inst1|counter[19]~72_combout\,
	cout => \inst1|counter[19]~73\);

-- Location: FF_X45_Y28_N9
\inst1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[19]~72_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(19));

-- Location: LCCOMB_X45_Y28_N10
\inst1|counter[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[20]~74_combout\ = (\inst1|counter\(20) & (\inst1|counter[19]~73\ $ (GND))) # (!\inst1|counter\(20) & (!\inst1|counter[19]~73\ & VCC))
-- \inst1|counter[20]~75\ = CARRY((\inst1|counter\(20) & !\inst1|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(20),
	datad => VCC,
	cin => \inst1|counter[19]~73\,
	combout => \inst1|counter[20]~74_combout\,
	cout => \inst1|counter[20]~75\);

-- Location: FF_X45_Y28_N11
\inst1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[20]~74_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(20));

-- Location: LCCOMB_X45_Y28_N12
\inst1|counter[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[21]~76_combout\ = (\inst1|counter\(21) & (!\inst1|counter[20]~75\)) # (!\inst1|counter\(21) & ((\inst1|counter[20]~75\) # (GND)))
-- \inst1|counter[21]~77\ = CARRY((!\inst1|counter[20]~75\) # (!\inst1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(21),
	datad => VCC,
	cin => \inst1|counter[20]~75\,
	combout => \inst1|counter[21]~76_combout\,
	cout => \inst1|counter[21]~77\);

-- Location: FF_X45_Y28_N13
\inst1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[21]~76_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(21));

-- Location: LCCOMB_X45_Y28_N14
\inst1|counter[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[22]~78_combout\ = (\inst1|counter\(22) & (\inst1|counter[21]~77\ $ (GND))) # (!\inst1|counter\(22) & (!\inst1|counter[21]~77\ & VCC))
-- \inst1|counter[22]~79\ = CARRY((\inst1|counter\(22) & !\inst1|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(22),
	datad => VCC,
	cin => \inst1|counter[21]~77\,
	combout => \inst1|counter[22]~78_combout\,
	cout => \inst1|counter[22]~79\);

-- Location: FF_X45_Y28_N15
\inst1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[22]~78_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(22));

-- Location: LCCOMB_X44_Y28_N18
\inst1|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~9_combout\ = (\inst1|counter\(18) & (\inst1|counter\(19) & (\inst1|counter\(14) & \inst1|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(18),
	datab => \inst1|counter\(19),
	datac => \inst1|counter\(14),
	datad => \inst1|counter\(11),
	combout => \inst1|process_0~9_combout\);

-- Location: LCCOMB_X44_Y28_N12
\inst1|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~10_combout\ = (\inst1|counter\(22) & \inst1|process_0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|counter\(22),
	datad => \inst1|process_0~9_combout\,
	combout => \inst1|process_0~10_combout\);

-- Location: LCCOMB_X44_Y28_N8
\inst1|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~8_combout\ = (\inst1|counter\(8) & (\inst1|counter\(9) & (!\inst1|counter\(3) & \inst1|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(8),
	datab => \inst1|counter\(9),
	datac => \inst1|counter\(3),
	datad => \inst1|counter\(6),
	combout => \inst1|process_0~8_combout\);

-- Location: LCCOMB_X44_Y29_N4
\inst1|lineCount[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lineCount[1]~3_combout\ = (\inst1|lineCount~1_combout\ & (!\inst1|state.update~q\ & (\inst1|lineCount\(0) $ (\inst1|lineCount\(1))))) # (!\inst1|lineCount~1_combout\ & (((\inst1|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datab => \inst1|state.update~q\,
	datac => \inst1|lineCount\(1),
	datad => \inst1|lineCount~1_combout\,
	combout => \inst1|lineCount[1]~3_combout\);

-- Location: FF_X44_Y29_N5
\inst1|lineCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lineCount[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lineCount\(1));

-- Location: LCCOMB_X44_Y29_N12
\inst1|lineCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lineCount~0_combout\ = (\inst1|lineCount\(0) & \inst1|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datac => \inst1|lineCount\(1),
	combout => \inst1|lineCount~0_combout\);

-- Location: LCCOMB_X44_Y30_N16
\inst1|charCount[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|charCount[0]~5_combout\ = \inst1|charCount\(0) $ (VCC)
-- \inst1|charCount[0]~6\ = CARRY(\inst1|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(0),
	datad => VCC,
	combout => \inst1|charCount[0]~5_combout\,
	cout => \inst1|charCount[0]~6\);

-- Location: LCCOMB_X44_Y30_N6
\inst1|charCount[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|charCount[0]~13_combout\ = (\inst1|state.update~q\) # (!\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.update~q\,
	datac => \inst1|Equal0~0_combout\,
	combout => \inst1|charCount[0]~13_combout\);

-- Location: FF_X44_Y30_N17
\inst1|charCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|charCount[0]~5_combout\,
	sclr => \inst1|charCount[0]~13_combout\,
	ena => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|charCount\(0));

-- Location: LCCOMB_X44_Y30_N18
\inst1|charCount[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|charCount[1]~7_combout\ = (\inst1|charCount\(1) & (!\inst1|charCount[0]~6\)) # (!\inst1|charCount\(1) & ((\inst1|charCount[0]~6\) # (GND)))
-- \inst1|charCount[1]~8\ = CARRY((!\inst1|charCount[0]~6\) # (!\inst1|charCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(1),
	datad => VCC,
	cin => \inst1|charCount[0]~6\,
	combout => \inst1|charCount[1]~7_combout\,
	cout => \inst1|charCount[1]~8\);

-- Location: FF_X44_Y30_N19
\inst1|charCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|charCount[1]~7_combout\,
	sclr => \inst1|charCount[0]~13_combout\,
	ena => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|charCount\(1));

-- Location: LCCOMB_X44_Y30_N20
\inst1|charCount[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|charCount[2]~9_combout\ = (\inst1|charCount\(2) & (\inst1|charCount[1]~8\ $ (GND))) # (!\inst1|charCount\(2) & (!\inst1|charCount[1]~8\ & VCC))
-- \inst1|charCount[2]~10\ = CARRY((\inst1|charCount\(2) & !\inst1|charCount[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(2),
	datad => VCC,
	cin => \inst1|charCount[1]~8\,
	combout => \inst1|charCount[2]~9_combout\,
	cout => \inst1|charCount[2]~10\);

-- Location: FF_X44_Y30_N21
\inst1|charCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|charCount[2]~9_combout\,
	sclr => \inst1|charCount[0]~13_combout\,
	ena => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|charCount\(2));

-- Location: LCCOMB_X44_Y30_N22
\inst1|charCount[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|charCount[3]~11_combout\ = (\inst1|charCount\(3) & (!\inst1|charCount[2]~10\)) # (!\inst1|charCount\(3) & ((\inst1|charCount[2]~10\) # (GND)))
-- \inst1|charCount[3]~12\ = CARRY((!\inst1|charCount[2]~10\) # (!\inst1|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datad => VCC,
	cin => \inst1|charCount[2]~10\,
	combout => \inst1|charCount[3]~11_combout\,
	cout => \inst1|charCount[3]~12\);

-- Location: FF_X44_Y30_N23
\inst1|charCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|charCount[3]~11_combout\,
	sclr => \inst1|charCount[0]~13_combout\,
	ena => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|charCount\(3));

-- Location: LCCOMB_X44_Y30_N24
\inst1|charCount[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|charCount[4]~14_combout\ = \inst1|charCount[3]~12\ $ (!\inst1|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|charCount\(4),
	cin => \inst1|charCount[3]~12\,
	combout => \inst1|charCount[4]~14_combout\);

-- Location: FF_X44_Y30_N25
\inst1|charCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|charCount[4]~14_combout\,
	sclr => \inst1|charCount[0]~13_combout\,
	ena => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|charCount\(4));

-- Location: LCCOMB_X44_Y30_N2
\inst1|lcd_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~65_combout\ = (!\inst1|charCount\(0) & \inst1|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~65_combout\);

-- Location: LCCOMB_X44_Y30_N4
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ((\inst1|charCount\(1)) # ((\inst1|charCount\(3)) # (!\inst1|lcd_data~65_combout\))) # (!\inst1|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(4),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|lcd_data~65_combout\,
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y29_N10
\inst1|lineCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lineCount~1_combout\ = (\inst1|state.update~q\ & (((\inst1|process_0~11_combout\)))) # (!\inst1|state.update~q\ & (!\inst1|lineCount~0_combout\ & ((!\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount~0_combout\,
	datab => \inst1|state.update~q\,
	datac => \inst1|process_0~11_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|lineCount~1_combout\);

-- Location: LCCOMB_X44_Y29_N26
\inst1|lineCount[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lineCount[0]~2_combout\ = (\inst1|lineCount\(0) & ((!\inst1|lineCount~1_combout\))) # (!\inst1|lineCount\(0) & (!\inst1|state.update~q\ & \inst1|lineCount~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.update~q\,
	datac => \inst1|lineCount\(0),
	datad => \inst1|lineCount~1_combout\,
	combout => \inst1|lineCount[0]~2_combout\);

-- Location: FF_X44_Y29_N27
\inst1|lineCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lineCount[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lineCount\(0));

-- Location: LCCOMB_X44_Y29_N20
\inst1|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~11_combout\ = (\inst1|lineCount\(0) & (!\inst1|state.update~q\ & (\inst1|lineCount\(1) & !\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datab => \inst1|state.update~q\,
	datac => \inst1|lineCount\(1),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|state~11_combout\);

-- Location: LCCOMB_X44_Y29_N0
\inst1|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~10_combout\ = (\inst1|state~11_combout\) # ((!\inst1|process_0~11_combout\ & \inst1|state.update~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datac => \inst1|state.update~q\,
	datad => \inst1|state~11_combout\,
	combout => \inst1|state~10_combout\);

-- Location: FF_X44_Y29_N1
\inst1|state.update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.update~q\);

-- Location: LCCOMB_X44_Y29_N28
\inst1|state.pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state.pause~0_combout\ = (\inst1|state~11_combout\ & (((!\inst1|state.update~q\)))) # (!\inst1|state~11_combout\ & (\inst1|state.pause~q\ & ((!\inst1|state.update~q\) # (!\inst1|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|state.update~q\,
	datac => \inst1|state.pause~q\,
	datad => \inst1|state~11_combout\,
	combout => \inst1|state.pause~0_combout\);

-- Location: FF_X44_Y29_N29
\inst1|state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|state.pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.pause~q\);

-- Location: LCCOMB_X44_Y29_N18
\inst1|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~7_combout\ = (!\inst1|counter\(1) & (\inst1|state.pause~q\ & (!\inst1|counter\(2) & !\inst1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datab => \inst1|state.pause~q\,
	datac => \inst1|counter\(2),
	datad => \inst1|counter\(0),
	combout => \inst1|process_0~7_combout\);

-- Location: LCCOMB_X45_Y28_N16
\inst1|counter[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[23]~80_combout\ = (\inst1|counter\(23) & (!\inst1|counter[22]~79\)) # (!\inst1|counter\(23) & ((\inst1|counter[22]~79\) # (GND)))
-- \inst1|counter[23]~81\ = CARRY((!\inst1|counter[22]~79\) # (!\inst1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(23),
	datad => VCC,
	cin => \inst1|counter[22]~79\,
	combout => \inst1|counter[23]~80_combout\,
	cout => \inst1|counter[23]~81\);

-- Location: FF_X45_Y28_N17
\inst1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[23]~80_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(23));

-- Location: LCCOMB_X45_Y28_N18
\inst1|counter[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[24]~82_combout\ = (\inst1|counter\(24) & (\inst1|counter[23]~81\ $ (GND))) # (!\inst1|counter\(24) & (!\inst1|counter[23]~81\ & VCC))
-- \inst1|counter[24]~83\ = CARRY((\inst1|counter\(24) & !\inst1|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(24),
	datad => VCC,
	cin => \inst1|counter[23]~81\,
	combout => \inst1|counter[24]~82_combout\,
	cout => \inst1|counter[24]~83\);

-- Location: FF_X45_Y28_N19
\inst1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[24]~82_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(24));

-- Location: LCCOMB_X45_Y28_N20
\inst1|counter[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[25]~84_combout\ = (\inst1|counter\(25) & (!\inst1|counter[24]~83\)) # (!\inst1|counter\(25) & ((\inst1|counter[24]~83\) # (GND)))
-- \inst1|counter[25]~85\ = CARRY((!\inst1|counter[24]~83\) # (!\inst1|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(25),
	datad => VCC,
	cin => \inst1|counter[24]~83\,
	combout => \inst1|counter[25]~84_combout\,
	cout => \inst1|counter[25]~85\);

-- Location: FF_X45_Y28_N21
\inst1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[25]~84_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(25));

-- Location: LCCOMB_X45_Y28_N22
\inst1|counter[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[26]~86_combout\ = (\inst1|counter\(26) & (\inst1|counter[25]~85\ $ (GND))) # (!\inst1|counter\(26) & (!\inst1|counter[25]~85\ & VCC))
-- \inst1|counter[26]~87\ = CARRY((\inst1|counter\(26) & !\inst1|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(26),
	datad => VCC,
	cin => \inst1|counter[25]~85\,
	combout => \inst1|counter[26]~86_combout\,
	cout => \inst1|counter[26]~87\);

-- Location: FF_X45_Y28_N23
\inst1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[26]~86_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(26));

-- Location: LCCOMB_X45_Y28_N24
\inst1|counter[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[27]~88_combout\ = (\inst1|counter\(27) & (!\inst1|counter[26]~87\)) # (!\inst1|counter\(27) & ((\inst1|counter[26]~87\) # (GND)))
-- \inst1|counter[27]~89\ = CARRY((!\inst1|counter[26]~87\) # (!\inst1|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(27),
	datad => VCC,
	cin => \inst1|counter[26]~87\,
	combout => \inst1|counter[27]~88_combout\,
	cout => \inst1|counter[27]~89\);

-- Location: FF_X45_Y28_N25
\inst1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[27]~88_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(27));

-- Location: LCCOMB_X45_Y28_N26
\inst1|counter[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[28]~90_combout\ = (\inst1|counter\(28) & (\inst1|counter[27]~89\ $ (GND))) # (!\inst1|counter\(28) & (!\inst1|counter[27]~89\ & VCC))
-- \inst1|counter[28]~91\ = CARRY((\inst1|counter\(28) & !\inst1|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(28),
	datad => VCC,
	cin => \inst1|counter[27]~89\,
	combout => \inst1|counter[28]~90_combout\,
	cout => \inst1|counter[28]~91\);

-- Location: FF_X45_Y28_N27
\inst1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[28]~90_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(28));

-- Location: LCCOMB_X45_Y28_N28
\inst1|counter[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[29]~92_combout\ = (\inst1|counter\(29) & (!\inst1|counter[28]~91\)) # (!\inst1|counter\(29) & ((\inst1|counter[28]~91\) # (GND)))
-- \inst1|counter[29]~93\ = CARRY((!\inst1|counter[28]~91\) # (!\inst1|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(29),
	datad => VCC,
	cin => \inst1|counter[28]~91\,
	combout => \inst1|counter[29]~92_combout\,
	cout => \inst1|counter[29]~93\);

-- Location: FF_X45_Y28_N29
\inst1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[29]~92_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(29));

-- Location: LCCOMB_X45_Y28_N30
\inst1|counter[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[30]~94_combout\ = \inst1|counter\(30) $ (!\inst1|counter[29]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(30),
	cin => \inst1|counter[29]~93\,
	combout => \inst1|counter[30]~94_combout\);

-- Location: FF_X45_Y28_N31
\inst1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[30]~94_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(30));

-- Location: LCCOMB_X44_Y28_N26
\inst1|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~3_combout\ = (!\inst1|counter\(17) & (!\inst1|counter\(21) & (!\inst1|counter\(20) & !\inst1|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(17),
	datab => \inst1|counter\(21),
	datac => \inst1|counter\(20),
	datad => \inst1|counter\(23),
	combout => \inst1|process_0~3_combout\);

-- Location: LCCOMB_X44_Y28_N28
\inst1|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~2_combout\ = (!\inst1|counter\(16) & (!\inst1|counter\(15) & (!\inst1|counter\(12) & !\inst1|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(16),
	datab => \inst1|counter\(15),
	datac => \inst1|counter\(12),
	datad => \inst1|counter\(13),
	combout => \inst1|process_0~2_combout\);

-- Location: LCCOMB_X44_Y28_N4
\inst1|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~4_combout\ = (!\inst1|counter\(25) & (!\inst1|counter\(24) & (!\inst1|counter\(26) & !\inst1|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(25),
	datab => \inst1|counter\(24),
	datac => \inst1|counter\(26),
	datad => \inst1|counter\(27),
	combout => \inst1|process_0~4_combout\);

-- Location: LCCOMB_X45_Y29_N0
\inst1|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~1_combout\ = (!\inst1|counter\(4) & (!\inst1|counter\(7) & (!\inst1|counter\(10) & !\inst1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(4),
	datab => \inst1|counter\(7),
	datac => \inst1|counter\(10),
	datad => \inst1|counter\(5),
	combout => \inst1|process_0~1_combout\);

-- Location: LCCOMB_X44_Y28_N2
\inst1|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~5_combout\ = (\inst1|process_0~3_combout\ & (\inst1|process_0~2_combout\ & (\inst1|process_0~4_combout\ & \inst1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~3_combout\,
	datab => \inst1|process_0~2_combout\,
	datac => \inst1|process_0~4_combout\,
	datad => \inst1|process_0~1_combout\,
	combout => \inst1|process_0~5_combout\);

-- Location: LCCOMB_X44_Y28_N24
\inst1|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~6_combout\ = (!\inst1|counter\(30) & (!\inst1|counter\(29) & (!\inst1|counter\(28) & \inst1|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(30),
	datab => \inst1|counter\(29),
	datac => \inst1|counter\(28),
	datad => \inst1|process_0~5_combout\,
	combout => \inst1|process_0~6_combout\);

-- Location: LCCOMB_X44_Y28_N6
\inst1|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~11_combout\ = (\inst1|process_0~10_combout\ & (\inst1|process_0~8_combout\ & (\inst1|process_0~7_combout\ & \inst1|process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~10_combout\,
	datab => \inst1|process_0~8_combout\,
	datac => \inst1|process_0~7_combout\,
	datad => \inst1|process_0~6_combout\,
	combout => \inst1|process_0~11_combout\);

-- Location: LCCOMB_X44_Y28_N14
\inst1|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|state~9_combout\ = (\inst1|lineCount\(1) & (\inst1|lineCount\(0) & !\inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datac => \inst1|lineCount\(0),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|state~9_combout\);

-- Location: LCCOMB_X44_Y29_N30
\inst1|counter[21]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[21]~41_combout\ = ((!\inst1|counter\(2) & ((!\inst1|counter\(0)) # (!\inst1|counter\(1))))) # (!\inst1|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datab => \inst1|counter\(3),
	datac => \inst1|counter\(2),
	datad => \inst1|counter\(0),
	combout => \inst1|counter[21]~41_combout\);

-- Location: LCCOMB_X44_Y28_N0
\inst1|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~1_combout\ = (!\inst1|counter\(22) & (!\inst1|counter\(19) & (!\inst1|counter\(14) & !\inst1|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(22),
	datab => \inst1|counter\(19),
	datac => \inst1|counter\(14),
	datad => \inst1|counter\(18),
	combout => \inst1|process_1~1_combout\);

-- Location: LCCOMB_X44_Y28_N30
\inst1|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~0_combout\ = (!\inst1|counter\(8) & (!\inst1|counter\(6) & (!\inst1|counter\(11) & !\inst1|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(8),
	datab => \inst1|counter\(6),
	datac => \inst1|counter\(11),
	datad => \inst1|counter\(9),
	combout => \inst1|process_1~0_combout\);

-- Location: LCCOMB_X44_Y28_N10
\inst1|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~2_combout\ = (\inst1|process_1~1_combout\ & (\inst1|process_1~0_combout\ & \inst1|process_0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|process_1~1_combout\,
	datac => \inst1|process_1~0_combout\,
	datad => \inst1|process_0~6_combout\,
	combout => \inst1|process_1~2_combout\);

-- Location: LCCOMB_X44_Y28_N20
\inst1|counter[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[21]~42_combout\ = (\inst1|Equal0~0_combout\ & (((\inst1|counter[21]~41_combout\ & \inst1|process_1~2_combout\)) # (!\inst2|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter[21]~41_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst2|state.ready~q\,
	datad => \inst1|process_1~2_combout\,
	combout => \inst1|counter[21]~42_combout\);

-- Location: LCCOMB_X44_Y28_N16
\inst1|counter[21]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[21]~43_combout\ = (\inst1|state.update~q\ & (\inst1|process_0~11_combout\)) # (!\inst1|state.update~q\ & (((!\inst1|state~9_combout\ & !\inst1|counter[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~11_combout\,
	datab => \inst1|state~9_combout\,
	datac => \inst1|state.update~q\,
	datad => \inst1|counter[21]~42_combout\,
	combout => \inst1|counter[21]~43_combout\);

-- Location: FF_X45_Y29_N3
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[0]~31_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: FF_X45_Y29_N5
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[1]~33_combout\,
	sclr => \inst1|counter[21]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LCCOMB_X44_Y29_N22
\inst1|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~3_combout\ = (\inst1|counter\(1) & (!\inst1|counter\(3) & ((\inst1|counter\(2)) # (\inst1|counter\(0))))) # (!\inst1|counter\(1) & (\inst1|counter\(2) $ ((\inst1|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datab => \inst1|counter\(2),
	datac => \inst1|counter\(3),
	datad => \inst1|counter\(0),
	combout => \inst1|process_1~3_combout\);

-- Location: LCCOMB_X44_Y29_N8
\inst1|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~4_combout\ = ((\inst1|state.pause~q\) # (!\inst1|process_1~2_combout\)) # (!\inst1|process_1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~3_combout\,
	datac => \inst1|process_1~2_combout\,
	datad => \inst1|state.pause~q\,
	combout => \inst1|process_1~4_combout\);

-- Location: FF_X44_Y29_N9
\inst1|lcd_write_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|process_1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_write_n~q\);

-- Location: LCCOMB_X46_Y31_N28
\inst2|process_0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~22_combout\ = (!\inst1|lcd_write_n~q\ & \inst2|state.ready~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|lcd_write_n~q\,
	datad => \inst2|state.ready~q\,
	combout => \inst2|process_0~22_combout\);

-- Location: FF_X49_Y31_N25
\inst2|state.sendingAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst2|process_0~22_combout\,
	sload => VCC,
	ena => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.sendingAddress~q\);

-- Location: LCCOMB_X48_Y31_N0
\inst2|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~25_combout\ = (\inst2|process_0~21_combout\ & (((!\inst2|state~33_combout\ & \inst2|state.init3~q\)) # (!\inst2|state~22_combout\))) # (!\inst2|process_0~21_combout\ & (!\inst2|state~33_combout\ & (\inst2|state.init3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~21_combout\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.init3~q\,
	datad => \inst2|state~22_combout\,
	combout => \inst2|state~25_combout\);

-- Location: FF_X48_Y31_N1
\inst2|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init3~q\);

-- Location: LCCOMB_X49_Y31_N4
\inst2|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~4_combout\ = (!\inst2|counter\(14) & (\inst2|counter\(3) & (!\inst2|counter\(6) & !\inst2|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(14),
	datab => \inst2|counter\(3),
	datac => \inst2|counter\(6),
	datad => \inst2|counter\(4),
	combout => \inst2|Equal6~4_combout\);

-- Location: LCCOMB_X49_Y31_N30
\inst2|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~3_combout\ = (!\inst2|counter\(13) & (!\inst2|counter\(16) & (!\inst2|counter\(18) & !\inst2|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(13),
	datab => \inst2|counter\(16),
	datac => \inst2|counter\(18),
	datad => \inst2|counter\(17),
	combout => \inst2|Equal6~3_combout\);

-- Location: LCCOMB_X49_Y31_N0
\inst2|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~2_combout\ = (!\inst2|counter\(11) & (!\inst2|counter\(22) & !\inst2|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(11),
	datac => \inst2|counter\(22),
	datad => \inst2|counter\(19),
	combout => \inst2|Equal6~2_combout\);

-- Location: LCCOMB_X49_Y31_N14
\inst2|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~5_combout\ = (!\inst2|counter\(15) & (\inst2|Equal6~4_combout\ & (\inst2|Equal6~3_combout\ & \inst2|Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(15),
	datab => \inst2|Equal6~4_combout\,
	datac => \inst2|Equal6~3_combout\,
	datad => \inst2|Equal6~2_combout\,
	combout => \inst2|Equal6~5_combout\);

-- Location: LCCOMB_X49_Y31_N20
\inst2|Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~7_combout\ = (\inst2|counter\(9) & (\inst2|counter\(12) & (\inst2|Equal6~5_combout\ & \inst2|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datab => \inst2|counter\(12),
	datac => \inst2|Equal6~5_combout\,
	datad => \inst2|Equal5~3_combout\,
	combout => \inst2|Equal6~7_combout\);

-- Location: LCCOMB_X49_Y31_N6
\inst2|Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~8_combout\ = (!\inst2|counter\(5) & (\inst2|counter\(12) & (\inst2|counter\(7) & \inst2|Equal6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datab => \inst2|counter\(12),
	datac => \inst2|counter\(7),
	datad => \inst2|Equal6~7_combout\,
	combout => \inst2|Equal6~8_combout\);

-- Location: LCCOMB_X47_Y31_N18
\inst2|state~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~26_combout\ = (\inst2|Equal6~8_combout\ & (!\inst2|process_0~22_combout\ & ((!\inst2|state~17_combout\) # (!\inst2|state~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal6~8_combout\,
	datab => \inst2|process_0~22_combout\,
	datac => \inst2|state~21_combout\,
	datad => \inst2|state~17_combout\,
	combout => \inst2|state~26_combout\);

-- Location: LCCOMB_X47_Y31_N26
\inst2|state~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~27_combout\ = (\inst2|state.init3~q\ & ((\inst2|state~26_combout\) # ((!\inst2|state~33_combout\ & \inst2|state.init4~q\)))) # (!\inst2|state.init3~q\ & (!\inst2|state~33_combout\ & (\inst2|state.init4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init3~q\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.init4~q\,
	datad => \inst2|state~26_combout\,
	combout => \inst2|state~27_combout\);

-- Location: FF_X47_Y31_N27
\inst2|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init4~q\);

-- Location: LCCOMB_X47_Y31_N6
\inst2|state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~31_combout\ = (\inst2|state.init4~q\ & ((\inst2|state~26_combout\) # ((!\inst2|state~33_combout\ & \inst2|state.init5~q\)))) # (!\inst2|state.init4~q\ & (!\inst2|state~33_combout\ & (\inst2|state.init5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init4~q\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.init5~q\,
	datad => \inst2|state~26_combout\,
	combout => \inst2|state~31_combout\);

-- Location: FF_X47_Y31_N7
\inst2|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init5~q\);

-- Location: LCCOMB_X47_Y31_N24
\inst2|state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~30_combout\ = (\inst2|state.init5~q\ & ((\inst2|state~26_combout\) # ((!\inst2|state~33_combout\ & \inst2|state.init6~q\)))) # (!\inst2|state.init5~q\ & (!\inst2|state~33_combout\ & (\inst2|state.init6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init5~q\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.init6~q\,
	datad => \inst2|state~26_combout\,
	combout => \inst2|state~30_combout\);

-- Location: FF_X47_Y31_N25
\inst2|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init6~q\);

-- Location: LCCOMB_X47_Y31_N8
\inst2|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~6_combout\ = (\inst2|counter\(16) & (\inst2|counter\(18) & \inst2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(16),
	datac => \inst2|counter\(18),
	datad => \inst2|counter\(17),
	combout => \inst2|Equal5~6_combout\);

-- Location: LCCOMB_X49_Y31_N16
\inst2|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~0_combout\ = (!\inst2|counter\(14) & !\inst2|counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counter\(14),
	datad => \inst2|counter\(12),
	combout => \inst2|Equal5~0_combout\);

-- Location: LCCOMB_X49_Y31_N26
\inst2|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~1_combout\ = (!\inst2|counter\(9) & (!\inst2|counter\(7) & (!\inst2|counter\(6) & \inst2|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(9),
	datab => \inst2|counter\(7),
	datac => \inst2|counter\(6),
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|Equal5~1_combout\);

-- Location: LCCOMB_X49_Y31_N12
\inst2|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~4_combout\ = (!\inst2|counter\(4) & (\inst2|counter\(13) & (\inst2|counter\(15) & !\inst2|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|counter\(13),
	datac => \inst2|counter\(15),
	datad => \inst2|counter\(3),
	combout => \inst2|Equal5~4_combout\);

-- Location: LCCOMB_X49_Y31_N24
\inst2|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~5_combout\ = (\inst2|counter\(5) & (\inst2|Equal6~2_combout\ & \inst2|Equal5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datab => \inst2|Equal6~2_combout\,
	datad => \inst2|Equal5~4_combout\,
	combout => \inst2|Equal5~5_combout\);

-- Location: LCCOMB_X48_Y31_N20
\inst2|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal5~7_combout\ = (\inst2|Equal5~6_combout\ & (\inst2|Equal5~1_combout\ & (\inst2|Equal5~3_combout\ & \inst2|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~6_combout\,
	datab => \inst2|Equal5~1_combout\,
	datac => \inst2|Equal5~3_combout\,
	datad => \inst2|Equal5~5_combout\,
	combout => \inst2|Equal5~7_combout\);

-- Location: LCCOMB_X47_Y31_N0
\inst2|process_0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~25_combout\ = (\inst2|state.init6~q\ & \inst2|Equal5~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.init6~q\,
	datac => \inst2|Equal5~7_combout\,
	combout => \inst2|process_0~25_combout\);

-- Location: LCCOMB_X48_Y31_N22
\inst2|state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~32_combout\ = (\inst2|process_0~25_combout\ & (((!\inst2|state~33_combout\ & \inst2|state.init7~q\)) # (!\inst2|state~22_combout\))) # (!\inst2|process_0~25_combout\ & (!\inst2|state~33_combout\ & (\inst2|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~25_combout\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.init7~q\,
	datad => \inst2|state~22_combout\,
	combout => \inst2|state~32_combout\);

-- Location: FF_X48_Y31_N23
\inst2|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init7~q\);

-- Location: LCCOMB_X47_Y31_N16
\inst2|process_0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~23_combout\ = (\inst2|state.sendingAddress~q\ & \inst2|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|state.sendingAddress~q\,
	datad => \inst2|Equal6~8_combout\,
	combout => \inst2|process_0~23_combout\);

-- Location: LCCOMB_X47_Y31_N2
\inst2|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~24_combout\ = (\inst2|process_0~23_combout\ & (((!\inst2|state~33_combout\ & \inst2|state.sendingData~q\)) # (!\inst2|state~22_combout\))) # (!\inst2|process_0~23_combout\ & (!\inst2|state~33_combout\ & (\inst2|state.sendingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~23_combout\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.sendingData~q\,
	datad => \inst2|state~22_combout\,
	combout => \inst2|state~24_combout\);

-- Location: FF_X47_Y31_N3
\inst2|state.sendingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.sendingData~q\);

-- Location: LCCOMB_X49_Y31_N8
\inst2|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~17_combout\ = ((!\inst2|state.sendingAddress~q\ & (!\inst2|state.init7~q\ & !\inst2|state.sendingData~q\))) # (!\inst2|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|state.init7~q\,
	datac => \inst2|state.sendingData~q\,
	datad => \inst2|Equal6~8_combout\,
	combout => \inst2|state~17_combout\);

-- Location: LCCOMB_X48_Y31_N18
\inst2|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~22_combout\ = (\inst2|state.ready~q\ & (((\inst2|state~17_combout\ & \inst2|state~21_combout\)) # (!\inst1|lcd_write_n~q\))) # (!\inst2|state.ready~q\ & (((\inst2|state~17_combout\ & \inst2|state~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ready~q\,
	datab => \inst1|lcd_write_n~q\,
	datac => \inst2|state~17_combout\,
	datad => \inst2|state~21_combout\,
	combout => \inst2|state~22_combout\);

-- Location: LCCOMB_X47_Y31_N28
\inst2|state~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~28_combout\ = (\inst2|process_0~19_combout\ & (((!\inst2|state~33_combout\ & \inst2|state.init1~q\)) # (!\inst2|state~22_combout\))) # (!\inst2|process_0~19_combout\ & (!\inst2|state~33_combout\ & (\inst2|state.init1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~19_combout\,
	datab => \inst2|state~33_combout\,
	datac => \inst2|state.init1~q\,
	datad => \inst2|state~22_combout\,
	combout => \inst2|state~28_combout\);

-- Location: FF_X47_Y31_N29
\inst2|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init1~q\);

-- Location: LCCOMB_X48_Y31_N6
\inst2|process_0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~24_combout\ = (\inst2|state.init1~q\ & \inst2|Equal5~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.init1~q\,
	datad => \inst2|Equal5~7_combout\,
	combout => \inst2|process_0~24_combout\);

-- Location: LCCOMB_X49_Y31_N18
\inst2|state~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~29_combout\ = (\inst2|state~33_combout\ & (\inst2|process_0~24_combout\ & ((!\inst2|state~22_combout\)))) # (!\inst2|state~33_combout\ & ((\inst2|state.init2~q\) # ((\inst2|process_0~24_combout\ & !\inst2|state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~33_combout\,
	datab => \inst2|process_0~24_combout\,
	datac => \inst2|state.init2~q\,
	datad => \inst2|state~22_combout\,
	combout => \inst2|state~29_combout\);

-- Location: FF_X49_Y31_N19
\inst2|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.init2~q\);

-- Location: LCCOMB_X48_Y31_N10
\inst2|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~20_combout\ = (\inst2|counter\(4) & (\inst2|state.init2~q\ & (\inst2|counter\(15) & \inst2|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datab => \inst2|state.init2~q\,
	datac => \inst2|counter\(15),
	datad => \inst2|counter\(14),
	combout => \inst2|process_0~20_combout\);

-- Location: LCCOMB_X48_Y31_N8
\inst2|Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal6~6_combout\ = (!\inst2|counter\(22) & (!\inst2|counter\(11) & (\inst2|Equal6~3_combout\ & !\inst2|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(22),
	datab => \inst2|counter\(11),
	datac => \inst2|Equal6~3_combout\,
	datad => \inst2|counter\(19),
	combout => \inst2|Equal6~6_combout\);

-- Location: LCCOMB_X48_Y31_N28
\inst2|process_0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~21_combout\ = (\inst2|process_0~20_combout\ & (\inst2|Equal6~6_combout\ & (\inst2|process_0~26_combout\ & \inst2|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~20_combout\,
	datab => \inst2|Equal6~6_combout\,
	datac => \inst2|process_0~26_combout\,
	datad => \inst2|Equal5~3_combout\,
	combout => \inst2|process_0~21_combout\);

-- Location: LCCOMB_X47_Y31_N10
\inst2|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~19_combout\ = ((!\inst2|state.init6~q\ & !\inst2|state.init1~q\)) # (!\inst2|Equal5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|state.init6~q\,
	datac => \inst2|Equal5~6_combout\,
	datad => \inst2|state.init1~q\,
	combout => \inst2|state~19_combout\);

-- Location: LCCOMB_X49_Y31_N22
\inst2|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~20_combout\ = (((\inst2|state~19_combout\) # (!\inst2|Equal5~3_combout\)) # (!\inst2|Equal5~5_combout\)) # (!\inst2|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~1_combout\,
	datab => \inst2|Equal5~5_combout\,
	datac => \inst2|Equal5~3_combout\,
	datad => \inst2|state~19_combout\,
	combout => \inst2|state~20_combout\);

-- Location: LCCOMB_X49_Y31_N2
\inst2|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~18_combout\ = ((!\inst2|state.init3~q\ & (!\inst2|state.init5~q\ & !\inst2|state.init4~q\))) # (!\inst2|Equal6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init3~q\,
	datab => \inst2|state.init5~q\,
	datac => \inst2|state.init4~q\,
	datad => \inst2|Equal6~8_combout\,
	combout => \inst2|state~18_combout\);

-- Location: LCCOMB_X49_Y31_N28
\inst2|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~21_combout\ = (!\inst2|process_0~19_combout\ & (!\inst2|process_0~21_combout\ & (\inst2|state~20_combout\ & \inst2|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~19_combout\,
	datab => \inst2|process_0~21_combout\,
	datac => \inst2|state~20_combout\,
	datad => \inst2|state~18_combout\,
	combout => \inst2|state~21_combout\);

-- Location: LCCOMB_X47_Y31_N22
\inst2|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~34_combout\ = (\inst2|state.ready~q\ & (\inst1|lcd_write_n~q\ & (\inst2|state~21_combout\ & \inst2|state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ready~q\,
	datab => \inst1|lcd_write_n~q\,
	datac => \inst2|state~21_combout\,
	datad => \inst2|state~17_combout\,
	combout => \inst2|state~34_combout\);

-- Location: LCCOMB_X47_Y31_N12
\inst2|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~23_combout\ = (\inst2|state~34_combout\) # ((\inst2|state~21_combout\ & (!\inst2|process_0~23_combout\ & !\inst2|state~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state~21_combout\,
	datab => \inst2|process_0~23_combout\,
	datac => \inst2|state~34_combout\,
	datad => \inst2|state~22_combout\,
	combout => \inst2|state~23_combout\);

-- Location: FF_X47_Y31_N13
\inst2|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|state.ready~q\);

-- Location: LCCOMB_X49_Y31_N10
\inst2|state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|state~33_combout\ = (((\inst2|state.ready~q\ & !\inst1|lcd_write_n~q\)) # (!\inst2|state~21_combout\)) # (!\inst2|state~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ready~q\,
	datab => \inst1|lcd_write_n~q\,
	datac => \inst2|state~17_combout\,
	datad => \inst2|state~21_combout\,
	combout => \inst2|state~33_combout\);

-- Location: FF_X50_Y31_N3
\inst2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[0]~31_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(0));

-- Location: LCCOMB_X50_Y31_N4
\inst2|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[1]~33_combout\ = (\inst2|counter\(1) & (!\inst2|counter[0]~32\)) # (!\inst2|counter\(1) & ((\inst2|counter[0]~32\) # (GND)))
-- \inst2|counter[1]~34\ = CARRY((!\inst2|counter[0]~32\) # (!\inst2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(1),
	datad => VCC,
	cin => \inst2|counter[0]~32\,
	combout => \inst2|counter[1]~33_combout\,
	cout => \inst2|counter[1]~34\);

-- Location: FF_X50_Y31_N5
\inst2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[1]~33_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(1));

-- Location: LCCOMB_X50_Y31_N6
\inst2|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[2]~35_combout\ = (\inst2|counter\(2) & (\inst2|counter[1]~34\ $ (GND))) # (!\inst2|counter\(2) & (!\inst2|counter[1]~34\ & VCC))
-- \inst2|counter[2]~36\ = CARRY((\inst2|counter\(2) & !\inst2|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datad => VCC,
	cin => \inst2|counter[1]~34\,
	combout => \inst2|counter[2]~35_combout\,
	cout => \inst2|counter[2]~36\);

-- Location: FF_X50_Y31_N7
\inst2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[2]~35_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(2));

-- Location: LCCOMB_X50_Y31_N8
\inst2|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[3]~37_combout\ = (\inst2|counter\(3) & (!\inst2|counter[2]~36\)) # (!\inst2|counter\(3) & ((\inst2|counter[2]~36\) # (GND)))
-- \inst2|counter[3]~38\ = CARRY((!\inst2|counter[2]~36\) # (!\inst2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|counter\(3),
	datad => VCC,
	cin => \inst2|counter[2]~36\,
	combout => \inst2|counter[3]~37_combout\,
	cout => \inst2|counter[3]~38\);

-- Location: FF_X50_Y31_N9
\inst2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[3]~37_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(3));

-- Location: LCCOMB_X50_Y31_N10
\inst2|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counter[4]~39_combout\ = (\inst2|counter\(4) & (\inst2|counter[3]~38\ $ (GND))) # (!\inst2|counter\(4) & (!\inst2|counter[3]~38\ & VCC))
-- \inst2|counter[4]~40\ = CARRY((\inst2|counter\(4) & !\inst2|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(4),
	datad => VCC,
	cin => \inst2|counter[3]~38\,
	combout => \inst2|counter[4]~39_combout\,
	cout => \inst2|counter[4]~40\);

-- Location: FF_X50_Y31_N11
\inst2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[4]~39_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(4));

-- Location: FF_X50_Y31_N13
\inst2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|counter[5]~41_combout\,
	sclr => \inst2|state~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counter\(5));

-- Location: LCCOMB_X47_Y31_N30
\inst2|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~0_combout\ = (!\inst2|counter\(8) & (!\inst2|state.ready~q\ & (\inst2|Equal6~6_combout\ & !\inst2|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(8),
	datab => \inst2|state.ready~q\,
	datac => \inst2|Equal6~6_combout\,
	datad => \inst2|counter\(15),
	combout => \inst2|e~0_combout\);

-- Location: LCCOMB_X51_Y31_N4
\inst2|e~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~4_combout\ = (\inst2|e~1_combout\ & (\inst2|e~3_combout\ & \inst2|e~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|e~1_combout\,
	datab => \inst2|e~3_combout\,
	datad => \inst2|e~2_combout\,
	combout => \inst2|e~4_combout\);

-- Location: LCCOMB_X47_Y31_N4
\inst2|e~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~5_combout\ = (\inst2|e~0_combout\ & (\inst2|e~4_combout\ & \inst2|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|e~0_combout\,
	datac => \inst2|e~4_combout\,
	datad => \inst2|Equal5~1_combout\,
	combout => \inst2|e~5_combout\);

-- Location: LCCOMB_X48_Y31_N12
\inst2|e~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~6_combout\ = (\inst2|counter\(3)) # ((\inst2|counter\(2) & ((\inst2|counter\(1)) # (\inst2|counter\(5)))) # (!\inst2|counter\(2) & (\inst2|counter\(1) & \inst2|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(2),
	datab => \inst2|counter\(1),
	datac => \inst2|counter\(5),
	datad => \inst2|counter\(3),
	combout => \inst2|e~6_combout\);

-- Location: LCCOMB_X48_Y31_N30
\inst2|e~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|e~7_combout\ = (\inst2|e~5_combout\ & ((\inst2|counter\(5) & ((!\inst2|e~6_combout\) # (!\inst2|counter\(4)))) # (!\inst2|counter\(5) & ((\inst2|counter\(4)) # (\inst2|e~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counter\(5),
	datab => \inst2|e~5_combout\,
	datac => \inst2|counter\(4),
	datad => \inst2|e~6_combout\,
	combout => \inst2|e~7_combout\);

-- Location: LCCOMB_X46_Y31_N24
\inst2|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_1~0_combout\ = (\inst2|state.ready~q\) # (\inst2|state.sendingData~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.ready~q\,
	datad => \inst2|state.sendingData~q\,
	combout => \inst2|process_1~0_combout\);

-- Location: FF_X45_Y31_N27
\inst1|lcd_posY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lineCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posY\(0));

-- Location: FF_X45_Y31_N9
\inst2|addressStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lcd_posY\(0),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(6));

-- Location: LCCOMB_X46_Y33_N2
\inst1|display_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[0]~31_combout\ = \inst1|display_counter\(0) $ (VCC)
-- \inst1|display_counter[0]~32\ = CARRY(\inst1|display_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(0),
	datad => VCC,
	combout => \inst1|display_counter[0]~31_combout\,
	cout => \inst1|display_counter[0]~32\);

-- Location: LCCOMB_X47_Y33_N12
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X46_Y33_N3
\inst1|display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[0]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(0));

-- Location: LCCOMB_X46_Y33_N4
\inst1|display_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[1]~33_combout\ = (\inst1|display_counter\(1) & (!\inst1|display_counter[0]~32\)) # (!\inst1|display_counter\(1) & ((\inst1|display_counter[0]~32\) # (GND)))
-- \inst1|display_counter[1]~34\ = CARRY((!\inst1|display_counter[0]~32\) # (!\inst1|display_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(1),
	datad => VCC,
	cin => \inst1|display_counter[0]~32\,
	combout => \inst1|display_counter[1]~33_combout\,
	cout => \inst1|display_counter[1]~34\);

-- Location: FF_X46_Y33_N5
\inst1|display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[1]~33_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(1));

-- Location: LCCOMB_X46_Y33_N6
\inst1|display_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[2]~35_combout\ = (\inst1|display_counter\(2) & (\inst1|display_counter[1]~34\ $ (GND))) # (!\inst1|display_counter\(2) & (!\inst1|display_counter[1]~34\ & VCC))
-- \inst1|display_counter[2]~36\ = CARRY((\inst1|display_counter\(2) & !\inst1|display_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(2),
	datad => VCC,
	cin => \inst1|display_counter[1]~34\,
	combout => \inst1|display_counter[2]~35_combout\,
	cout => \inst1|display_counter[2]~36\);

-- Location: FF_X46_Y33_N7
\inst1|display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[2]~35_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(2));

-- Location: LCCOMB_X46_Y33_N8
\inst1|display_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[3]~37_combout\ = (\inst1|display_counter\(3) & (!\inst1|display_counter[2]~36\)) # (!\inst1|display_counter\(3) & ((\inst1|display_counter[2]~36\) # (GND)))
-- \inst1|display_counter[3]~38\ = CARRY((!\inst1|display_counter[2]~36\) # (!\inst1|display_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(3),
	datad => VCC,
	cin => \inst1|display_counter[2]~36\,
	combout => \inst1|display_counter[3]~37_combout\,
	cout => \inst1|display_counter[3]~38\);

-- Location: FF_X46_Y33_N9
\inst1|display_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[3]~37_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(3));

-- Location: LCCOMB_X46_Y33_N10
\inst1|display_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[4]~39_combout\ = (\inst1|display_counter\(4) & (\inst1|display_counter[3]~38\ $ (GND))) # (!\inst1|display_counter\(4) & (!\inst1|display_counter[3]~38\ & VCC))
-- \inst1|display_counter[4]~40\ = CARRY((\inst1|display_counter\(4) & !\inst1|display_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(4),
	datad => VCC,
	cin => \inst1|display_counter[3]~38\,
	combout => \inst1|display_counter[4]~39_combout\,
	cout => \inst1|display_counter[4]~40\);

-- Location: FF_X46_Y33_N11
\inst1|display_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[4]~39_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(4));

-- Location: LCCOMB_X46_Y33_N12
\inst1|display_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[5]~41_combout\ = (\inst1|display_counter\(5) & (!\inst1|display_counter[4]~40\)) # (!\inst1|display_counter\(5) & ((\inst1|display_counter[4]~40\) # (GND)))
-- \inst1|display_counter[5]~42\ = CARRY((!\inst1|display_counter[4]~40\) # (!\inst1|display_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(5),
	datad => VCC,
	cin => \inst1|display_counter[4]~40\,
	combout => \inst1|display_counter[5]~41_combout\,
	cout => \inst1|display_counter[5]~42\);

-- Location: FF_X46_Y33_N13
\inst1|display_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[5]~41_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(5));

-- Location: LCCOMB_X46_Y33_N14
\inst1|display_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[6]~43_combout\ = (\inst1|display_counter\(6) & (\inst1|display_counter[5]~42\ $ (GND))) # (!\inst1|display_counter\(6) & (!\inst1|display_counter[5]~42\ & VCC))
-- \inst1|display_counter[6]~44\ = CARRY((\inst1|display_counter\(6) & !\inst1|display_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(6),
	datad => VCC,
	cin => \inst1|display_counter[5]~42\,
	combout => \inst1|display_counter[6]~43_combout\,
	cout => \inst1|display_counter[6]~44\);

-- Location: FF_X46_Y33_N15
\inst1|display_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[6]~43_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(6));

-- Location: LCCOMB_X46_Y33_N16
\inst1|display_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[7]~45_combout\ = (\inst1|display_counter\(7) & (!\inst1|display_counter[6]~44\)) # (!\inst1|display_counter\(7) & ((\inst1|display_counter[6]~44\) # (GND)))
-- \inst1|display_counter[7]~46\ = CARRY((!\inst1|display_counter[6]~44\) # (!\inst1|display_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(7),
	datad => VCC,
	cin => \inst1|display_counter[6]~44\,
	combout => \inst1|display_counter[7]~45_combout\,
	cout => \inst1|display_counter[7]~46\);

-- Location: FF_X46_Y33_N17
\inst1|display_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[7]~45_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(7));

-- Location: LCCOMB_X46_Y33_N18
\inst1|display_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[8]~47_combout\ = (\inst1|display_counter\(8) & (\inst1|display_counter[7]~46\ $ (GND))) # (!\inst1|display_counter\(8) & (!\inst1|display_counter[7]~46\ & VCC))
-- \inst1|display_counter[8]~48\ = CARRY((\inst1|display_counter\(8) & !\inst1|display_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(8),
	datad => VCC,
	cin => \inst1|display_counter[7]~46\,
	combout => \inst1|display_counter[8]~47_combout\,
	cout => \inst1|display_counter[8]~48\);

-- Location: FF_X46_Y33_N19
\inst1|display_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[8]~47_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(8));

-- Location: LCCOMB_X46_Y33_N20
\inst1|display_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[9]~49_combout\ = (\inst1|display_counter\(9) & (!\inst1|display_counter[8]~48\)) # (!\inst1|display_counter\(9) & ((\inst1|display_counter[8]~48\) # (GND)))
-- \inst1|display_counter[9]~50\ = CARRY((!\inst1|display_counter[8]~48\) # (!\inst1|display_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(9),
	datad => VCC,
	cin => \inst1|display_counter[8]~48\,
	combout => \inst1|display_counter[9]~49_combout\,
	cout => \inst1|display_counter[9]~50\);

-- Location: FF_X46_Y33_N21
\inst1|display_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[9]~49_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(9));

-- Location: LCCOMB_X46_Y33_N22
\inst1|display_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[10]~51_combout\ = (\inst1|display_counter\(10) & (\inst1|display_counter[9]~50\ $ (GND))) # (!\inst1|display_counter\(10) & (!\inst1|display_counter[9]~50\ & VCC))
-- \inst1|display_counter[10]~52\ = CARRY((\inst1|display_counter\(10) & !\inst1|display_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(10),
	datad => VCC,
	cin => \inst1|display_counter[9]~50\,
	combout => \inst1|display_counter[10]~51_combout\,
	cout => \inst1|display_counter[10]~52\);

-- Location: FF_X46_Y33_N23
\inst1|display_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[10]~51_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(10));

-- Location: LCCOMB_X46_Y33_N24
\inst1|display_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[11]~53_combout\ = (\inst1|display_counter\(11) & (!\inst1|display_counter[10]~52\)) # (!\inst1|display_counter\(11) & ((\inst1|display_counter[10]~52\) # (GND)))
-- \inst1|display_counter[11]~54\ = CARRY((!\inst1|display_counter[10]~52\) # (!\inst1|display_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(11),
	datad => VCC,
	cin => \inst1|display_counter[10]~52\,
	combout => \inst1|display_counter[11]~53_combout\,
	cout => \inst1|display_counter[11]~54\);

-- Location: FF_X46_Y33_N25
\inst1|display_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[11]~53_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(11));

-- Location: LCCOMB_X46_Y33_N26
\inst1|display_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[12]~55_combout\ = (\inst1|display_counter\(12) & (\inst1|display_counter[11]~54\ $ (GND))) # (!\inst1|display_counter\(12) & (!\inst1|display_counter[11]~54\ & VCC))
-- \inst1|display_counter[12]~56\ = CARRY((\inst1|display_counter\(12) & !\inst1|display_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(12),
	datad => VCC,
	cin => \inst1|display_counter[11]~54\,
	combout => \inst1|display_counter[12]~55_combout\,
	cout => \inst1|display_counter[12]~56\);

-- Location: FF_X46_Y33_N27
\inst1|display_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[12]~55_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(12));

-- Location: LCCOMB_X46_Y33_N28
\inst1|display_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[13]~57_combout\ = (\inst1|display_counter\(13) & (!\inst1|display_counter[12]~56\)) # (!\inst1|display_counter\(13) & ((\inst1|display_counter[12]~56\) # (GND)))
-- \inst1|display_counter[13]~58\ = CARRY((!\inst1|display_counter[12]~56\) # (!\inst1|display_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(13),
	datad => VCC,
	cin => \inst1|display_counter[12]~56\,
	combout => \inst1|display_counter[13]~57_combout\,
	cout => \inst1|display_counter[13]~58\);

-- Location: FF_X46_Y33_N29
\inst1|display_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[13]~57_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(13));

-- Location: LCCOMB_X46_Y33_N30
\inst1|display_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[14]~59_combout\ = (\inst1|display_counter\(14) & (\inst1|display_counter[13]~58\ $ (GND))) # (!\inst1|display_counter\(14) & (!\inst1|display_counter[13]~58\ & VCC))
-- \inst1|display_counter[14]~60\ = CARRY((\inst1|display_counter\(14) & !\inst1|display_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(14),
	datad => VCC,
	cin => \inst1|display_counter[13]~58\,
	combout => \inst1|display_counter[14]~59_combout\,
	cout => \inst1|display_counter[14]~60\);

-- Location: FF_X46_Y33_N31
\inst1|display_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[14]~59_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(14));

-- Location: LCCOMB_X46_Y32_N0
\inst1|display_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[15]~61_combout\ = (\inst1|display_counter\(15) & (!\inst1|display_counter[14]~60\)) # (!\inst1|display_counter\(15) & ((\inst1|display_counter[14]~60\) # (GND)))
-- \inst1|display_counter[15]~62\ = CARRY((!\inst1|display_counter[14]~60\) # (!\inst1|display_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(15),
	datad => VCC,
	cin => \inst1|display_counter[14]~60\,
	combout => \inst1|display_counter[15]~61_combout\,
	cout => \inst1|display_counter[15]~62\);

-- Location: FF_X46_Y32_N1
\inst1|display_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[15]~61_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(15));

-- Location: LCCOMB_X46_Y32_N2
\inst1|display_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[16]~63_combout\ = (\inst1|display_counter\(16) & (\inst1|display_counter[15]~62\ $ (GND))) # (!\inst1|display_counter\(16) & (!\inst1|display_counter[15]~62\ & VCC))
-- \inst1|display_counter[16]~64\ = CARRY((\inst1|display_counter\(16) & !\inst1|display_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(16),
	datad => VCC,
	cin => \inst1|display_counter[15]~62\,
	combout => \inst1|display_counter[16]~63_combout\,
	cout => \inst1|display_counter[16]~64\);

-- Location: FF_X46_Y32_N3
\inst1|display_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[16]~63_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(16));

-- Location: LCCOMB_X46_Y32_N4
\inst1|display_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[17]~65_combout\ = (\inst1|display_counter\(17) & (!\inst1|display_counter[16]~64\)) # (!\inst1|display_counter\(17) & ((\inst1|display_counter[16]~64\) # (GND)))
-- \inst1|display_counter[17]~66\ = CARRY((!\inst1|display_counter[16]~64\) # (!\inst1|display_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(17),
	datad => VCC,
	cin => \inst1|display_counter[16]~64\,
	combout => \inst1|display_counter[17]~65_combout\,
	cout => \inst1|display_counter[17]~66\);

-- Location: FF_X46_Y32_N5
\inst1|display_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[17]~65_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(17));

-- Location: LCCOMB_X46_Y32_N6
\inst1|display_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[18]~67_combout\ = (\inst1|display_counter\(18) & (\inst1|display_counter[17]~66\ $ (GND))) # (!\inst1|display_counter\(18) & (!\inst1|display_counter[17]~66\ & VCC))
-- \inst1|display_counter[18]~68\ = CARRY((\inst1|display_counter\(18) & !\inst1|display_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(18),
	datad => VCC,
	cin => \inst1|display_counter[17]~66\,
	combout => \inst1|display_counter[18]~67_combout\,
	cout => \inst1|display_counter[18]~68\);

-- Location: FF_X46_Y32_N7
\inst1|display_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[18]~67_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(18));

-- Location: LCCOMB_X46_Y32_N8
\inst1|display_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[19]~69_combout\ = (\inst1|display_counter\(19) & (!\inst1|display_counter[18]~68\)) # (!\inst1|display_counter\(19) & ((\inst1|display_counter[18]~68\) # (GND)))
-- \inst1|display_counter[19]~70\ = CARRY((!\inst1|display_counter[18]~68\) # (!\inst1|display_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(19),
	datad => VCC,
	cin => \inst1|display_counter[18]~68\,
	combout => \inst1|display_counter[19]~69_combout\,
	cout => \inst1|display_counter[19]~70\);

-- Location: FF_X46_Y32_N9
\inst1|display_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[19]~69_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(19));

-- Location: LCCOMB_X46_Y32_N10
\inst1|display_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[20]~71_combout\ = (\inst1|display_counter\(20) & (\inst1|display_counter[19]~70\ $ (GND))) # (!\inst1|display_counter\(20) & (!\inst1|display_counter[19]~70\ & VCC))
-- \inst1|display_counter[20]~72\ = CARRY((\inst1|display_counter\(20) & !\inst1|display_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(20),
	datad => VCC,
	cin => \inst1|display_counter[19]~70\,
	combout => \inst1|display_counter[20]~71_combout\,
	cout => \inst1|display_counter[20]~72\);

-- Location: FF_X46_Y32_N11
\inst1|display_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[20]~71_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(20));

-- Location: LCCOMB_X46_Y32_N12
\inst1|display_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[21]~73_combout\ = (\inst1|display_counter\(21) & (!\inst1|display_counter[20]~72\)) # (!\inst1|display_counter\(21) & ((\inst1|display_counter[20]~72\) # (GND)))
-- \inst1|display_counter[21]~74\ = CARRY((!\inst1|display_counter[20]~72\) # (!\inst1|display_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(21),
	datad => VCC,
	cin => \inst1|display_counter[20]~72\,
	combout => \inst1|display_counter[21]~73_combout\,
	cout => \inst1|display_counter[21]~74\);

-- Location: FF_X46_Y32_N13
\inst1|display_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[21]~73_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(21));

-- Location: LCCOMB_X46_Y32_N14
\inst1|display_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[22]~75_combout\ = (\inst1|display_counter\(22) & (\inst1|display_counter[21]~74\ $ (GND))) # (!\inst1|display_counter\(22) & (!\inst1|display_counter[21]~74\ & VCC))
-- \inst1|display_counter[22]~76\ = CARRY((\inst1|display_counter\(22) & !\inst1|display_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(22),
	datad => VCC,
	cin => \inst1|display_counter[21]~74\,
	combout => \inst1|display_counter[22]~75_combout\,
	cout => \inst1|display_counter[22]~76\);

-- Location: FF_X46_Y32_N15
\inst1|display_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[22]~75_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(22));

-- Location: LCCOMB_X46_Y32_N16
\inst1|display_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[23]~77_combout\ = (\inst1|display_counter\(23) & (!\inst1|display_counter[22]~76\)) # (!\inst1|display_counter\(23) & ((\inst1|display_counter[22]~76\) # (GND)))
-- \inst1|display_counter[23]~78\ = CARRY((!\inst1|display_counter[22]~76\) # (!\inst1|display_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(23),
	datad => VCC,
	cin => \inst1|display_counter[22]~76\,
	combout => \inst1|display_counter[23]~77_combout\,
	cout => \inst1|display_counter[23]~78\);

-- Location: FF_X46_Y32_N17
\inst1|display_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[23]~77_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(23));

-- Location: LCCOMB_X46_Y32_N18
\inst1|display_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[24]~79_combout\ = (\inst1|display_counter\(24) & (\inst1|display_counter[23]~78\ $ (GND))) # (!\inst1|display_counter\(24) & (!\inst1|display_counter[23]~78\ & VCC))
-- \inst1|display_counter[24]~80\ = CARRY((\inst1|display_counter\(24) & !\inst1|display_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(24),
	datad => VCC,
	cin => \inst1|display_counter[23]~78\,
	combout => \inst1|display_counter[24]~79_combout\,
	cout => \inst1|display_counter[24]~80\);

-- Location: FF_X46_Y32_N19
\inst1|display_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[24]~79_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(24));

-- Location: LCCOMB_X46_Y32_N20
\inst1|display_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[25]~81_combout\ = (\inst1|display_counter\(25) & (!\inst1|display_counter[24]~80\)) # (!\inst1|display_counter\(25) & ((\inst1|display_counter[24]~80\) # (GND)))
-- \inst1|display_counter[25]~82\ = CARRY((!\inst1|display_counter[24]~80\) # (!\inst1|display_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(25),
	datad => VCC,
	cin => \inst1|display_counter[24]~80\,
	combout => \inst1|display_counter[25]~81_combout\,
	cout => \inst1|display_counter[25]~82\);

-- Location: FF_X46_Y32_N21
\inst1|display_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[25]~81_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(25));

-- Location: LCCOMB_X46_Y32_N22
\inst1|display_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[26]~83_combout\ = (\inst1|display_counter\(26) & (\inst1|display_counter[25]~82\ $ (GND))) # (!\inst1|display_counter\(26) & (!\inst1|display_counter[25]~82\ & VCC))
-- \inst1|display_counter[26]~84\ = CARRY((\inst1|display_counter\(26) & !\inst1|display_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(26),
	datad => VCC,
	cin => \inst1|display_counter[25]~82\,
	combout => \inst1|display_counter[26]~83_combout\,
	cout => \inst1|display_counter[26]~84\);

-- Location: FF_X46_Y32_N23
\inst1|display_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[26]~83_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(26));

-- Location: LCCOMB_X46_Y32_N24
\inst1|display_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[27]~85_combout\ = (\inst1|display_counter\(27) & (!\inst1|display_counter[26]~84\)) # (!\inst1|display_counter\(27) & ((\inst1|display_counter[26]~84\) # (GND)))
-- \inst1|display_counter[27]~86\ = CARRY((!\inst1|display_counter[26]~84\) # (!\inst1|display_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(27),
	datad => VCC,
	cin => \inst1|display_counter[26]~84\,
	combout => \inst1|display_counter[27]~85_combout\,
	cout => \inst1|display_counter[27]~86\);

-- Location: FF_X46_Y32_N25
\inst1|display_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[27]~85_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(27));

-- Location: LCCOMB_X46_Y32_N26
\inst1|display_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[28]~87_combout\ = (\inst1|display_counter\(28) & (\inst1|display_counter[27]~86\ $ (GND))) # (!\inst1|display_counter\(28) & (!\inst1|display_counter[27]~86\ & VCC))
-- \inst1|display_counter[28]~88\ = CARRY((\inst1|display_counter\(28) & !\inst1|display_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(28),
	datad => VCC,
	cin => \inst1|display_counter[27]~86\,
	combout => \inst1|display_counter[28]~87_combout\,
	cout => \inst1|display_counter[28]~88\);

-- Location: FF_X46_Y32_N27
\inst1|display_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[28]~87_combout\,
	asdata => VCC,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(28));

-- Location: LCCOMB_X46_Y32_N28
\inst1|display_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[29]~89_combout\ = (\inst1|display_counter\(29) & (!\inst1|display_counter[28]~88\)) # (!\inst1|display_counter\(29) & ((\inst1|display_counter[28]~88\) # (GND)))
-- \inst1|display_counter[29]~90\ = CARRY((!\inst1|display_counter[28]~88\) # (!\inst1|display_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|display_counter\(29),
	datad => VCC,
	cin => \inst1|display_counter[28]~88\,
	combout => \inst1|display_counter[29]~89_combout\,
	cout => \inst1|display_counter[29]~90\);

-- Location: FF_X46_Y32_N29
\inst1|display_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[29]~89_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(29));

-- Location: LCCOMB_X46_Y32_N30
\inst1|display_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_counter[30]~91_combout\ = \inst1|display_counter\(30) $ (!\inst1|display_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(30),
	cin => \inst1|display_counter[29]~90\,
	combout => \inst1|display_counter[30]~91_combout\);

-- Location: FF_X46_Y32_N31
\inst1|display_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_counter[30]~91_combout\,
	asdata => \~GND~combout\,
	sload => \inst1|LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_counter\(30));

-- Location: LCCOMB_X45_Y32_N12
\inst1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~5_combout\ = (((!\inst1|display_counter\(23)) # (!\inst1|display_counter\(20))) # (!\inst1|display_counter\(21))) # (!\inst1|display_counter\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(22),
	datab => \inst1|display_counter\(21),
	datac => \inst1|display_counter\(20),
	datad => \inst1|display_counter\(23),
	combout => \inst1|LessThan1~5_combout\);

-- Location: LCCOMB_X45_Y32_N28
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (!\inst1|display_counter\(26) & (!\inst1|display_counter\(25) & !\inst1|display_counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(26),
	datac => \inst1|display_counter\(25),
	datad => \inst1|display_counter\(24),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X45_Y32_N22
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (!\inst1|display_counter\(17) & (!\inst1|display_counter\(18) & (!\inst1|display_counter\(19) & !\inst1|display_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(17),
	datab => \inst1|display_counter\(18),
	datac => \inst1|display_counter\(19),
	datad => \inst1|display_counter\(16),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X46_Y33_N0
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (!\inst1|display_counter\(10) & (!\inst1|display_counter\(9) & ((!\inst1|display_counter\(8)) # (!\inst1|display_counter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(10),
	datab => \inst1|display_counter\(9),
	datac => \inst1|display_counter\(7),
	datad => \inst1|display_counter\(8),
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y32_N16
\inst1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (!\inst1|display_counter\(13) & (((!\inst1|display_counter\(11) & \inst1|LessThan1~2_combout\)) # (!\inst1|display_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(12),
	datab => \inst1|display_counter\(13),
	datac => \inst1|display_counter\(11),
	datad => \inst1|LessThan1~2_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y32_N26
\inst1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~4_combout\ = (\inst1|LessThan1~1_combout\ & (((\inst1|LessThan1~3_combout\) # (!\inst1|display_counter\(14))) # (!\inst1|display_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~1_combout\,
	datab => \inst1|display_counter\(15),
	datac => \inst1|display_counter\(14),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|LessThan1~4_combout\);

-- Location: LCCOMB_X45_Y32_N6
\inst1|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~6_combout\ = ((\inst1|LessThan1~0_combout\ & ((\inst1|LessThan1~5_combout\) # (\inst1|LessThan1~4_combout\)))) # (!\inst1|display_counter\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~5_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|LessThan1~4_combout\,
	datad => \inst1|display_counter\(27),
	combout => \inst1|LessThan1~6_combout\);

-- Location: LCCOMB_X45_Y32_N0
\inst1|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~7_combout\ = (\inst1|display_counter\(30)) # ((\inst1|display_counter\(29)) # ((\inst1|display_counter\(28)) # (!\inst1|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_counter\(30),
	datab => \inst1|display_counter\(29),
	datac => \inst1|display_counter\(28),
	datad => \inst1|LessThan1~6_combout\,
	combout => \inst1|LessThan1~7_combout\);

-- Location: LCCOMB_X45_Y32_N30
\inst1|display_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|display_state~feeder_combout\ = \inst1|LessThan1~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LessThan1~7_combout\,
	combout => \inst1|display_state~feeder_combout\);

-- Location: FF_X45_Y32_N31
\inst1|display_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|display_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|display_state~q\);

-- Location: LCCOMB_X43_Y32_N8
\inst1|lcd_data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~11_combout\ = (!\inst1|lineCount\(1) & (\inst1|lineCount\(0) & (\inst1|display_state~q\ & !\inst1|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lineCount\(0),
	datac => \inst1|display_state~q\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~11_combout\);

-- Location: LCCOMB_X41_Y31_N12
\inst1|lcd_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~12_combout\ = (!\inst1|charCount\(3) & (\inst1|lcd_data~11_combout\ & ((!\inst1|charCount\(2)) # (!\inst1|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|lcd_data~11_combout\,
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~12_combout\);

-- Location: LCCOMB_X41_Y31_N20
\inst1|lcd_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~23_combout\ = (!\inst1|display_state~q\ & ((\inst1|lineCount\(1)) # (\inst1|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|display_state~q\,
	datac => \inst1|lineCount\(1),
	datad => \inst1|lineCount\(0),
	combout => \inst1|lcd_data~23_combout\);

-- Location: LCCOMB_X41_Y31_N6
\inst1|lcd_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~15_combout\ = (\inst1|charCount\(1) & (!\inst1|charCount\(0))) # (!\inst1|charCount\(1) & ((\inst1|charCount\(0)) # (\inst1|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~15_combout\);

-- Location: LCCOMB_X41_Y31_N28
\inst1|lcd_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~16_combout\ = (\inst1|charCount\(1) & ((\inst1|charCount\(0)) # ((\inst1|charCount\(3) & \inst1|charCount\(2))))) # (!\inst1|charCount\(1) & (\inst1|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~16_combout\);

-- Location: LCCOMB_X43_Y30_N28
\inst1|lcd_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~7_combout\ = (!\inst1|charCount\(2) & !\inst1|charCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|charCount\(2),
	datad => \inst1|charCount\(3),
	combout => \inst1|lcd_data~7_combout\);

-- Location: LCCOMB_X41_Y31_N14
\inst1|lcd_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~17_combout\ = (\inst1|lcd_data~15_combout\ & ((\inst1|lcd_data~7_combout\) # ((\inst1|lcd_data~16_combout\ & !\inst1|charCount\(4))))) # (!\inst1|lcd_data~15_combout\ & (\inst1|lcd_data~16_combout\ & ((!\inst1|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~15_combout\,
	datab => \inst1|lcd_data~16_combout\,
	datac => \inst1|lcd_data~7_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~17_combout\);

-- Location: LCCOMB_X41_Y31_N0
\inst1|lcd_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~18_combout\ = (\inst1|lineCount\(1) & (((\inst1|lineCount\(0))))) # (!\inst1|lineCount\(1) & ((\inst1|lineCount\(0) & ((\inst1|lcd_data~17_combout\))) # (!\inst1|lineCount\(0) & (\inst1|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lcd_data\(6),
	datac => \inst1|lcd_data~17_combout\,
	datad => \inst1|lineCount\(0),
	combout => \inst1|lcd_data~18_combout\);

-- Location: LCCOMB_X43_Y31_N12
\inst1|lcd_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~13_combout\ = (\inst1|charCount\(1) & (((\inst1|charCount\(3))))) # (!\inst1|charCount\(1) & ((\inst1|charCount\(3) & ((\inst1|charCount\(2)))) # (!\inst1|charCount\(3) & (\inst1|charCount\(0) & !\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~13_combout\);

-- Location: LCCOMB_X43_Y31_N10
\inst1|lcd_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~14_combout\ = (\inst1|charCount\(4)) # (\inst1|lcd_data~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|charCount\(4),
	datad => \inst1|lcd_data~13_combout\,
	combout => \inst1|lcd_data~14_combout\);

-- Location: LCCOMB_X41_Y30_N30
\inst1|lcd_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~19_combout\ = (\inst1|charCount\(3) & (!\inst1|charCount\(0) & (\inst1|charCount\(1) $ (\inst1|charCount\(2))))) # (!\inst1|charCount\(3) & (\inst1|charCount\(0) & (!\inst1|charCount\(1) & !\inst1|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~19_combout\);

-- Location: LCCOMB_X41_Y30_N4
\inst1|lcd_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~20_combout\ = (\inst1|charCount\(1) & \inst1|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~20_combout\);

-- Location: LCCOMB_X41_Y30_N18
\inst1|lcd_data~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~21_combout\ = (\inst1|charCount\(4) & (((!\inst1|lcd_data~20_combout\ & \inst1|lcd_data~7_combout\)))) # (!\inst1|charCount\(4) & (!\inst1|lcd_data~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~19_combout\,
	datab => \inst1|lcd_data~20_combout\,
	datac => \inst1|lcd_data~7_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~21_combout\);

-- Location: LCCOMB_X41_Y31_N26
\inst1|lcd_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~22_combout\ = (\inst1|lineCount\(1) & ((\inst1|lcd_data~18_combout\ & ((\inst1|lcd_data~21_combout\))) # (!\inst1|lcd_data~18_combout\ & (!\inst1|lcd_data~14_combout\)))) # (!\inst1|lineCount\(1) & (\inst1|lcd_data~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lcd_data~18_combout\,
	datac => \inst1|lcd_data~14_combout\,
	datad => \inst1|lcd_data~21_combout\,
	combout => \inst1|lcd_data~22_combout\);

-- Location: LCCOMB_X41_Y31_N30
\inst1|lcd_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~8_combout\ = (\inst1|lcd_data~7_combout\ & ((\inst1|charCount\(0) & (!\inst1|charCount\(1))) # (!\inst1|charCount\(0) & ((\inst1|charCount\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(1),
	datac => \inst1|lcd_data~7_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~8_combout\);

-- Location: LCCOMB_X41_Y31_N8
\inst1|lcd_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~6_combout\ = (!\inst1|lineCount\(1) & (!\inst1|lineCount\(0) & !\inst1|display_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datac => \inst1|lineCount\(0),
	datad => \inst1|display_state~q\,
	combout => \inst1|lcd_data~6_combout\);

-- Location: LCCOMB_X41_Y31_N4
\inst1|lcd_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~9_combout\ = (\inst1|charCount\(1)) # ((\inst1|charCount\(2)) # ((\inst1|charCount\(3) & !\inst1|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~9_combout\);

-- Location: LCCOMB_X41_Y31_N18
\inst1|lcd_data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~10_combout\ = (\inst1|lcd_data~6_combout\ & ((\inst1|lcd_data~8_combout\) # ((\inst1|lcd_data~9_combout\ & !\inst1|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~8_combout\,
	datab => \inst1|lcd_data~6_combout\,
	datac => \inst1|lcd_data~9_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~10_combout\);

-- Location: LCCOMB_X41_Y31_N24
\inst1|lcd_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~24_combout\ = (\inst1|lcd_data~12_combout\) # ((\inst1|lcd_data~10_combout\) # ((\inst1|lcd_data~23_combout\ & \inst1|lcd_data~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~12_combout\,
	datab => \inst1|lcd_data~23_combout\,
	datac => \inst1|lcd_data~22_combout\,
	datad => \inst1|lcd_data~10_combout\,
	combout => \inst1|lcd_data~24_combout\);

-- Location: FF_X41_Y31_N25
\inst1|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(6));

-- Location: LCCOMB_X45_Y31_N14
\inst2|dataStorage[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[6]~0_combout\ = !\inst1|lcd_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lcd_data\(6),
	combout => \inst2|dataStorage[6]~0_combout\);

-- Location: FF_X45_Y31_N15
\inst2|dataStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[6]~0_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(6));

-- Location: LCCOMB_X45_Y31_N8
\inst2|dataOut[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[6]~2_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(6))))) # (!\inst2|state.sendingAddress~q\ & (\inst2|state.sendingData~q\ & ((!\inst2|dataStorage\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|addressStorage\(6),
	datad => \inst2|dataStorage\(6),
	combout => \inst2|dataOut[6]~2_combout\);

-- Location: LCCOMB_X47_Y31_N14
\inst2|dataOut[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~0_combout\ = (!\inst2|state.init4~q\ & (!\inst2|state.init1~q\ & (!\inst2|state.init3~q\ & !\inst2|state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init4~q\,
	datab => \inst2|state.init1~q\,
	datac => \inst2|state.init3~q\,
	datad => \inst2|state.init2~q\,
	combout => \inst2|dataOut[1]~0_combout\);

-- Location: LCCOMB_X46_Y31_N22
\inst2|dataOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~1_combout\ = (!\inst2|state.init5~q\ & (\inst2|dataOut[1]~0_combout\ & (\inst2|state.init0~q\ & !\inst2|state.init6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init5~q\,
	datab => \inst2|dataOut[1]~0_combout\,
	datac => \inst2|state.init0~q\,
	datad => \inst2|state.init6~q\,
	combout => \inst2|dataOut[1]~1_combout\);

-- Location: LCCOMB_X46_Y31_N0
\inst2|dataOut[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[6]~3_combout\ = (\inst2|dataOut[6]~2_combout\ & (\inst2|dataOut[1]~1_combout\ & !\inst2|state.init7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[6]~2_combout\,
	datac => \inst2|dataOut[1]~1_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[6]~3_combout\);

-- Location: LCCOMB_X46_Y31_N30
\inst2|dataOut[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~5_combout\ = (\inst2|state.init7~q\) # (!\inst2|dataOut[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|dataOut[1]~1_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[3]~5_combout\);

-- Location: LCCOMB_X44_Y31_N30
\inst1|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal15~0_combout\ = (\inst1|lineCount\(0)) # (\inst1|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lineCount\(0),
	datad => \inst1|lineCount\(1),
	combout => \inst1|Equal15~0_combout\);

-- Location: LCCOMB_X44_Y32_N12
\inst1|lcd_data~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~25_combout\ = (!\inst1|charCount\(2) & ((\inst1|charCount\(3) & (!\inst1|charCount\(0) & \inst1|charCount\(1))) # (!\inst1|charCount\(3) & (\inst1|charCount\(0) & !\inst1|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~25_combout\);

-- Location: LCCOMB_X44_Y32_N24
\inst1|lcd_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~118_combout\ = (!\inst1|lineCount\(1) & (!\inst1|lineCount\(0) & ((\inst1|charCount\(4)) # (!\inst1|lcd_data~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|charCount\(4),
	datac => \inst1|lineCount\(0),
	datad => \inst1|lcd_data~25_combout\,
	combout => \inst1|lcd_data~118_combout\);

-- Location: LCCOMB_X44_Y32_N14
\inst1|lcd_data~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~26_combout\ = (\inst1|charCount\(3)) # ((\inst1|charCount\(4)) # ((\inst1|charCount\(0)) # (\inst1|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(4),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~26_combout\);

-- Location: LCCOMB_X40_Y32_N8
\inst1|lcd_data~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~30_combout\ = (\inst1|charCount\(0) & ((\inst1|charCount\(1) $ (!\inst1|charCount\(2))) # (!\inst1|charCount\(3)))) # (!\inst1|charCount\(0) & (((\inst1|charCount\(3)) # (\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~30_combout\);

-- Location: LCCOMB_X41_Y32_N8
\inst1|lcd_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~31_combout\ = (\inst1|charCount\(4)) # (\inst1|lcd_data~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|charCount\(4),
	datad => \inst1|lcd_data~30_combout\,
	combout => \inst1|lcd_data~31_combout\);

-- Location: LCCOMB_X44_Y32_N28
\inst1|lcd_data~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~27_combout\ = (\inst1|charCount\(3) & (\inst1|charCount\(1) & (\inst1|charCount\(0) & !\inst1|charCount\(2)))) # (!\inst1|charCount\(3) & ((\inst1|charCount\(1) & ((\inst1|charCount\(0)) # (!\inst1|charCount\(2)))) # (!\inst1|charCount\(1) 
-- & (\inst1|charCount\(0) & !\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~27_combout\);

-- Location: LCCOMB_X44_Y32_N10
\inst1|lcd_data~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~28_combout\ = (\inst1|charCount\(4)) # (!\inst1|lcd_data~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(4),
	datad => \inst1|lcd_data~27_combout\,
	combout => \inst1|lcd_data~28_combout\);

-- Location: LCCOMB_X45_Y32_N24
\inst1|lcd_data~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~29_combout\ = (\inst1|lineCount\(1) & (((\inst1|lineCount\(0))))) # (!\inst1|lineCount\(1) & ((\inst1|lineCount\(0) & ((\inst1|lcd_data~28_combout\))) # (!\inst1|lineCount\(0) & (\inst1|lcd_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lcd_data\(5),
	datac => \inst1|lineCount\(0),
	datad => \inst1|lcd_data~28_combout\,
	combout => \inst1|lcd_data~29_combout\);

-- Location: LCCOMB_X45_Y32_N10
\inst1|lcd_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~32_combout\ = (\inst1|lineCount\(1) & ((\inst1|lcd_data~29_combout\ & ((\inst1|lcd_data~31_combout\))) # (!\inst1|lcd_data~29_combout\ & (\inst1|lcd_data~26_combout\)))) # (!\inst1|lineCount\(1) & (((\inst1|lcd_data~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~26_combout\,
	datab => \inst1|lineCount\(1),
	datac => \inst1|lcd_data~31_combout\,
	datad => \inst1|lcd_data~29_combout\,
	combout => \inst1|lcd_data~32_combout\);

-- Location: LCCOMB_X45_Y32_N8
\inst1|lcd_data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~33_combout\ = (\inst1|lcd_data~118_combout\) # ((\inst1|display_state~q\) # ((\inst1|Equal15~0_combout\ & \inst1|lcd_data~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~0_combout\,
	datab => \inst1|lcd_data~118_combout\,
	datac => \inst1|display_state~q\,
	datad => \inst1|lcd_data~32_combout\,
	combout => \inst1|lcd_data~33_combout\);

-- Location: FF_X45_Y32_N9
\inst1|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(5));

-- Location: LCCOMB_X45_Y31_N10
\inst2|dataStorage[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[5]~1_combout\ = !\inst1|lcd_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lcd_data\(5),
	combout => \inst2|dataStorage[5]~1_combout\);

-- Location: FF_X45_Y31_N11
\inst2|dataStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[5]~1_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(5));

-- Location: FF_X44_Y31_N21
\inst1|lcd_posX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|charCount\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posX\(3));

-- Location: FF_X44_Y31_N31
\inst1|lcd_posX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|charCount\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posX\(2));

-- Location: LCCOMB_X44_Y31_N14
\inst1|lcd_posX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_posX[4]~feeder_combout\ = \inst1|charCount\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_posX[4]~feeder_combout\);

-- Location: FF_X44_Y31_N15
\inst1|lcd_posX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_posX[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posX\(4));

-- Location: FF_X44_Y31_N29
\inst1|lcd_posY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lineCount\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posY\(1));

-- Location: LCCOMB_X45_Y31_N24
\inst2|addressStorage~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~0_combout\ = (\inst1|lcd_posY\(1) & ((\inst1|lcd_posX\(4)) # ((\inst1|lcd_posX\(3) & \inst1|lcd_posX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_posX\(3),
	datab => \inst1|lcd_posX\(2),
	datac => \inst1|lcd_posX\(4),
	datad => \inst1|lcd_posY\(1),
	combout => \inst2|addressStorage~0_combout\);

-- Location: FF_X45_Y31_N25
\inst2|addressStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~0_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(5));

-- Location: LCCOMB_X45_Y31_N4
\inst2|dataOut[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[5]~4_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(5))))) # (!\inst2|state.sendingAddress~q\ & (!\inst2|dataStorage\(5) & (\inst2|state.sendingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataStorage\(5),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|state.sendingAddress~q\,
	datad => \inst2|addressStorage\(5),
	combout => \inst2|dataOut[5]~4_combout\);

-- Location: LCCOMB_X46_Y31_N8
\inst2|dataOut[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[5]~6_combout\ = (\inst2|dataOut[3]~5_combout\ & (\inst2|state.init0~q\ & ((!\inst2|dataOut[1]~0_combout\)))) # (!\inst2|dataOut[3]~5_combout\ & ((\inst2|dataOut[5]~4_combout\) # ((\inst2|state.init0~q\ & !\inst2|dataOut[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[3]~5_combout\,
	datab => \inst2|state.init0~q\,
	datac => \inst2|dataOut[5]~4_combout\,
	datad => \inst2|dataOut[1]~0_combout\,
	combout => \inst2|dataOut[5]~6_combout\);

-- Location: LCCOMB_X45_Y31_N22
\inst2|addressStorage~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~1_combout\ = \inst1|lcd_posX\(4) $ (((\inst1|lcd_posY\(1) & ((!\inst1|lcd_posX\(2)) # (!\inst1|lcd_posX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_posX\(3),
	datab => \inst1|lcd_posX\(2),
	datac => \inst1|lcd_posX\(4),
	datad => \inst1|lcd_posY\(1),
	combout => \inst2|addressStorage~1_combout\);

-- Location: FF_X45_Y31_N23
\inst2|addressStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~1_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(4));

-- Location: LCCOMB_X40_Y31_N22
\inst1|lcd_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~35_combout\ = (\inst1|charCount\(3) & (!\inst1|charCount\(4) & (\inst1|charCount\(1)))) # (!\inst1|charCount\(3) & (\inst1|charCount\(0) & (\inst1|charCount\(4) $ (\inst1|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(4),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~35_combout\);

-- Location: LCCOMB_X40_Y31_N16
\inst1|lcd_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~34_combout\ = (\inst1|charCount\(0) & ((\inst1|charCount\(1) & (!\inst1|charCount\(4) & \inst1|charCount\(3))) # (!\inst1|charCount\(1) & ((!\inst1|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(4),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~34_combout\);

-- Location: LCCOMB_X40_Y31_N28
\inst1|lcd_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~36_combout\ = (\inst1|lcd_data~6_combout\ & (\inst1|lcd_data~35_combout\ $ (((\inst1|charCount\(2) & \inst1|lcd_data~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|lcd_data~6_combout\,
	datac => \inst1|lcd_data~35_combout\,
	datad => \inst1|lcd_data~34_combout\,
	combout => \inst1|lcd_data~36_combout\);

-- Location: LCCOMB_X43_Y31_N4
\inst1|lcd_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~37_combout\ = (\inst1|charCount\(3) & (\inst1|charCount\(2) $ (((\inst1|charCount\(1)) # (\inst1|charCount\(0)))))) # (!\inst1|charCount\(3) & (\inst1|charCount\(1) & (!\inst1|charCount\(0) & \inst1|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~37_combout\);

-- Location: LCCOMB_X43_Y31_N14
\inst1|lcd_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~38_combout\ = (\inst1|lcd_data~37_combout\ & \inst1|lcd_data~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|lcd_data~37_combout\,
	datad => \inst1|lcd_data~11_combout\,
	combout => \inst1|lcd_data~38_combout\);

-- Location: LCCOMB_X43_Y31_N24
\inst1|lcd_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~41_combout\ = (\inst1|charCount\(1) & (\inst1|charCount\(0) & (!\inst1|charCount\(3) & !\inst1|charCount\(2)))) # (!\inst1|charCount\(1) & (!\inst1|charCount\(0) & (\inst1|charCount\(3) $ (\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~41_combout\);

-- Location: LCCOMB_X43_Y31_N26
\inst1|lcd_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~42_combout\ = (!\inst1|charCount\(4) & \inst1|lcd_data~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|charCount\(4),
	datad => \inst1|lcd_data~41_combout\,
	combout => \inst1|lcd_data~42_combout\);

-- Location: LCCOMB_X43_Y31_N8
\inst1|lcd_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~43_combout\ = (\inst1|lineCount\(1) & ((\inst1|lcd_data~42_combout\) # ((\inst1|lineCount\(0))))) # (!\inst1|lineCount\(1) & (((\inst1|lcd_data\(4) & !\inst1|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~42_combout\,
	datab => \inst1|lcd_data\(4),
	datac => \inst1|lineCount\(1),
	datad => \inst1|lineCount\(0),
	combout => \inst1|lcd_data~43_combout\);

-- Location: LCCOMB_X44_Y30_N12
\inst1|lcd_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~39_combout\ = (\inst1|charCount\(1) & (!\inst1|charCount\(3) & (\inst1|charCount\(0) $ (!\inst1|charCount\(2))))) # (!\inst1|charCount\(1) & (!\inst1|charCount\(0) & (\inst1|charCount\(3) & \inst1|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~39_combout\);

-- Location: LCCOMB_X44_Y30_N10
\inst1|lcd_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~40_combout\ = (\inst1|charCount\(4) & (((!\inst1|charCount\(1) & \inst1|lcd_data~7_combout\)))) # (!\inst1|charCount\(4) & (\inst1|lcd_data~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~39_combout\,
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(4),
	datad => \inst1|lcd_data~7_combout\,
	combout => \inst1|lcd_data~40_combout\);

-- Location: LCCOMB_X44_Y31_N8
\inst1|lcd_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~44_combout\ = (\inst1|charCount\(3) & ((\inst1|charCount\(1)))) # (!\inst1|charCount\(3) & (\inst1|charCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~44_combout\);

-- Location: LCCOMB_X44_Y31_N2
\inst1|lcd_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~45_combout\ = (\inst1|charCount\(1) & (!\inst1|charCount\(2) & ((!\inst1|lcd_data~44_combout\)))) # (!\inst1|charCount\(1) & (!\inst1|charCount\(4) & (\inst1|charCount\(2) $ (!\inst1|lcd_data~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(4),
	datac => \inst1|lcd_data~44_combout\,
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~45_combout\);

-- Location: LCCOMB_X43_Y31_N2
\inst1|lcd_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~46_combout\ = (\inst1|lineCount\(0) & ((\inst1|lcd_data~43_combout\ & ((\inst1|lcd_data~45_combout\))) # (!\inst1|lcd_data~43_combout\ & (\inst1|lcd_data~40_combout\)))) # (!\inst1|lineCount\(0) & (\inst1|lcd_data~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datab => \inst1|lcd_data~43_combout\,
	datac => \inst1|lcd_data~40_combout\,
	datad => \inst1|lcd_data~45_combout\,
	combout => \inst1|lcd_data~46_combout\);

-- Location: LCCOMB_X43_Y31_N0
\inst1|lcd_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~47_combout\ = (\inst1|lcd_data~36_combout\) # ((\inst1|lcd_data~38_combout\) # ((\inst1|lcd_data~23_combout\ & \inst1|lcd_data~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~23_combout\,
	datab => \inst1|lcd_data~36_combout\,
	datac => \inst1|lcd_data~38_combout\,
	datad => \inst1|lcd_data~46_combout\,
	combout => \inst1|lcd_data~47_combout\);

-- Location: FF_X43_Y31_N1
\inst1|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(4));

-- Location: FF_X46_Y31_N11
\inst2|dataStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lcd_data\(4),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(4));

-- Location: LCCOMB_X46_Y31_N10
\inst2|dataOut[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[4]~7_combout\ = (\inst2|state.sendingAddress~q\ & (\inst2|addressStorage\(4))) # (!\inst2|state.sendingAddress~q\ & (((\inst2|dataStorage\(4) & \inst2|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|addressStorage\(4),
	datac => \inst2|dataStorage\(4),
	datad => \inst2|state.sendingData~q\,
	combout => \inst2|dataOut[4]~7_combout\);

-- Location: LCCOMB_X46_Y31_N12
\inst2|dataOut[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[4]~8_combout\ = (\inst2|dataOut[4]~7_combout\ & (((\inst2|state.init0~q\ & !\inst2|dataOut[1]~0_combout\)) # (!\inst2|dataOut[3]~5_combout\))) # (!\inst2|dataOut[4]~7_combout\ & (\inst2|state.init0~q\ & ((!\inst2|dataOut[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[4]~7_combout\,
	datab => \inst2|state.init0~q\,
	datac => \inst2|dataOut[3]~5_combout\,
	datad => \inst2|dataOut[1]~0_combout\,
	combout => \inst2|dataOut[4]~8_combout\);

-- Location: LCCOMB_X46_Y31_N18
\inst2|dataOut[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~9_combout\ = (\inst2|state.init0~q\ & ((\inst2|state.init5~q\) # (!\inst2|dataOut[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.init5~q\,
	datac => \inst2|state.init0~q\,
	datad => \inst2|dataOut[1]~0_combout\,
	combout => \inst2|dataOut[3]~9_combout\);

-- Location: LCCOMB_X45_Y31_N28
\inst2|addressStorage~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~2_combout\ = \inst1|lcd_posX\(3) $ (((\inst1|lcd_posY\(1) & \inst1|lcd_posX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_posY\(1),
	datac => \inst1|lcd_posX\(3),
	datad => \inst1|lcd_posX\(2),
	combout => \inst2|addressStorage~2_combout\);

-- Location: FF_X45_Y31_N29
\inst2|addressStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~2_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(3));

-- Location: LCCOMB_X40_Y31_N20
\inst1|lcd_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~52_combout\ = (\inst1|charCount\(0) & (!\inst1|charCount\(4) & \inst1|charCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(4),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~52_combout\);

-- Location: LCCOMB_X40_Y31_N26
\inst1|lcd_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~53_combout\ = (\inst1|charCount\(3) & (\inst1|lcd_data~6_combout\ & \inst1|lcd_data~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(3),
	datac => \inst1|lcd_data~6_combout\,
	datad => \inst1|lcd_data~52_combout\,
	combout => \inst1|lcd_data~53_combout\);

-- Location: LCCOMB_X44_Y30_N28
\inst1|lcd_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~48_combout\ = (!\inst1|charCount\(2) & (\inst1|charCount\(4) & (!\inst1|charCount\(3) & !\inst1|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(4),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~48_combout\);

-- Location: LCCOMB_X40_Y31_N4
\inst1|lcd_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~50_combout\ = (!\inst1|charCount\(4) & \inst1|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|charCount\(4),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~50_combout\);

-- Location: LCCOMB_X40_Y31_N18
\inst1|lcd_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~49_combout\ = (!\inst1|charCount\(1) & !\inst1|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(1),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~49_combout\);

-- Location: LCCOMB_X40_Y31_N2
\inst1|lcd_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~51_combout\ = (\inst1|lcd_data~6_combout\ & ((\inst1|lcd_data~48_combout\) # ((\inst1|lcd_data~50_combout\ & \inst1|lcd_data~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~48_combout\,
	datab => \inst1|lcd_data~50_combout\,
	datac => \inst1|lcd_data~6_combout\,
	datad => \inst1|lcd_data~49_combout\,
	combout => \inst1|lcd_data~51_combout\);

-- Location: LCCOMB_X43_Y30_N30
\inst1|lcd_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~63_combout\ = (\inst1|charCount\(1) & (\inst1|charCount\(3) & (!\inst1|charCount\(2) & !\inst1|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(3),
	datac => \inst1|charCount\(2),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~63_combout\);

-- Location: LCCOMB_X32_Y32_N28
\inst1|converter1|state.s0_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state.s0_s~0_combout\ = !\inst1|converter1|state.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|state.s0~q\,
	combout => \inst1|converter1|state.s0_s~0_combout\);

-- Location: FF_X32_Y32_N29
\inst1|converter1|state.s0_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|state.s0_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s0_s~q\);

-- Location: LCCOMB_X29_Y32_N10
\inst1|converter1|number[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[10]~6_combout\ = (\inst1|converter1|state.s1~q\) # (!\inst1|converter1|state.s0_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|state.s1~q\,
	combout => \inst1|converter1|number[10]~6_combout\);

-- Location: LCCOMB_X30_Y32_N0
\inst1|converter1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~0_combout\ = \inst1|converter1|number\(3) $ (VCC)
-- \inst1|converter1|Add1~1\ = CARRY(\inst1|converter1|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(3),
	datad => VCC,
	combout => \inst1|converter1|Add1~0_combout\,
	cout => \inst1|converter1|Add1~1\);

-- Location: LCCOMB_X28_Y31_N6
\inst1|converter1|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~0_combout\ = \inst1|converter1|number\(1) $ (VCC)
-- \inst1|converter1|Add5~1\ = CARRY(\inst1|converter1|number\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(1),
	datad => VCC,
	combout => \inst1|converter1|Add5~0_combout\,
	cout => \inst1|converter1|Add5~1\);

-- Location: LCCOMB_X31_Y32_N24
\inst1|converter1|number[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[10]~9_combout\ = (\inst1|converter1|state.s0_s~q\ & ((\inst1|converter1|number~1_combout\) # (\inst1|converter1|digit_int_3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|number~1_combout\,
	datad => \inst1|converter1|digit_int_3~3_combout\,
	combout => \inst1|converter1|number[10]~9_combout\);

-- Location: LCCOMB_X32_Y32_N14
\inst1|converter1|number[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[10]~5_combout\ = ((!\inst1|converter1|state.s1~q\ & \inst1|converter1|state.s2~q\)) # (!\inst1|converter1|state.s0_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|state.s1~q\,
	datac => \inst1|converter1|state.s2~q\,
	datad => \inst1|converter1|state.s0_s~q\,
	combout => \inst1|converter1|number[10]~5_combout\);

-- Location: LCCOMB_X29_Y31_N6
\inst1|converter1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~0_combout\ = \inst1|converter1|number\(2) $ (VCC)
-- \inst1|converter1|Add3~1\ = CARRY(\inst1|converter1|number\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(2),
	datad => VCC,
	combout => \inst1|converter1|Add3~0_combout\,
	cout => \inst1|converter1|Add3~1\);

-- Location: LCCOMB_X29_Y31_N8
\inst1|converter1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~2_combout\ = (\inst1|converter1|number\(3) & (\inst1|converter1|Add3~1\ & VCC)) # (!\inst1|converter1|number\(3) & (!\inst1|converter1|Add3~1\))
-- \inst1|converter1|Add3~3\ = CARRY((!\inst1|converter1|number\(3) & !\inst1|converter1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(3),
	datad => VCC,
	cin => \inst1|converter1|Add3~1\,
	combout => \inst1|converter1|Add3~2_combout\,
	cout => \inst1|converter1|Add3~3\);

-- Location: LCCOMB_X29_Y31_N10
\inst1|converter1|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~4_combout\ = (\inst1|converter1|number\(4) & ((GND) # (!\inst1|converter1|Add3~3\))) # (!\inst1|converter1|number\(4) & (\inst1|converter1|Add3~3\ $ (GND)))
-- \inst1|converter1|Add3~5\ = CARRY((\inst1|converter1|number\(4)) # (!\inst1|converter1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(4),
	datad => VCC,
	cin => \inst1|converter1|Add3~3\,
	combout => \inst1|converter1|Add3~4_combout\,
	cout => \inst1|converter1|Add3~5\);

-- Location: LCCOMB_X29_Y31_N12
\inst1|converter1|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~6_combout\ = (\inst1|converter1|number\(5) & (!\inst1|converter1|Add3~5\)) # (!\inst1|converter1|number\(5) & ((\inst1|converter1|Add3~5\) # (GND)))
-- \inst1|converter1|Add3~7\ = CARRY((!\inst1|converter1|Add3~5\) # (!\inst1|converter1|number\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(5),
	datad => VCC,
	cin => \inst1|converter1|Add3~5\,
	combout => \inst1|converter1|Add3~6_combout\,
	cout => \inst1|converter1|Add3~7\);

-- Location: LCCOMB_X29_Y31_N14
\inst1|converter1|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~8_combout\ = (\inst1|converter1|number\(6) & (\inst1|converter1|Add3~7\ $ (GND))) # (!\inst1|converter1|number\(6) & (!\inst1|converter1|Add3~7\ & VCC))
-- \inst1|converter1|Add3~9\ = CARRY((\inst1|converter1|number\(6) & !\inst1|converter1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(6),
	datad => VCC,
	cin => \inst1|converter1|Add3~7\,
	combout => \inst1|converter1|Add3~8_combout\,
	cout => \inst1|converter1|Add3~9\);

-- Location: LCCOMB_X30_Y32_N4
\inst1|converter1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~4_combout\ = (\inst1|converter1|number\(5) & (\inst1|converter1|Add1~3\ $ (GND))) # (!\inst1|converter1|number\(5) & (!\inst1|converter1|Add1~3\ & VCC))
-- \inst1|converter1|Add1~5\ = CARRY((\inst1|converter1|number\(5) & !\inst1|converter1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(5),
	datad => VCC,
	cin => \inst1|converter1|Add1~3\,
	combout => \inst1|converter1|Add1~4_combout\,
	cout => \inst1|converter1|Add1~5\);

-- Location: LCCOMB_X30_Y32_N6
\inst1|converter1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~6_combout\ = (\inst1|converter1|number\(6) & (!\inst1|converter1|Add1~5\)) # (!\inst1|converter1|number\(6) & ((\inst1|converter1|Add1~5\) # (GND)))
-- \inst1|converter1|Add1~7\ = CARRY((!\inst1|converter1|Add1~5\) # (!\inst1|converter1|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(6),
	datad => VCC,
	cin => \inst1|converter1|Add1~5\,
	combout => \inst1|converter1|Add1~6_combout\,
	cout => \inst1|converter1|Add1~7\);

-- Location: LCCOMB_X28_Y31_N8
\inst1|converter1|Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~2_combout\ = (\inst1|converter1|number\(2) & (\inst1|converter1|Add5~1\ & VCC)) # (!\inst1|converter1|number\(2) & (!\inst1|converter1|Add5~1\))
-- \inst1|converter1|Add5~3\ = CARRY((!\inst1|converter1|number\(2) & !\inst1|converter1|Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(2),
	datad => VCC,
	cin => \inst1|converter1|Add5~1\,
	combout => \inst1|converter1|Add5~2_combout\,
	cout => \inst1|converter1|Add5~3\);

-- Location: LCCOMB_X28_Y31_N10
\inst1|converter1|Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~4_combout\ = (\inst1|converter1|number\(3) & (\inst1|converter1|Add5~3\ $ (GND))) # (!\inst1|converter1|number\(3) & (!\inst1|converter1|Add5~3\ & VCC))
-- \inst1|converter1|Add5~5\ = CARRY((\inst1|converter1|number\(3) & !\inst1|converter1|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(3),
	datad => VCC,
	cin => \inst1|converter1|Add5~3\,
	combout => \inst1|converter1|Add5~4_combout\,
	cout => \inst1|converter1|Add5~5\);

-- Location: LCCOMB_X28_Y31_N12
\inst1|converter1|Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~6_combout\ = (\inst1|converter1|number\(4) & (\inst1|converter1|Add5~5\ & VCC)) # (!\inst1|converter1|number\(4) & (!\inst1|converter1|Add5~5\))
-- \inst1|converter1|Add5~7\ = CARRY((!\inst1|converter1|number\(4) & !\inst1|converter1|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(4),
	datad => VCC,
	cin => \inst1|converter1|Add5~5\,
	combout => \inst1|converter1|Add5~6_combout\,
	cout => \inst1|converter1|Add5~7\);

-- Location: LCCOMB_X28_Y31_N14
\inst1|converter1|Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~8_combout\ = (\inst1|converter1|number\(5) & ((GND) # (!\inst1|converter1|Add5~7\))) # (!\inst1|converter1|number\(5) & (\inst1|converter1|Add5~7\ $ (GND)))
-- \inst1|converter1|Add5~9\ = CARRY((\inst1|converter1|number\(5)) # (!\inst1|converter1|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(5),
	datad => VCC,
	cin => \inst1|converter1|Add5~7\,
	combout => \inst1|converter1|Add5~8_combout\,
	cout => \inst1|converter1|Add5~9\);

-- Location: LCCOMB_X28_Y31_N16
\inst1|converter1|Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~10_combout\ = (\inst1|converter1|number\(6) & (\inst1|converter1|Add5~9\ & VCC)) # (!\inst1|converter1|number\(6) & (!\inst1|converter1|Add5~9\))
-- \inst1|converter1|Add5~11\ = CARRY((!\inst1|converter1|number\(6) & !\inst1|converter1|Add5~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(6),
	datad => VCC,
	cin => \inst1|converter1|Add5~9\,
	combout => \inst1|converter1|Add5~10_combout\,
	cout => \inst1|converter1|Add5~11\);

-- Location: LCCOMB_X28_Y31_N4
\inst1|converter1|number~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~13_combout\ = (\inst1|converter1|number[10]~5_combout\ & (\inst1|converter1|number[10]~6_combout\)) # (!\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number[10]~6_combout\ & (\inst1|converter1|Add1~6_combout\)) # 
-- (!\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|Add5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~5_combout\,
	datab => \inst1|converter1|number[10]~6_combout\,
	datac => \inst1|converter1|Add1~6_combout\,
	datad => \inst1|converter1|Add5~10_combout\,
	combout => \inst1|converter1|number~13_combout\);

-- Location: LCCOMB_X28_Y32_N8
\inst1|converter1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~8_combout\ = (\inst1|converter1|number\(4) & (\inst1|converter1|Add0~7\ $ (GND))) # (!\inst1|converter1|number\(4) & ((GND) # (!\inst1|converter1|Add0~7\)))
-- \inst1|converter1|Add0~9\ = CARRY((!\inst1|converter1|Add0~7\) # (!\inst1|converter1|number\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(4),
	datad => VCC,
	cin => \inst1|converter1|Add0~7\,
	combout => \inst1|converter1|Add0~8_combout\,
	cout => \inst1|converter1|Add0~9\);

-- Location: LCCOMB_X28_Y32_N10
\inst1|converter1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~10_combout\ = (\inst1|converter1|number\(5) & (!\inst1|converter1|Add0~9\)) # (!\inst1|converter1|number\(5) & (\inst1|converter1|Add0~9\ & VCC))
-- \inst1|converter1|Add0~11\ = CARRY((\inst1|converter1|number\(5) & !\inst1|converter1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(5),
	datad => VCC,
	cin => \inst1|converter1|Add0~9\,
	combout => \inst1|converter1|Add0~10_combout\,
	cout => \inst1|converter1|Add0~11\);

-- Location: LCCOMB_X28_Y32_N12
\inst1|converter1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~12_combout\ = (\inst1|converter1|number\(6) & (\inst1|converter1|Add0~11\ $ (GND))) # (!\inst1|converter1|number\(6) & ((GND) # (!\inst1|converter1|Add0~11\)))
-- \inst1|converter1|Add0~13\ = CARRY((!\inst1|converter1|Add0~11\) # (!\inst1|converter1|number\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(6),
	datad => VCC,
	cin => \inst1|converter1|Add0~11\,
	combout => \inst1|converter1|Add0~12_combout\,
	cout => \inst1|converter1|Add0~13\);

-- Location: LCCOMB_X29_Y31_N28
\inst1|converter1|number~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~14_combout\ = (\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number~13_combout\ & ((\inst1|converter1|Add0~12_combout\))) # (!\inst1|converter1|number~13_combout\ & (\inst1|converter1|Add3~8_combout\)))) # 
-- (!\inst1|converter1|number[10]~5_combout\ & (((\inst1|converter1|number~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~5_combout\,
	datab => \inst1|converter1|Add3~8_combout\,
	datac => \inst1|converter1|number~13_combout\,
	datad => \inst1|converter1|Add0~12_combout\,
	combout => \inst1|converter1|number~14_combout\);

-- Location: LCCOMB_X30_Y31_N6
\inst1|converter1|number[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[6]~feeder_combout\ = \inst1|converter1|number~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~14_combout\,
	combout => \inst1|converter1|number[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N30
\inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = (!\inst|count\(0) & (!\inst|count\(2) & (!\inst|count\(1) & !\inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(3),
	combout => \inst|Equal4~1_combout\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_DOUT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_DOUT,
	o => \ADC_DOUT~input_o\);

-- Location: LCCOMB_X31_Y33_N2
\inst|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~3_combout\ = (\inst|count\(3) & (!\inst|count\(2) & (!\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal4~3_combout\);

-- Location: LCCOMB_X30_Y33_N22
\inst|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~0_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~3_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~3_combout\ & ((\inst|data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(6),
	datad => \inst|Equal4~3_combout\,
	combout => \inst|data~0_combout\);

-- Location: FF_X30_Y33_N23
\inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~0_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(6));

-- Location: LCCOMB_X30_Y31_N4
\inst|Data0[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[6]~feeder_combout\ = \inst|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(6),
	combout => \inst|Data0[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N28
\inst|Data0[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[11]~0_combout\ = (!\inst|channel\(0) & (\inst|channel\(1) & (!\inst|channel\(2) & \inst|active2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|channel\(0),
	datab => \inst|channel\(1),
	datac => \inst|channel\(2),
	datad => \inst|active2~q\,
	combout => \inst|Data0[11]~0_combout\);

-- Location: LCCOMB_X30_Y33_N0
\inst|Data0[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[11]~1_combout\ = (\inst|Equal4~1_combout\ & \inst|Data0[11]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal4~1_combout\,
	datad => \inst|Data0[11]~0_combout\,
	combout => \inst|Data0[11]~1_combout\);

-- Location: FF_X30_Y31_N5
\inst|Data0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[6]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(6));

-- Location: LCCOMB_X31_Y32_N26
\inst1|converter1|number[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[10]~10_combout\ = (\inst1|converter1|state.s0~q\) # ((\inst1|converter1|number[10]~9_combout\) # ((\inst1|converter1|number\(12) & !\inst1|converter1|state.s0_s~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(12),
	datab => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|number[10]~9_combout\,
	combout => \inst1|converter1|number[10]~10_combout\);

-- Location: FF_X30_Y31_N7
\inst1|converter1|number[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[6]~feeder_combout\,
	asdata => \inst|Data0\(6),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(6));

-- Location: LCCOMB_X30_Y32_N8
\inst1|converter1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~8_combout\ = (\inst1|converter1|number\(7) & (\inst1|converter1|Add1~7\ $ (GND))) # (!\inst1|converter1|number\(7) & (!\inst1|converter1|Add1~7\ & VCC))
-- \inst1|converter1|Add1~9\ = CARRY((\inst1|converter1|number\(7) & !\inst1|converter1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(7),
	datad => VCC,
	cin => \inst1|converter1|Add1~7\,
	combout => \inst1|converter1|Add1~8_combout\,
	cout => \inst1|converter1|Add1~9\);

-- Location: LCCOMB_X28_Y32_N14
\inst1|converter1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~14_combout\ = (\inst1|converter1|number\(7) & (!\inst1|converter1|Add0~13\)) # (!\inst1|converter1|number\(7) & (\inst1|converter1|Add0~13\ & VCC))
-- \inst1|converter1|Add0~15\ = CARRY((\inst1|converter1|number\(7) & !\inst1|converter1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(7),
	datad => VCC,
	cin => \inst1|converter1|Add0~13\,
	combout => \inst1|converter1|Add0~14_combout\,
	cout => \inst1|converter1|Add0~15\);

-- Location: LCCOMB_X28_Y31_N18
\inst1|converter1|Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~12_combout\ = (\inst1|converter1|number\(7) & ((GND) # (!\inst1|converter1|Add5~11\))) # (!\inst1|converter1|number\(7) & (\inst1|converter1|Add5~11\ $ (GND)))
-- \inst1|converter1|Add5~13\ = CARRY((\inst1|converter1|number\(7)) # (!\inst1|converter1|Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(7),
	datad => VCC,
	cin => \inst1|converter1|Add5~11\,
	combout => \inst1|converter1|Add5~12_combout\,
	cout => \inst1|converter1|Add5~13\);

-- Location: LCCOMB_X29_Y31_N16
\inst1|converter1|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~10_combout\ = (\inst1|converter1|number\(7) & (\inst1|converter1|Add3~9\ & VCC)) # (!\inst1|converter1|number\(7) & (!\inst1|converter1|Add3~9\))
-- \inst1|converter1|Add3~11\ = CARRY((!\inst1|converter1|number\(7) & !\inst1|converter1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(7),
	datad => VCC,
	cin => \inst1|converter1|Add3~9\,
	combout => \inst1|converter1|Add3~10_combout\,
	cout => \inst1|converter1|Add3~11\);

-- Location: LCCOMB_X29_Y32_N18
\inst1|converter1|number~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~29_combout\ = (\inst1|converter1|number[10]~6_combout\ & (\inst1|converter1|number[10]~5_combout\)) # (!\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|Add3~10_combout\))) 
-- # (!\inst1|converter1|number[10]~5_combout\ & (\inst1|converter1|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~6_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|Add5~12_combout\,
	datad => \inst1|converter1|Add3~10_combout\,
	combout => \inst1|converter1|number~29_combout\);

-- Location: LCCOMB_X29_Y32_N24
\inst1|converter1|number~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~30_combout\ = (\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number~29_combout\ & ((\inst1|converter1|Add0~14_combout\))) # (!\inst1|converter1|number~29_combout\ & (\inst1|converter1|Add1~8_combout\)))) # 
-- (!\inst1|converter1|number[10]~6_combout\ & (((\inst1|converter1|number~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~6_combout\,
	datab => \inst1|converter1|Add1~8_combout\,
	datac => \inst1|converter1|Add0~14_combout\,
	datad => \inst1|converter1|number~29_combout\,
	combout => \inst1|converter1|number~30_combout\);

-- Location: LCCOMB_X29_Y32_N22
\inst1|converter1|number[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[7]~feeder_combout\ = \inst1|converter1|number~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~30_combout\,
	combout => \inst1|converter1|number[7]~feeder_combout\);

-- Location: LCCOMB_X32_Y33_N16
\inst|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~8_combout\ = (!\inst|count\(0) & (\inst|count\(3) & (!\inst|count\(2) & !\inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~8_combout\);

-- Location: LCCOMB_X30_Y33_N2
\inst|data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~5_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~8_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~8_combout\ & ((\inst|data\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(7),
	datad => \inst|Equal4~8_combout\,
	combout => \inst|data~5_combout\);

-- Location: FF_X30_Y33_N3
\inst|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~5_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(7));

-- Location: LCCOMB_X29_Y32_N14
\inst|Data0[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[7]~feeder_combout\ = \inst|data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(7),
	combout => \inst|Data0[7]~feeder_combout\);

-- Location: FF_X29_Y32_N15
\inst|Data0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[7]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(7));

-- Location: FF_X29_Y32_N23
\inst1|converter1|number[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[7]~feeder_combout\,
	asdata => \inst|Data0\(7),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(7));

-- Location: LCCOMB_X28_Y32_N16
\inst1|converter1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~16_combout\ = (\inst1|converter1|number\(8) & (\inst1|converter1|Add0~15\ $ (GND))) # (!\inst1|converter1|number\(8) & ((GND) # (!\inst1|converter1|Add0~15\)))
-- \inst1|converter1|Add0~17\ = CARRY((!\inst1|converter1|Add0~15\) # (!\inst1|converter1|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(8),
	datad => VCC,
	cin => \inst1|converter1|Add0~15\,
	combout => \inst1|converter1|Add0~16_combout\,
	cout => \inst1|converter1|Add0~17\);

-- Location: LCCOMB_X29_Y31_N18
\inst1|converter1|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~12_combout\ = (\inst1|converter1|number\(8) & ((GND) # (!\inst1|converter1|Add3~11\))) # (!\inst1|converter1|number\(8) & (\inst1|converter1|Add3~11\ $ (GND)))
-- \inst1|converter1|Add3~13\ = CARRY((\inst1|converter1|number\(8)) # (!\inst1|converter1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(8),
	datad => VCC,
	cin => \inst1|converter1|Add3~11\,
	combout => \inst1|converter1|Add3~12_combout\,
	cout => \inst1|converter1|Add3~13\);

-- Location: LCCOMB_X30_Y32_N10
\inst1|converter1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~10_combout\ = (\inst1|converter1|number\(8) & (!\inst1|converter1|Add1~9\)) # (!\inst1|converter1|number\(8) & ((\inst1|converter1|Add1~9\) # (GND)))
-- \inst1|converter1|Add1~11\ = CARRY((!\inst1|converter1|Add1~9\) # (!\inst1|converter1|number\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(8),
	datad => VCC,
	cin => \inst1|converter1|Add1~9\,
	combout => \inst1|converter1|Add1~10_combout\,
	cout => \inst1|converter1|Add1~11\);

-- Location: LCCOMB_X28_Y31_N20
\inst1|converter1|Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~14_combout\ = (\inst1|converter1|number\(8) & (\inst1|converter1|Add5~13\ & VCC)) # (!\inst1|converter1|number\(8) & (!\inst1|converter1|Add5~13\))
-- \inst1|converter1|Add5~15\ = CARRY((!\inst1|converter1|number\(8) & !\inst1|converter1|Add5~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(8),
	datad => VCC,
	cin => \inst1|converter1|Add5~13\,
	combout => \inst1|converter1|Add5~14_combout\,
	cout => \inst1|converter1|Add5~15\);

-- Location: LCCOMB_X31_Y32_N12
\inst1|converter1|number~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~27_combout\ = (\inst1|converter1|number[10]~5_combout\ & (((\inst1|converter1|number[10]~6_combout\)))) # (!\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number[10]~6_combout\ & 
-- (\inst1|converter1|Add1~10_combout\)) # (!\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|Add5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add1~10_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|number[10]~6_combout\,
	datad => \inst1|converter1|Add5~14_combout\,
	combout => \inst1|converter1|number~27_combout\);

-- Location: LCCOMB_X31_Y32_N10
\inst1|converter1|number~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~28_combout\ = (\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number~27_combout\ & (\inst1|converter1|Add0~16_combout\)) # (!\inst1|converter1|number~27_combout\ & ((\inst1|converter1|Add3~12_combout\))))) # 
-- (!\inst1|converter1|number[10]~5_combout\ & (((\inst1|converter1|number~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add0~16_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|Add3~12_combout\,
	datad => \inst1|converter1|number~27_combout\,
	combout => \inst1|converter1|number~28_combout\);

-- Location: LCCOMB_X31_Y32_N18
\inst1|converter1|number[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[8]~feeder_combout\ = \inst1|converter1|number~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~28_combout\,
	combout => \inst1|converter1|number[8]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N18
\inst|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~10_combout\ = (!\inst|count\(3) & (\inst|count\(2) & (\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal4~10_combout\);

-- Location: LCCOMB_X30_Y33_N10
\inst|data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~9_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~10_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~10_combout\ & ((\inst|data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(8),
	datad => \inst|Equal4~10_combout\,
	combout => \inst|data~9_combout\);

-- Location: FF_X30_Y33_N11
\inst|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~9_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(8));

-- Location: LCCOMB_X31_Y32_N30
\inst|Data0[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[8]~feeder_combout\ = \inst|data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(8),
	combout => \inst|Data0[8]~feeder_combout\);

-- Location: FF_X31_Y32_N31
\inst|Data0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[8]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(8));

-- Location: FF_X31_Y32_N19
\inst1|converter1|number[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[8]~feeder_combout\,
	asdata => \inst|Data0\(8),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(8));

-- Location: LCCOMB_X28_Y32_N18
\inst1|converter1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~18_combout\ = (\inst1|converter1|number\(9) & (!\inst1|converter1|Add0~17\)) # (!\inst1|converter1|number\(9) & (\inst1|converter1|Add0~17\ & VCC))
-- \inst1|converter1|Add0~19\ = CARRY((\inst1|converter1|number\(9) & !\inst1|converter1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(9),
	datad => VCC,
	cin => \inst1|converter1|Add0~17\,
	combout => \inst1|converter1|Add0~18_combout\,
	cout => \inst1|converter1|Add0~19\);

-- Location: LCCOMB_X30_Y32_N12
\inst1|converter1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~12_combout\ = (\inst1|converter1|number\(9) & (\inst1|converter1|Add1~11\ $ (GND))) # (!\inst1|converter1|number\(9) & (!\inst1|converter1|Add1~11\ & VCC))
-- \inst1|converter1|Add1~13\ = CARRY((\inst1|converter1|number\(9) & !\inst1|converter1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(9),
	datad => VCC,
	cin => \inst1|converter1|Add1~11\,
	combout => \inst1|converter1|Add1~12_combout\,
	cout => \inst1|converter1|Add1~13\);

-- Location: LCCOMB_X29_Y31_N20
\inst1|converter1|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~14_combout\ = (\inst1|converter1|number\(9) & (\inst1|converter1|Add3~13\ & VCC)) # (!\inst1|converter1|number\(9) & (!\inst1|converter1|Add3~13\))
-- \inst1|converter1|Add3~15\ = CARRY((!\inst1|converter1|number\(9) & !\inst1|converter1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(9),
	datad => VCC,
	cin => \inst1|converter1|Add3~13\,
	combout => \inst1|converter1|Add3~14_combout\,
	cout => \inst1|converter1|Add3~15\);

-- Location: LCCOMB_X28_Y31_N22
\inst1|converter1|Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~16_combout\ = (\inst1|converter1|number\(9) & ((GND) # (!\inst1|converter1|Add5~15\))) # (!\inst1|converter1|number\(9) & (\inst1|converter1|Add5~15\ $ (GND)))
-- \inst1|converter1|Add5~17\ = CARRY((\inst1|converter1|number\(9)) # (!\inst1|converter1|Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(9),
	datad => VCC,
	cin => \inst1|converter1|Add5~15\,
	combout => \inst1|converter1|Add5~16_combout\,
	cout => \inst1|converter1|Add5~17\);

-- Location: LCCOMB_X29_Y32_N6
\inst1|converter1|number~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~25_combout\ = (\inst1|converter1|number[10]~6_combout\ & (\inst1|converter1|number[10]~5_combout\)) # (!\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number[10]~5_combout\ & (\inst1|converter1|Add3~14_combout\)) # 
-- (!\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|Add5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~6_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|Add3~14_combout\,
	datad => \inst1|converter1|Add5~16_combout\,
	combout => \inst1|converter1|number~25_combout\);

-- Location: LCCOMB_X29_Y32_N20
\inst1|converter1|number~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~26_combout\ = (\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number~25_combout\ & (\inst1|converter1|Add0~18_combout\)) # (!\inst1|converter1|number~25_combout\ & ((\inst1|converter1|Add1~12_combout\))))) # 
-- (!\inst1|converter1|number[10]~6_combout\ & (((\inst1|converter1|number~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~6_combout\,
	datab => \inst1|converter1|Add0~18_combout\,
	datac => \inst1|converter1|Add1~12_combout\,
	datad => \inst1|converter1|number~25_combout\,
	combout => \inst1|converter1|number~26_combout\);

-- Location: LCCOMB_X29_Y32_N28
\inst1|converter1|number[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[9]~feeder_combout\ = \inst1|converter1|number~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~26_combout\,
	combout => \inst1|converter1|number[9]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N6
\inst|Equal4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~12_combout\ = (\inst|count\(1) & (\inst|count\(2) & (!\inst|count\(3) & !\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(3),
	datad => \inst|count\(0),
	combout => \inst|Equal4~12_combout\);

-- Location: LCCOMB_X30_Y33_N30
\inst|data~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~11_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~12_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~12_combout\ & ((\inst|data\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(9),
	datad => \inst|Equal4~12_combout\,
	combout => \inst|data~11_combout\);

-- Location: FF_X30_Y33_N31
\inst|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~11_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(9));

-- Location: LCCOMB_X29_Y32_N30
\inst|Data0[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[9]~feeder_combout\ = \inst|data\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(9),
	combout => \inst|Data0[9]~feeder_combout\);

-- Location: FF_X29_Y32_N31
\inst|Data0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[9]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(9));

-- Location: FF_X29_Y32_N29
\inst1|converter1|number[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[9]~feeder_combout\,
	asdata => \inst|Data0\(9),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(9));

-- Location: LCCOMB_X29_Y31_N22
\inst1|converter1|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~16_combout\ = (\inst1|converter1|number\(10) & ((GND) # (!\inst1|converter1|Add3~15\))) # (!\inst1|converter1|number\(10) & (\inst1|converter1|Add3~15\ $ (GND)))
-- \inst1|converter1|Add3~17\ = CARRY((\inst1|converter1|number\(10)) # (!\inst1|converter1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(10),
	datad => VCC,
	cin => \inst1|converter1|Add3~15\,
	combout => \inst1|converter1|Add3~16_combout\,
	cout => \inst1|converter1|Add3~17\);

-- Location: LCCOMB_X28_Y32_N20
\inst1|converter1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~20_combout\ = (\inst1|converter1|number\(10) & (\inst1|converter1|Add0~19\ $ (GND))) # (!\inst1|converter1|number\(10) & ((GND) # (!\inst1|converter1|Add0~19\)))
-- \inst1|converter1|Add0~21\ = CARRY((!\inst1|converter1|Add0~19\) # (!\inst1|converter1|number\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(10),
	datad => VCC,
	cin => \inst1|converter1|Add0~19\,
	combout => \inst1|converter1|Add0~20_combout\,
	cout => \inst1|converter1|Add0~21\);

-- Location: LCCOMB_X30_Y32_N14
\inst1|converter1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~14_combout\ = (\inst1|converter1|number\(10) & (\inst1|converter1|Add1~13\ & VCC)) # (!\inst1|converter1|number\(10) & (!\inst1|converter1|Add1~13\))
-- \inst1|converter1|Add1~15\ = CARRY((!\inst1|converter1|number\(10) & !\inst1|converter1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(10),
	datad => VCC,
	cin => \inst1|converter1|Add1~13\,
	combout => \inst1|converter1|Add1~14_combout\,
	cout => \inst1|converter1|Add1~15\);

-- Location: LCCOMB_X28_Y31_N24
\inst1|converter1|Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~18_combout\ = (\inst1|converter1|number\(10) & (\inst1|converter1|Add5~17\ & VCC)) # (!\inst1|converter1|number\(10) & (!\inst1|converter1|Add5~17\))
-- \inst1|converter1|Add5~19\ = CARRY((!\inst1|converter1|number\(10) & !\inst1|converter1|Add5~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(10),
	datad => VCC,
	cin => \inst1|converter1|Add5~17\,
	combout => \inst1|converter1|Add5~18_combout\,
	cout => \inst1|converter1|Add5~19\);

-- Location: LCCOMB_X29_Y32_N0
\inst1|converter1|number~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~23_combout\ = (\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number[10]~5_combout\) # ((\inst1|converter1|Add1~14_combout\)))) # (!\inst1|converter1|number[10]~6_combout\ & (!\inst1|converter1|number[10]~5_combout\ 
-- & ((\inst1|converter1|Add5~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~6_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|Add1~14_combout\,
	datad => \inst1|converter1|Add5~18_combout\,
	combout => \inst1|converter1|number~23_combout\);

-- Location: LCCOMB_X29_Y32_N2
\inst1|converter1|number~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~24_combout\ = (\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number~23_combout\ & ((\inst1|converter1|Add0~20_combout\))) # (!\inst1|converter1|number~23_combout\ & (\inst1|converter1|Add3~16_combout\)))) # 
-- (!\inst1|converter1|number[10]~5_combout\ & (((\inst1|converter1|number~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add3~16_combout\,
	datab => \inst1|converter1|Add0~20_combout\,
	datac => \inst1|converter1|number[10]~5_combout\,
	datad => \inst1|converter1|number~23_combout\,
	combout => \inst1|converter1|number~24_combout\);

-- Location: LCCOMB_X29_Y32_N16
\inst1|converter1|number[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[10]~feeder_combout\ = \inst1|converter1|number~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~24_combout\,
	combout => \inst1|converter1|number[10]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N22
\inst|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~9_combout\ = (!\inst|count\(3) & (\inst|count\(2) & (!\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal4~9_combout\);

-- Location: LCCOMB_X30_Y33_N20
\inst|data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~8_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~9_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~9_combout\ & ((\inst|data\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(10),
	datad => \inst|Equal4~9_combout\,
	combout => \inst|data~8_combout\);

-- Location: FF_X30_Y33_N21
\inst|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~8_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(10));

-- Location: LCCOMB_X29_Y32_N8
\inst|Data0[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[10]~feeder_combout\ = \inst|data\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(10),
	combout => \inst|Data0[10]~feeder_combout\);

-- Location: FF_X29_Y32_N9
\inst|Data0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[10]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(10));

-- Location: FF_X29_Y32_N17
\inst1|converter1|number[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[10]~feeder_combout\,
	asdata => \inst|Data0\(10),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(10));

-- Location: LCCOMB_X30_Y32_N16
\inst1|converter1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~16_combout\ = (\inst1|converter1|number\(11) & ((GND) # (!\inst1|converter1|Add1~15\))) # (!\inst1|converter1|number\(11) & (\inst1|converter1|Add1~15\ $ (GND)))
-- \inst1|converter1|Add1~17\ = CARRY((\inst1|converter1|number\(11)) # (!\inst1|converter1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(11),
	datad => VCC,
	cin => \inst1|converter1|Add1~15\,
	combout => \inst1|converter1|Add1~16_combout\,
	cout => \inst1|converter1|Add1~17\);

-- Location: LCCOMB_X28_Y32_N22
\inst1|converter1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~22_combout\ = (\inst1|converter1|number\(11) & (!\inst1|converter1|Add0~21\)) # (!\inst1|converter1|number\(11) & (\inst1|converter1|Add0~21\ & VCC))
-- \inst1|converter1|Add0~23\ = CARRY((\inst1|converter1|number\(11) & !\inst1|converter1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(11),
	datad => VCC,
	cin => \inst1|converter1|Add0~21\,
	combout => \inst1|converter1|Add0~22_combout\,
	cout => \inst1|converter1|Add0~23\);

-- Location: LCCOMB_X28_Y31_N26
\inst1|converter1|Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~20_combout\ = (\inst1|converter1|number\(11) & ((GND) # (!\inst1|converter1|Add5~19\))) # (!\inst1|converter1|number\(11) & (\inst1|converter1|Add5~19\ $ (GND)))
-- \inst1|converter1|Add5~21\ = CARRY((\inst1|converter1|number\(11)) # (!\inst1|converter1|Add5~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(11),
	datad => VCC,
	cin => \inst1|converter1|Add5~19\,
	combout => \inst1|converter1|Add5~20_combout\,
	cout => \inst1|converter1|Add5~21\);

-- Location: LCCOMB_X29_Y31_N24
\inst1|converter1|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~18_combout\ = (\inst1|converter1|number\(11) & (\inst1|converter1|Add3~17\ & VCC)) # (!\inst1|converter1|number\(11) & (!\inst1|converter1|Add3~17\))
-- \inst1|converter1|Add3~19\ = CARRY((!\inst1|converter1|number\(11) & !\inst1|converter1|Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(11),
	datad => VCC,
	cin => \inst1|converter1|Add3~17\,
	combout => \inst1|converter1|Add3~18_combout\,
	cout => \inst1|converter1|Add3~19\);

-- Location: LCCOMB_X29_Y31_N4
\inst1|converter1|number~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~21_combout\ = (\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number[10]~6_combout\) # ((\inst1|converter1|Add3~18_combout\)))) # (!\inst1|converter1|number[10]~5_combout\ & (!\inst1|converter1|number[10]~6_combout\ 
-- & (\inst1|converter1|Add5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~5_combout\,
	datab => \inst1|converter1|number[10]~6_combout\,
	datac => \inst1|converter1|Add5~20_combout\,
	datad => \inst1|converter1|Add3~18_combout\,
	combout => \inst1|converter1|number~21_combout\);

-- Location: LCCOMB_X29_Y31_N30
\inst1|converter1|number~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~22_combout\ = (\inst1|converter1|number~21_combout\ & (((\inst1|converter1|Add0~22_combout\) # (!\inst1|converter1|number[10]~6_combout\)))) # (!\inst1|converter1|number~21_combout\ & (\inst1|converter1|Add1~16_combout\ & 
-- ((\inst1|converter1|number[10]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add1~16_combout\,
	datab => \inst1|converter1|Add0~22_combout\,
	datac => \inst1|converter1|number~21_combout\,
	datad => \inst1|converter1|number[10]~6_combout\,
	combout => \inst1|converter1|number~22_combout\);

-- Location: LCCOMB_X30_Y31_N0
\inst1|converter1|number[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[11]~feeder_combout\ = \inst1|converter1|number~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~22_combout\,
	combout => \inst1|converter1|number[11]~feeder_combout\);

-- Location: LCCOMB_X30_Y33_N18
\inst|data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~7_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~0_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~0_combout\ & ((\inst|data\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(11),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|data~7_combout\);

-- Location: FF_X30_Y33_N19
\inst|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~7_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(11));

-- Location: LCCOMB_X30_Y31_N22
\inst|Data0[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[11]~feeder_combout\ = \inst|data\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(11),
	combout => \inst|Data0[11]~feeder_combout\);

-- Location: FF_X30_Y31_N23
\inst|Data0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[11]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(11));

-- Location: FF_X30_Y31_N1
\inst1|converter1|number[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[11]~feeder_combout\,
	asdata => \inst|Data0\(11),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(11));

-- Location: LCCOMB_X28_Y32_N24
\inst1|converter1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~24_combout\ = \inst1|converter1|Add0~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|converter1|Add0~23\,
	combout => \inst1|converter1|Add0~24_combout\);

-- Location: LCCOMB_X28_Y32_N26
\inst1|converter1|number~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~19_combout\ = (\inst1|converter1|state.s0_s~q\ & (!\inst1|converter1|digit_int_3~3_combout\ & (!\inst1|converter1|number~1_combout\))) # (!\inst1|converter1|state.s0_s~q\ & (((\inst1|converter1|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0_s~q\,
	datab => \inst1|converter1|digit_int_3~3_combout\,
	datac => \inst1|converter1|number~1_combout\,
	datad => \inst1|converter1|Add0~24_combout\,
	combout => \inst1|converter1|number~19_combout\);

-- Location: LCCOMB_X30_Y32_N18
\inst1|converter1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~18_combout\ = \inst1|converter1|number\(12) $ (!\inst1|converter1|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(12),
	cin => \inst1|converter1|Add1~17\,
	combout => \inst1|converter1|Add1~18_combout\);

-- Location: LCCOMB_X29_Y31_N26
\inst1|converter1|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add3~20_combout\ = \inst1|converter1|Add3~19\ $ (\inst1|converter1|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number\(12),
	cin => \inst1|converter1|Add3~19\,
	combout => \inst1|converter1|Add3~20_combout\);

-- Location: LCCOMB_X28_Y31_N28
\inst1|converter1|Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add5~22_combout\ = \inst1|converter1|Add5~21\ $ (!\inst1|converter1|number\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number\(12),
	cin => \inst1|converter1|Add5~21\,
	combout => \inst1|converter1|Add5~22_combout\);

-- Location: LCCOMB_X29_Y31_N2
\inst1|converter1|number~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~17_combout\ = (!\inst1|converter1|state.s1~q\ & ((\inst1|converter1|state.s2~q\ & (\inst1|converter1|Add3~20_combout\)) # (!\inst1|converter1|state.s2~q\ & ((\inst1|converter1|Add5~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s1~q\,
	datab => \inst1|converter1|state.s2~q\,
	datac => \inst1|converter1|Add3~20_combout\,
	datad => \inst1|converter1|Add5~22_combout\,
	combout => \inst1|converter1|number~17_combout\);

-- Location: LCCOMB_X29_Y31_N0
\inst1|converter1|number~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~18_combout\ = (\inst1|converter1|number~17_combout\) # ((\inst1|converter1|state.s1~q\ & \inst1|converter1|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s1~q\,
	datac => \inst1|converter1|Add1~18_combout\,
	datad => \inst1|converter1|number~17_combout\,
	combout => \inst1|converter1|number~18_combout\);

-- Location: LCCOMB_X28_Y32_N30
\inst1|converter1|number~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~20_combout\ = (\inst1|converter1|number[10]~9_combout\ & ((\inst1|converter1|number~18_combout\) # ((\inst1|converter1|number~19_combout\ & \inst1|converter1|number\(12))))) # (!\inst1|converter1|number[10]~9_combout\ & 
-- (\inst1|converter1|number~19_combout\ & (\inst1|converter1|number\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~9_combout\,
	datab => \inst1|converter1|number~19_combout\,
	datac => \inst1|converter1|number\(12),
	datad => \inst1|converter1|number~18_combout\,
	combout => \inst1|converter1|number~20_combout\);

-- Location: FF_X28_Y32_N31
\inst1|converter1|number[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number~20_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(12));

-- Location: LCCOMB_X29_Y33_N30
\inst1|converter1|number[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[0]~feeder_combout\ = \inst1|converter1|number\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(0),
	combout => \inst1|converter1|number[0]~feeder_combout\);

-- Location: LCCOMB_X30_Y33_N4
\inst|data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~6_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~2_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~2_combout\ & ((\inst|data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(0),
	datad => \inst|Equal4~2_combout\,
	combout => \inst|data~6_combout\);

-- Location: FF_X30_Y33_N5
\inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~6_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(0));

-- Location: LCCOMB_X29_Y33_N14
\inst|Data0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[0]~feeder_combout\ = \inst|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(0),
	combout => \inst|Data0[0]~feeder_combout\);

-- Location: FF_X29_Y33_N15
\inst|Data0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[0]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(0));

-- Location: FF_X29_Y33_N31
\inst1|converter1|number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[0]~feeder_combout\,
	asdata => \inst|Data0\(0),
	sload => \inst1|converter1|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(0));

-- Location: LCCOMB_X28_Y32_N0
\inst1|converter1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~1_cout\ = CARRY(!\inst1|converter1|number\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(0),
	datad => VCC,
	cout => \inst1|converter1|Add0~1_cout\);

-- Location: LCCOMB_X28_Y32_N2
\inst1|converter1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~2_combout\ = (\inst1|converter1|number\(1) & (!\inst1|converter1|Add0~1_cout\)) # (!\inst1|converter1|number\(1) & (\inst1|converter1|Add0~1_cout\ & VCC))
-- \inst1|converter1|Add0~3\ = CARRY((\inst1|converter1|number\(1) & !\inst1|converter1|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(1),
	datad => VCC,
	cin => \inst1|converter1|Add0~1_cout\,
	combout => \inst1|converter1|Add0~2_combout\,
	cout => \inst1|converter1|Add0~3\);

-- Location: LCCOMB_X29_Y33_N0
\inst1|converter1|number~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~31_combout\ = (\inst1|converter1|state.s0_s~q\ & (\inst1|converter1|number\(1))) # (!\inst1|converter1|state.s0_s~q\ & ((\inst1|converter1|number\(12) & ((\inst1|converter1|Add0~2_combout\))) # (!\inst1|converter1|number\(12) & 
-- (\inst1|converter1|number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(1),
	datab => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|number\(12),
	datad => \inst1|converter1|Add0~2_combout\,
	combout => \inst1|converter1|number~31_combout\);

-- Location: LCCOMB_X29_Y33_N2
\inst1|converter1|number~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~32_combout\ = (\inst1|converter1|state.s0_s~q\ & ((\inst1|converter1|number~0_combout\ & (\inst1|converter1|Add5~0_combout\)) # (!\inst1|converter1|number~0_combout\ & ((\inst1|converter1|number~31_combout\))))) # 
-- (!\inst1|converter1|state.s0_s~q\ & (((\inst1|converter1|number~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add5~0_combout\,
	datab => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|number~0_combout\,
	datad => \inst1|converter1|number~31_combout\,
	combout => \inst1|converter1|number~32_combout\);

-- Location: LCCOMB_X29_Y33_N8
\inst1|converter1|number[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[1]~feeder_combout\ = \inst1|converter1|number~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~32_combout\,
	combout => \inst1|converter1|number[1]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N12
\inst|Equal4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~11_combout\ = (\inst|count\(1) & (\inst|count\(2) & (!\inst|count\(0) & \inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(2),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|Equal4~11_combout\);

-- Location: LCCOMB_X30_Y33_N12
\inst|data~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~10_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~11_combout\ & ((\ADC_DOUT~input_o\))) # (!\inst|Equal4~11_combout\ & (\inst|data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \inst|Equal4~11_combout\,
	datac => \inst|data\(1),
	datad => \ADC_DOUT~input_o\,
	combout => \inst|data~10_combout\);

-- Location: FF_X30_Y33_N13
\inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~10_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(1));

-- Location: LCCOMB_X29_Y33_N22
\inst|Data0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[1]~feeder_combout\ = \inst|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(1),
	combout => \inst|Data0[1]~feeder_combout\);

-- Location: FF_X29_Y33_N23
\inst|Data0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[1]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(1));

-- Location: FF_X29_Y33_N9
\inst1|converter1|number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[1]~feeder_combout\,
	asdata => \inst|Data0\(1),
	sload => \inst1|converter1|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(1));

-- Location: LCCOMB_X30_Y33_N6
\inst1|converter1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|LessThan2~1_combout\ = (\inst1|converter1|number\(6)) # ((\inst1|converter1|number\(3) & ((\inst1|converter1|number\(1)) # (\inst1|converter1|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(1),
	datab => \inst1|converter1|number\(2),
	datac => \inst1|converter1|number\(3),
	datad => \inst1|converter1|number\(6),
	combout => \inst1|converter1|LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y32_N8
\inst1|converter1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|LessThan2~2_combout\ = (\inst1|converter1|number\(5)) # (\inst1|converter1|number\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|number\(5),
	datad => \inst1|converter1|number\(4),
	combout => \inst1|converter1|LessThan2~2_combout\);

-- Location: LCCOMB_X30_Y32_N28
\inst1|converter1|digit_int_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_3~0_combout\ = (!\inst1|converter1|number\(10) & (!\inst1|converter1|number\(12) & !\inst1|converter1|number\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(10),
	datac => \inst1|converter1|number\(12),
	datad => \inst1|converter1|number\(11),
	combout => \inst1|converter1|digit_int_3~0_combout\);

-- Location: LCCOMB_X30_Y32_N30
\inst1|converter1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|LessThan2~0_combout\ = (!\inst1|converter1|number\(8) & (!\inst1|converter1|number\(9) & (!\inst1|converter1|number\(7) & \inst1|converter1|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(8),
	datab => \inst1|converter1|number\(9),
	datac => \inst1|converter1|number\(7),
	datad => \inst1|converter1|digit_int_3~0_combout\,
	combout => \inst1|converter1|LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y32_N14
\inst1|converter1|number~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~0_combout\ = (\inst1|converter1|state.s3~q\ & ((\inst1|converter1|LessThan2~1_combout\) # ((\inst1|converter1|LessThan2~2_combout\) # (!\inst1|converter1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|LessThan2~1_combout\,
	datab => \inst1|converter1|state.s3~q\,
	datac => \inst1|converter1|LessThan2~2_combout\,
	datad => \inst1|converter1|LessThan2~0_combout\,
	combout => \inst1|converter1|number~0_combout\);

-- Location: LCCOMB_X30_Y33_N16
\inst1|converter1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|LessThan1~0_combout\ = (\inst1|converter1|number\(2)) # ((\inst1|converter1|number\(4)) # (\inst1|converter1|number\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(2),
	datac => \inst1|converter1|number\(4),
	datad => \inst1|converter1|number\(3),
	combout => \inst1|converter1|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y32_N24
\inst1|converter1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|LessThan1~1_combout\ = ((\inst1|converter1|number\(5) & (\inst1|converter1|number\(6) & \inst1|converter1|LessThan1~0_combout\))) # (!\inst1|converter1|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(5),
	datab => \inst1|converter1|number\(6),
	datac => \inst1|converter1|LessThan2~0_combout\,
	datad => \inst1|converter1|LessThan1~0_combout\,
	combout => \inst1|converter1|LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y32_N22
\inst1|converter1|number~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~1_combout\ = (!\inst1|converter1|state.s1~q\ & ((\inst1|converter1|state.s2~q\ & ((\inst1|converter1|LessThan1~1_combout\))) # (!\inst1|converter1|state.s2~q\ & (\inst1|converter1|number~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s2~q\,
	datab => \inst1|converter1|state.s1~q\,
	datac => \inst1|converter1|number~0_combout\,
	datad => \inst1|converter1|LessThan1~1_combout\,
	combout => \inst1|converter1|number~1_combout\);

-- Location: LCCOMB_X28_Y32_N4
\inst1|converter1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~4_combout\ = (\inst1|converter1|number\(2) & (\inst1|converter1|Add0~3\ $ (GND))) # (!\inst1|converter1|number\(2) & ((GND) # (!\inst1|converter1|Add0~3\)))
-- \inst1|converter1|Add0~5\ = CARRY((!\inst1|converter1|Add0~3\) # (!\inst1|converter1|number\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(2),
	datad => VCC,
	cin => \inst1|converter1|Add0~3\,
	combout => \inst1|converter1|Add0~4_combout\,
	cout => \inst1|converter1|Add0~5\);

-- Location: LCCOMB_X28_Y32_N28
\inst1|converter1|number~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~3_combout\ = (\inst1|converter1|state.s0_s~q\ & (\inst1|converter1|number\(2))) # (!\inst1|converter1|state.s0_s~q\ & ((\inst1|converter1|number\(12) & ((\inst1|converter1|Add0~4_combout\))) # (!\inst1|converter1|number\(12) & 
-- (\inst1|converter1|number\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0_s~q\,
	datab => \inst1|converter1|number\(2),
	datac => \inst1|converter1|number\(12),
	datad => \inst1|converter1|Add0~4_combout\,
	combout => \inst1|converter1|number~3_combout\);

-- Location: LCCOMB_X29_Y33_N18
\inst1|converter1|number~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~2_combout\ = (\inst1|converter1|state.s2~q\ & (\inst1|converter1|Add3~0_combout\)) # (!\inst1|converter1|state.s2~q\ & ((\inst1|converter1|Add5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s2~q\,
	datac => \inst1|converter1|Add3~0_combout\,
	datad => \inst1|converter1|Add5~2_combout\,
	combout => \inst1|converter1|number~2_combout\);

-- Location: LCCOMB_X29_Y33_N16
\inst1|converter1|number~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~4_combout\ = (\inst1|converter1|number~1_combout\ & ((\inst1|converter1|state.s0_s~q\ & ((\inst1|converter1|number~2_combout\))) # (!\inst1|converter1|state.s0_s~q\ & (\inst1|converter1|number~3_combout\)))) # 
-- (!\inst1|converter1|number~1_combout\ & (((\inst1|converter1|number~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number~1_combout\,
	datab => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|number~3_combout\,
	datad => \inst1|converter1|number~2_combout\,
	combout => \inst1|converter1|number~4_combout\);

-- Location: LCCOMB_X29_Y33_N4
\inst1|converter1|number[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[2]~feeder_combout\ = \inst1|converter1|number~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~4_combout\,
	combout => \inst1|converter1|number[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y33_N16
\inst|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~7_combout\ = (\inst|count\(3) & (\inst|count\(2) & (!\inst|count\(1) & \inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(0),
	combout => \inst|Equal4~7_combout\);

-- Location: LCCOMB_X30_Y33_N24
\inst|data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~4_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~7_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~7_combout\ & ((\inst|data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(2),
	datad => \inst|Equal4~7_combout\,
	combout => \inst|data~4_combout\);

-- Location: FF_X30_Y33_N25
\inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~4_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(2));

-- Location: LCCOMB_X29_Y33_N26
\inst|Data0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[2]~feeder_combout\ = \inst|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(2),
	combout => \inst|Data0[2]~feeder_combout\);

-- Location: FF_X29_Y33_N27
\inst|Data0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[2]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(2));

-- Location: FF_X29_Y33_N5
\inst1|converter1|number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[2]~feeder_combout\,
	asdata => \inst|Data0\(2),
	sload => \inst1|converter1|state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(2));

-- Location: LCCOMB_X28_Y32_N6
\inst1|converter1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add0~6_combout\ = (\inst1|converter1|number\(3) & (!\inst1|converter1|Add0~5\)) # (!\inst1|converter1|number\(3) & (\inst1|converter1|Add0~5\ & VCC))
-- \inst1|converter1|Add0~7\ = CARRY((\inst1|converter1|number\(3) & !\inst1|converter1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(3),
	datad => VCC,
	cin => \inst1|converter1|Add0~5\,
	combout => \inst1|converter1|Add0~6_combout\,
	cout => \inst1|converter1|Add0~7\);

-- Location: LCCOMB_X28_Y31_N0
\inst1|converter1|number~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~11_combout\ = (\inst1|converter1|number[10]~6_combout\ & (((\inst1|converter1|number[10]~5_combout\)))) # (!\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number[10]~5_combout\ & 
-- ((\inst1|converter1|Add3~2_combout\))) # (!\inst1|converter1|number[10]~5_combout\ & (\inst1|converter1|Add5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add5~4_combout\,
	datab => \inst1|converter1|number[10]~6_combout\,
	datac => \inst1|converter1|Add3~2_combout\,
	datad => \inst1|converter1|number[10]~5_combout\,
	combout => \inst1|converter1|number~11_combout\);

-- Location: LCCOMB_X28_Y31_N30
\inst1|converter1|number~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~12_combout\ = (\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number~11_combout\ & ((\inst1|converter1|Add0~6_combout\))) # (!\inst1|converter1|number~11_combout\ & (\inst1|converter1|Add1~0_combout\)))) # 
-- (!\inst1|converter1|number[10]~6_combout\ & (((\inst1|converter1|number~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add1~0_combout\,
	datab => \inst1|converter1|number[10]~6_combout\,
	datac => \inst1|converter1|Add0~6_combout\,
	datad => \inst1|converter1|number~11_combout\,
	combout => \inst1|converter1|number~12_combout\);

-- Location: LCCOMB_X30_Y31_N16
\inst1|converter1|number[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[3]~feeder_combout\ = \inst1|converter1|number~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number~12_combout\,
	combout => \inst1|converter1|number[3]~feeder_combout\);

-- Location: LCCOMB_X32_Y33_N18
\inst|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~5_combout\ = (!\inst|count\(0) & (\inst|count\(3) & (\inst|count\(2) & !\inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~5_combout\);

-- Location: LCCOMB_X30_Y33_N28
\inst|data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~2_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~5_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~5_combout\ & ((\inst|data\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(3),
	datad => \inst|Equal4~5_combout\,
	combout => \inst|data~2_combout\);

-- Location: FF_X30_Y33_N29
\inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~2_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(3));

-- Location: LCCOMB_X30_Y31_N26
\inst|Data0[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[3]~feeder_combout\ = \inst|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(3),
	combout => \inst|Data0[3]~feeder_combout\);

-- Location: FF_X30_Y31_N27
\inst|Data0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[3]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(3));

-- Location: FF_X30_Y31_N17
\inst1|converter1|number[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[3]~feeder_combout\,
	asdata => \inst|Data0\(3),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(3));

-- Location: LCCOMB_X30_Y32_N2
\inst1|converter1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add1~2_combout\ = (\inst1|converter1|number\(4) & (\inst1|converter1|Add1~1\ & VCC)) # (!\inst1|converter1|number\(4) & (!\inst1|converter1|Add1~1\))
-- \inst1|converter1|Add1~3\ = CARRY((!\inst1|converter1|number\(4) & !\inst1|converter1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(4),
	datad => VCC,
	cin => \inst1|converter1|Add1~1\,
	combout => \inst1|converter1|Add1~2_combout\,
	cout => \inst1|converter1|Add1~3\);

-- Location: LCCOMB_X31_Y32_N20
\inst1|converter1|number~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~7_combout\ = (\inst1|converter1|number[10]~5_combout\ & (((\inst1|converter1|number[10]~6_combout\)))) # (!\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number[10]~6_combout\ & (\inst1|converter1|Add1~2_combout\)) 
-- # (!\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|Add5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add1~2_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|Add5~6_combout\,
	datad => \inst1|converter1|number[10]~6_combout\,
	combout => \inst1|converter1|number~7_combout\);

-- Location: LCCOMB_X31_Y32_N6
\inst1|converter1|number~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~8_combout\ = (\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number~7_combout\ & (\inst1|converter1|Add0~8_combout\)) # (!\inst1|converter1|number~7_combout\ & ((\inst1|converter1|Add3~4_combout\))))) # 
-- (!\inst1|converter1|number[10]~5_combout\ & (((\inst1|converter1|number~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|Add0~8_combout\,
	datab => \inst1|converter1|number[10]~5_combout\,
	datac => \inst1|converter1|Add3~4_combout\,
	datad => \inst1|converter1|number~7_combout\,
	combout => \inst1|converter1|number~8_combout\);

-- Location: LCCOMB_X31_Y32_N28
\inst1|converter1|number[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[4]~feeder_combout\ = \inst1|converter1|number~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~8_combout\,
	combout => \inst1|converter1|number[4]~feeder_combout\);

-- Location: LCCOMB_X32_Y33_N22
\inst|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~4_combout\ = (\inst|count\(0) & (\inst|count\(3) & (!\inst|count\(2) & \inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~4_combout\);

-- Location: LCCOMB_X30_Y33_N14
\inst|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~1_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~4_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~4_combout\ & ((\inst|data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(4),
	datad => \inst|Equal4~4_combout\,
	combout => \inst|data~1_combout\);

-- Location: FF_X30_Y33_N15
\inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~1_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(4));

-- Location: LCCOMB_X31_Y32_N4
\inst|Data0[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[4]~feeder_combout\ = \inst|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|data\(4),
	combout => \inst|Data0[4]~feeder_combout\);

-- Location: FF_X31_Y32_N5
\inst|Data0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[4]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(4));

-- Location: FF_X31_Y32_N29
\inst1|converter1|number[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[4]~feeder_combout\,
	asdata => \inst|Data0\(4),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(4));

-- Location: LCCOMB_X28_Y31_N2
\inst1|converter1|number~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~15_combout\ = (\inst1|converter1|number[10]~5_combout\ & ((\inst1|converter1|number[10]~6_combout\) # ((\inst1|converter1|Add3~6_combout\)))) # (!\inst1|converter1|number[10]~5_combout\ & (!\inst1|converter1|number[10]~6_combout\ 
-- & (\inst1|converter1|Add5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~5_combout\,
	datab => \inst1|converter1|number[10]~6_combout\,
	datac => \inst1|converter1|Add5~8_combout\,
	datad => \inst1|converter1|Add3~6_combout\,
	combout => \inst1|converter1|number~15_combout\);

-- Location: LCCOMB_X29_Y32_N12
\inst1|converter1|number~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number~16_combout\ = (\inst1|converter1|number[10]~6_combout\ & ((\inst1|converter1|number~15_combout\ & ((\inst1|converter1|Add0~10_combout\))) # (!\inst1|converter1|number~15_combout\ & (\inst1|converter1|Add1~4_combout\)))) # 
-- (!\inst1|converter1|number[10]~6_combout\ & (((\inst1|converter1|number~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number[10]~6_combout\,
	datab => \inst1|converter1|Add1~4_combout\,
	datac => \inst1|converter1|Add0~10_combout\,
	datad => \inst1|converter1|number~15_combout\,
	combout => \inst1|converter1|number~16_combout\);

-- Location: LCCOMB_X29_Y32_N26
\inst1|converter1|number[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|number[5]~feeder_combout\ = \inst1|converter1|number~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|number~16_combout\,
	combout => \inst1|converter1|number[5]~feeder_combout\);

-- Location: LCCOMB_X32_Y33_N6
\inst|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~6_combout\ = (!\inst|count\(0) & (\inst|count\(3) & (!\inst|count\(2) & \inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(3),
	datac => \inst|count\(2),
	datad => \inst|count\(1),
	combout => \inst|Equal4~6_combout\);

-- Location: LCCOMB_X30_Y33_N26
\inst|data~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data~3_combout\ = (!\inst|Equal4~1_combout\ & ((\inst|Equal4~6_combout\ & (\ADC_DOUT~input_o\)) # (!\inst|Equal4~6_combout\ & ((\inst|data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~1_combout\,
	datab => \ADC_DOUT~input_o\,
	datac => \inst|data\(5),
	datad => \inst|Equal4~6_combout\,
	combout => \inst|data~3_combout\);

-- Location: FF_X30_Y33_N27
\inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|data~3_combout\,
	clrn => \inst|active2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data\(5));

-- Location: LCCOMB_X29_Y32_N4
\inst|Data0[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Data0[5]~feeder_combout\ = \inst|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|data\(5),
	combout => \inst|Data0[5]~feeder_combout\);

-- Location: FF_X29_Y32_N5
\inst|Data0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_spi~clkctrl_outclk\,
	d => \inst|Data0[5]~feeder_combout\,
	ena => \inst|Data0[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Data0\(5));

-- Location: FF_X29_Y32_N27
\inst1|converter1|number[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|number[5]~feeder_combout\,
	asdata => \inst|Data0\(5),
	sload => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|number[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|number\(5));

-- Location: LCCOMB_X30_Y32_N26
\inst1|converter1|digit_int_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_3~1_combout\ = (\inst1|converter1|number\(5) & (\inst1|converter1|number\(6) & ((\inst1|converter1|number\(4)) # (\inst1|converter1|number\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|number\(5),
	datab => \inst1|converter1|number\(4),
	datac => \inst1|converter1|number\(6),
	datad => \inst1|converter1|number\(3),
	combout => \inst1|converter1|digit_int_3~1_combout\);

-- Location: LCCOMB_X30_Y32_N20
\inst1|converter1|digit_int_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_3~2_combout\ = (\inst1|converter1|number\(7) & (\inst1|converter1|number\(8) & \inst1|converter1|number\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|number\(7),
	datac => \inst1|converter1|number\(8),
	datad => \inst1|converter1|number\(9),
	combout => \inst1|converter1|digit_int_3~2_combout\);

-- Location: LCCOMB_X30_Y32_N22
\inst1|converter1|digit_int_3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_3~3_combout\ = (\inst1|converter1|state.s1~q\ & (((\inst1|converter1|digit_int_3~1_combout\ & \inst1|converter1|digit_int_3~2_combout\)) # (!\inst1|converter1|digit_int_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_3~1_combout\,
	datab => \inst1|converter1|digit_int_3~2_combout\,
	datac => \inst1|converter1|state.s1~q\,
	datad => \inst1|converter1|digit_int_3~0_combout\,
	combout => \inst1|converter1|digit_int_3~3_combout\);

-- Location: LCCOMB_X31_Y32_N16
\inst1|converter1|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~16_combout\ = (\inst1|converter1|digit_int_3~3_combout\) # ((!\inst1|converter1|state.s1~q\ & (\inst1|converter1|state.s2~q\ & \inst1|converter1|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s1~q\,
	datab => \inst1|converter1|digit_int_3~3_combout\,
	datac => \inst1|converter1|state.s2~q\,
	datad => \inst1|converter1|LessThan1~1_combout\,
	combout => \inst1|converter1|state~16_combout\);

-- Location: FF_X32_Y32_N11
\inst1|converter1|state.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|state.s4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s5~q\);

-- Location: LCCOMB_X32_Y32_N10
\inst1|converter1|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~17_combout\ = (\inst1|converter1|number~0_combout\) # ((!\inst1|converter1|state.s4~q\ & (!\inst1|converter1|state.s3~q\ & !\inst1|converter1|state.s5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s4~q\,
	datab => \inst1|converter1|state.s3~q\,
	datac => \inst1|converter1|state.s5~q\,
	datad => \inst1|converter1|number~0_combout\,
	combout => \inst1|converter1|state~17_combout\);

-- Location: LCCOMB_X32_Y32_N24
\inst1|converter1|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~18_combout\ = (\inst1|converter1|state~16_combout\) # ((!\inst1|converter1|state.s2~q\ & (!\inst1|converter1|state.s1~q\ & \inst1|converter1|state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s2~q\,
	datab => \inst1|converter1|state.s1~q\,
	datac => \inst1|converter1|state~16_combout\,
	datad => \inst1|converter1|state~17_combout\,
	combout => \inst1|converter1|state~18_combout\);

-- Location: LCCOMB_X32_Y32_N2
\inst1|converter1|state~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~25_combout\ = (\inst1|converter1|state.s0_s~q\ & (\inst1|converter1|state.s1~q\ & (\inst1|converter1|state.s0~q\ $ (\inst1|converter1|state~18_combout\)))) # (!\inst1|converter1|state.s0_s~q\ & (((\inst1|converter1|state.s1~q\)) # 
-- (!\inst1|converter1|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0_s~q\,
	datab => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|state.s1~q\,
	datad => \inst1|converter1|state~18_combout\,
	combout => \inst1|converter1|state~25_combout\);

-- Location: FF_X32_Y32_N3
\inst1|converter1|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s1~q\);

-- Location: LCCOMB_X32_Y32_N20
\inst1|converter1|state~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~21_combout\ = \inst1|converter1|state.s0~q\ $ (((\inst1|converter1|state.s0_s~q\ & \inst1|converter1|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|state.s0_s~q\,
	datad => \inst1|converter1|state~18_combout\,
	combout => \inst1|converter1|state~21_combout\);

-- Location: LCCOMB_X32_Y32_N30
\inst1|converter1|state~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~22_combout\ = (\inst1|converter1|state~21_combout\ & (((\inst1|converter1|state.s2~q\)))) # (!\inst1|converter1|state~21_combout\ & (\inst1|converter1|state.s1~q\ & (!\inst1|converter1|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s1~q\,
	datab => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|state.s2~q\,
	datad => \inst1|converter1|state~21_combout\,
	combout => \inst1|converter1|state~22_combout\);

-- Location: FF_X32_Y32_N31
\inst1|converter1|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s2~q\);

-- Location: LCCOMB_X32_Y32_N22
\inst1|converter1|state~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~24_combout\ = (\inst1|converter1|state~21_combout\ & (((\inst1|converter1|state.s3~q\)))) # (!\inst1|converter1|state~21_combout\ & (\inst1|converter1|state.s2~q\ & (!\inst1|converter1|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s2~q\,
	datab => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|state.s3~q\,
	datad => \inst1|converter1|state~21_combout\,
	combout => \inst1|converter1|state~24_combout\);

-- Location: FF_X32_Y32_N23
\inst1|converter1|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s3~q\);

-- Location: LCCOMB_X32_Y32_N6
\inst1|converter1|state~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~23_combout\ = (\inst1|converter1|state~21_combout\ & (((\inst1|converter1|state.s4~q\)))) # (!\inst1|converter1|state~21_combout\ & (\inst1|converter1|state.s3~q\ & (!\inst1|converter1|state.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s3~q\,
	datab => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|state.s4~q\,
	datad => \inst1|converter1|state~21_combout\,
	combout => \inst1|converter1|state~23_combout\);

-- Location: FF_X32_Y32_N7
\inst1|converter1|state.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s4~q\);

-- Location: LCCOMB_X32_Y32_N12
\inst1|converter1|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~19_combout\ = (\inst1|converter1|state.s4~q\) # ((\inst1|converter1|state.s1~q\) # ((\inst1|converter1|state.s2~q\) # (\inst1|converter1|state.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s4~q\,
	datab => \inst1|converter1|state.s1~q\,
	datac => \inst1|converter1|state.s2~q\,
	datad => \inst1|converter1|state.s3~q\,
	combout => \inst1|converter1|state~19_combout\);

-- Location: LCCOMB_X32_Y32_N16
\inst1|converter1|state~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|state~20_combout\ = (!\inst1|converter1|state~19_combout\ & (\inst1|converter1|state.s0_s~q\ & (!\inst1|converter1|state.s0~q\ & !\inst1|converter1|state~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state~19_combout\,
	datab => \inst1|converter1|state.s0_s~q\,
	datac => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|state~18_combout\,
	combout => \inst1|converter1|state~20_combout\);

-- Location: FF_X32_Y32_N17
\inst1|converter1|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|state~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|state.s0~q\);

-- Location: LCCOMB_X39_Y32_N26
\inst1|converter1|digit_int_3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_3~5_combout\ = (!\inst1|converter1|state.s0~q\ & !\inst1|converter1|digit_int_3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|digit_int_3\(0),
	combout => \inst1|converter1|digit_int_3~5_combout\);

-- Location: LCCOMB_X39_Y32_N16
\inst1|converter1|digit_int_3[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_3[2]~4_combout\ = (\inst1|converter1|state.s0~q\) # (\inst1|converter1|digit_int_3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|digit_int_3~3_combout\,
	combout => \inst1|converter1|digit_int_3[2]~4_combout\);

-- Location: FF_X39_Y32_N27
\inst1|converter1|digit_int_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_3~5_combout\,
	ena => \inst1|converter1|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_3\(0));

-- Location: LCCOMB_X39_Y32_N28
\inst1|converter1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add2~2_combout\ = \inst1|converter1|digit_int_3\(0) $ (\inst1|converter1|digit_int_3\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_3\(0),
	datac => \inst1|converter1|digit_int_3\(1),
	combout => \inst1|converter1|Add2~2_combout\);

-- Location: FF_X39_Y32_N29
\inst1|converter1|digit_int_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add2~2_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_3\(1));

-- Location: LCCOMB_X39_Y32_N6
\inst1|converter1|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add2~1_combout\ = \inst1|converter1|digit_int_3\(2) $ (((\inst1|converter1|digit_int_3\(0) & \inst1|converter1|digit_int_3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_3\(0),
	datac => \inst1|converter1|digit_int_3\(2),
	datad => \inst1|converter1|digit_int_3\(1),
	combout => \inst1|converter1|Add2~1_combout\);

-- Location: FF_X39_Y32_N7
\inst1|converter1|digit_int_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add2~1_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_3\(2));

-- Location: LCCOMB_X39_Y32_N8
\inst1|converter1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add2~0_combout\ = \inst1|converter1|digit_int_3\(3) $ (((\inst1|converter1|digit_int_3\(0) & (\inst1|converter1|digit_int_3\(1) & \inst1|converter1|digit_int_3\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_3\(0),
	datab => \inst1|converter1|digit_int_3\(1),
	datac => \inst1|converter1|digit_int_3\(3),
	datad => \inst1|converter1|digit_int_3\(2),
	combout => \inst1|converter1|Add2~0_combout\);

-- Location: FF_X39_Y32_N9
\inst1|converter1|digit_int_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add2~0_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_3[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_3\(3));

-- Location: LCCOMB_X43_Y30_N8
\inst1|converter1|digit_out_3[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_out_3[3]~feeder_combout\ = \inst1|converter1|digit_int_3\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|digit_int_3\(3),
	combout => \inst1|converter1|digit_out_3[3]~feeder_combout\);

-- Location: FF_X43_Y30_N9
\inst1|converter1|digit_out_3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_out_3[3]~feeder_combout\,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_3\(3));

-- Location: LCCOMB_X36_Y32_N6
\inst1|converter1|digit_int_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_1~1_combout\ = (!\inst1|converter1|state.s0~q\ & !\inst1|converter1|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|digit_int_1\(0),
	combout => \inst1|converter1|digit_int_1~1_combout\);

-- Location: LCCOMB_X36_Y32_N2
\inst1|converter1|digit_int_1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_1[2]~0_combout\ = (\inst1|converter1|state.s0~q\) # (\inst1|converter1|number~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|number~0_combout\,
	combout => \inst1|converter1|digit_int_1[2]~0_combout\);

-- Location: FF_X36_Y32_N7
\inst1|converter1|digit_int_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_1~1_combout\,
	ena => \inst1|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_1\(0));

-- Location: LCCOMB_X36_Y32_N4
\inst1|converter1|Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add6~2_combout\ = \inst1|converter1|digit_int_1\(1) $ (\inst1|converter1|digit_int_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|digit_int_1\(1),
	datad => \inst1|converter1|digit_int_1\(0),
	combout => \inst1|converter1|Add6~2_combout\);

-- Location: FF_X36_Y32_N5
\inst1|converter1|digit_int_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add6~2_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_1\(1));

-- Location: LCCOMB_X36_Y32_N10
\inst1|converter1|Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add6~1_combout\ = \inst1|converter1|digit_int_1\(2) $ (((\inst1|converter1|digit_int_1\(0) & \inst1|converter1|digit_int_1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_1\(0),
	datab => \inst1|converter1|digit_int_1\(1),
	datac => \inst1|converter1|digit_int_1\(2),
	combout => \inst1|converter1|Add6~1_combout\);

-- Location: FF_X36_Y32_N11
\inst1|converter1|digit_int_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add6~1_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_1\(2));

-- Location: LCCOMB_X36_Y32_N22
\inst1|converter1|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add6~0_combout\ = \inst1|converter1|digit_int_1\(3) $ (((\inst1|converter1|digit_int_1\(2) & (\inst1|converter1|digit_int_1\(1) & \inst1|converter1|digit_int_1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_1\(2),
	datab => \inst1|converter1|digit_int_1\(1),
	datac => \inst1|converter1|digit_int_1\(3),
	datad => \inst1|converter1|digit_int_1\(0),
	combout => \inst1|converter1|Add6~0_combout\);

-- Location: FF_X36_Y32_N23
\inst1|converter1|digit_int_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add6~0_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_1\(3));

-- Location: FF_X43_Y30_N23
\inst1|converter1|digit_out_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_1\(3),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_1\(3));

-- Location: LCCOMB_X43_Y30_N22
\inst1|lcd_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~64_combout\ = ((\inst1|charCount\(1) & ((\inst1|converter1|digit_out_1\(3)))) # (!\inst1|charCount\(1) & (\inst1|converter1|digit_out_3\(3)))) # (!\inst1|charCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|converter1|digit_out_3\(3),
	datac => \inst1|converter1|digit_out_1\(3),
	datad => \inst1|charCount\(3),
	combout => \inst1|lcd_data~64_combout\);

-- Location: LCCOMB_X32_Y32_N18
\inst1|converter1|digit_int_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_0~0_combout\ = (!\inst1|converter1|state.s0~q\ & \inst1|converter1|number\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|number\(3),
	combout => \inst1|converter1|digit_int_0~0_combout\);

-- Location: LCCOMB_X32_Y32_N4
\inst1|converter1|digit_int_0[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_0[1]~1_combout\ = (\inst1|converter1|state.s0~q\) # (\inst1|converter1|state.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|state.s4~q\,
	combout => \inst1|converter1|digit_int_0[1]~1_combout\);

-- Location: FF_X32_Y32_N19
\inst1|converter1|digit_int_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_0~0_combout\,
	ena => \inst1|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_0\(3));

-- Location: FF_X43_Y30_N11
\inst1|converter1|digit_out_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_0\(3),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_0\(3));

-- Location: LCCOMB_X43_Y30_N10
\inst1|lcd_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~66_combout\ = (\inst1|lcd_data~65_combout\ & (((!\inst1|charCount\(1) & \inst1|converter1|digit_out_0\(3))) # (!\inst1|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(3),
	datac => \inst1|converter1|digit_out_0\(3),
	datad => \inst1|lcd_data~65_combout\,
	combout => \inst1|lcd_data~66_combout\);

-- Location: LCCOMB_X43_Y30_N16
\inst1|lcd_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~67_combout\ = (\inst1|lcd_data~66_combout\) # ((!\inst1|charCount\(2) & (\inst1|charCount\(0) & \inst1|lcd_data~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(0),
	datac => \inst1|lcd_data~64_combout\,
	datad => \inst1|lcd_data~66_combout\,
	combout => \inst1|lcd_data~67_combout\);

-- Location: LCCOMB_X36_Y32_N20
\inst1|converter1|digit_int_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_2~1_combout\ = (!\inst1|converter1|state.s0~q\ & !\inst1|converter1|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s0~q\,
	datac => \inst1|converter1|digit_int_2\(0),
	combout => \inst1|converter1|digit_int_2~1_combout\);

-- Location: LCCOMB_X36_Y32_N28
\inst1|converter1|digit_int_2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_2[2]~0_combout\ = (\inst1|converter1|state.s0~q\) # ((\inst1|converter1|state.s2~q\ & \inst1|converter1|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|state.s2~q\,
	datac => \inst1|converter1|state.s0~q\,
	datad => \inst1|converter1|LessThan1~1_combout\,
	combout => \inst1|converter1|digit_int_2[2]~0_combout\);

-- Location: FF_X36_Y32_N21
\inst1|converter1|digit_int_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_2~1_combout\,
	ena => \inst1|converter1|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_2\(0));

-- Location: LCCOMB_X36_Y32_N18
\inst1|converter1|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add4~2_combout\ = \inst1|converter1|digit_int_2\(1) $ (\inst1|converter1|digit_int_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|digit_int_2\(1),
	datad => \inst1|converter1|digit_int_2\(0),
	combout => \inst1|converter1|Add4~2_combout\);

-- Location: FF_X36_Y32_N19
\inst1|converter1|digit_int_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add4~2_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_2\(1));

-- Location: LCCOMB_X36_Y32_N24
\inst1|converter1|Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add4~1_combout\ = \inst1|converter1|digit_int_2\(2) $ (((\inst1|converter1|digit_int_2\(0) & \inst1|converter1|digit_int_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|converter1|digit_int_2\(0),
	datac => \inst1|converter1|digit_int_2\(2),
	datad => \inst1|converter1|digit_int_2\(1),
	combout => \inst1|converter1|Add4~1_combout\);

-- Location: FF_X36_Y32_N25
\inst1|converter1|digit_int_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add4~1_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_2\(2));

-- Location: LCCOMB_X36_Y32_N12
\inst1|converter1|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|Add4~0_combout\ = \inst1|converter1|digit_int_2\(3) $ (((\inst1|converter1|digit_int_2\(2) & (\inst1|converter1|digit_int_2\(1) & \inst1|converter1|digit_int_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_int_2\(2),
	datab => \inst1|converter1|digit_int_2\(1),
	datac => \inst1|converter1|digit_int_2\(3),
	datad => \inst1|converter1|digit_int_2\(0),
	combout => \inst1|converter1|Add4~0_combout\);

-- Location: FF_X36_Y32_N13
\inst1|converter1|digit_int_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|Add4~0_combout\,
	sclr => \inst1|converter1|state.s0~q\,
	ena => \inst1|converter1|digit_int_2[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_2\(3));

-- Location: FF_X43_Y30_N1
\inst1|converter1|digit_out_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_2\(3),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_2\(3));

-- Location: LCCOMB_X43_Y30_N0
\inst1|lcd_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~68_combout\ = (\inst1|lcd_data~11_combout\ & ((\inst1|lcd_data~67_combout\) # ((\inst1|lcd_data~63_combout\ & \inst1|converter1|digit_out_2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~63_combout\,
	datab => \inst1|lcd_data~67_combout\,
	datac => \inst1|converter1|digit_out_2\(3),
	datad => \inst1|lcd_data~11_combout\,
	combout => \inst1|lcd_data~68_combout\);

-- Location: LCCOMB_X43_Y31_N28
\inst1|lcd_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~60_combout\ = (\inst1|charCount\(1) & (!\inst1|charCount\(0) & (\inst1|charCount\(3)))) # (!\inst1|charCount\(1) & ((\inst1|charCount\(3) & ((!\inst1|charCount\(2)))) # (!\inst1|charCount\(3) & (\inst1|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~60_combout\);

-- Location: LCCOMB_X43_Y31_N18
\inst1|lcd_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~59_combout\ = (\inst1|charCount\(1) & ((\inst1|charCount\(0)) # ((!\inst1|charCount\(2))))) # (!\inst1|charCount\(1) & (\inst1|charCount\(2) $ (((\inst1|charCount\(0) & !\inst1|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~59_combout\);

-- Location: LCCOMB_X43_Y31_N22
\inst1|lcd_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~61_combout\ = (\inst1|charCount\(4) & (((\inst1|lineCount\(1))))) # (!\inst1|charCount\(4) & (\inst1|lcd_data~60_combout\ $ (((\inst1|lineCount\(1) & \inst1|lcd_data~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(4),
	datab => \inst1|lcd_data~60_combout\,
	datac => \inst1|lineCount\(1),
	datad => \inst1|lcd_data~59_combout\,
	combout => \inst1|lcd_data~61_combout\);

-- Location: LCCOMB_X44_Y30_N30
\inst1|lcd_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~54_combout\ = (\inst1|charCount\(0) & (!\inst1|charCount\(3) & !\inst1|charCount\(2))) # (!\inst1|charCount\(0) & ((\inst1|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~54_combout\);

-- Location: LCCOMB_X44_Y30_N8
\inst1|lcd_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~55_combout\ = (!\inst1|charCount\(0) & !\inst1|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~55_combout\);

-- Location: LCCOMB_X44_Y30_N26
\inst1|lcd_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~56_combout\ = (\inst1|charCount\(1) & (\inst1|charCount\(3) & (\inst1|lcd_data~55_combout\ & !\inst1|charCount\(4)))) # (!\inst1|charCount\(1) & (((\inst1|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|lcd_data~55_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~56_combout\);

-- Location: LCCOMB_X44_Y30_N0
\inst1|lcd_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~57_combout\ = (\inst1|charCount\(1) & (((\inst1|lcd_data~56_combout\)))) # (!\inst1|charCount\(1) & ((\inst1|lcd_data~48_combout\) # ((\inst1|lcd_data~54_combout\ & !\inst1|lcd_data~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~54_combout\,
	datab => \inst1|lcd_data~48_combout\,
	datac => \inst1|lcd_data~56_combout\,
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~57_combout\);

-- Location: LCCOMB_X43_Y31_N16
\inst1|lcd_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~58_combout\ = (\inst1|lineCount\(0) & ((\inst1|lcd_data~57_combout\))) # (!\inst1|lineCount\(0) & (\inst1|lcd_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datac => \inst1|lcd_data\(3),
	datad => \inst1|lcd_data~57_combout\,
	combout => \inst1|lcd_data~58_combout\);

-- Location: LCCOMB_X43_Y31_N20
\inst1|lcd_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~62_combout\ = (\inst1|lineCount\(0) & ((\inst1|lineCount\(1) & ((\inst1|lcd_data~58_combout\))) # (!\inst1|lineCount\(1) & (\inst1|lcd_data~61_combout\)))) # (!\inst1|lineCount\(0) & ((\inst1|lineCount\(1) & (!\inst1|lcd_data~61_combout\)) 
-- # (!\inst1|lineCount\(1) & ((\inst1|lcd_data~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datab => \inst1|lineCount\(1),
	datac => \inst1|lcd_data~61_combout\,
	datad => \inst1|lcd_data~58_combout\,
	combout => \inst1|lcd_data~62_combout\);

-- Location: LCCOMB_X43_Y31_N6
\inst1|lcd_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~69_combout\ = (\inst1|lcd_data~68_combout\) # ((\inst1|Equal15~0_combout\ & (!\inst1|display_state~q\ & \inst1|lcd_data~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal15~0_combout\,
	datab => \inst1|lcd_data~68_combout\,
	datac => \inst1|display_state~q\,
	datad => \inst1|lcd_data~62_combout\,
	combout => \inst1|lcd_data~69_combout\);

-- Location: LCCOMB_X43_Y31_N30
\inst1|lcd_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~70_combout\ = (\inst1|lcd_data~53_combout\) # ((\inst1|lcd_data~51_combout\) # (\inst1|lcd_data~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~53_combout\,
	datac => \inst1|lcd_data~51_combout\,
	datad => \inst1|lcd_data~69_combout\,
	combout => \inst1|lcd_data~70_combout\);

-- Location: FF_X43_Y31_N31
\inst1|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(3));

-- Location: FF_X46_Y31_N21
\inst2|dataStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lcd_data\(3),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(3));

-- Location: LCCOMB_X46_Y31_N20
\inst2|dataOut[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~10_combout\ = (\inst2|state.sendingAddress~q\ & (\inst2|addressStorage\(3))) # (!\inst2|state.sendingAddress~q\ & (((\inst2|dataStorage\(3) & \inst2|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|addressStorage\(3),
	datac => \inst2|dataStorage\(3),
	datad => \inst2|state.sendingData~q\,
	combout => \inst2|dataOut[3]~10_combout\);

-- Location: LCCOMB_X46_Y31_N26
\inst2|dataOut[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[3]~11_combout\ = (\inst2|dataOut[3]~9_combout\) # ((\inst2|dataOut[1]~1_combout\ & (\inst2|dataOut[3]~10_combout\ & !\inst2|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[1]~1_combout\,
	datab => \inst2|dataOut[3]~9_combout\,
	datac => \inst2|dataOut[3]~10_combout\,
	datad => \inst2|state.init7~q\,
	combout => \inst2|dataOut[3]~11_combout\);

-- Location: LCCOMB_X40_Y31_N0
\inst1|lcd_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~79_combout\ = (\inst1|charCount\(0) & (\inst1|charCount\(2) $ (((\inst1|charCount\(3) & \inst1|charCount\(1)))))) # (!\inst1|charCount\(0) & (!\inst1|charCount\(2) & (\inst1|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~79_combout\);

-- Location: LCCOMB_X40_Y31_N30
\inst1|lcd_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~80_combout\ = (\inst1|lcd_data~48_combout\) # ((!\inst1|charCount\(4) & \inst1|lcd_data~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(4),
	datac => \inst1|lcd_data~48_combout\,
	datad => \inst1|lcd_data~79_combout\,
	combout => \inst1|lcd_data~80_combout\);

-- Location: LCCOMB_X44_Y31_N20
\inst1|lcd_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~81_combout\ = (!\inst1|charCount\(2) & (\inst1|charCount\(0) $ (((\inst1|charCount\(1) & \inst1|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~81_combout\);

-- Location: LCCOMB_X44_Y31_N24
\inst1|lcd_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~82_combout\ = (!\inst1|charCount\(4) & \inst1|lcd_data~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(4),
	datad => \inst1|lcd_data~81_combout\,
	combout => \inst1|lcd_data~82_combout\);

-- Location: LCCOMB_X44_Y31_N6
\inst1|lcd_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~83_combout\ = (\inst1|lineCount\(1) & ((\inst1|lineCount\(0)) # ((\inst1|lcd_data~82_combout\)))) # (!\inst1|lineCount\(1) & (!\inst1|lineCount\(0) & (\inst1|lcd_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lineCount\(0),
	datac => \inst1|lcd_data\(2),
	datad => \inst1|lcd_data~82_combout\,
	combout => \inst1|lcd_data~83_combout\);

-- Location: LCCOMB_X40_Y31_N14
\inst1|lcd_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~85_combout\ = (\inst1|charCount\(2) & (\inst1|charCount\(0) $ ((\inst1|charCount\(3))))) # (!\inst1|charCount\(2) & (!\inst1|charCount\(0) & (\inst1|charCount\(3) & \inst1|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~85_combout\);

-- Location: LCCOMB_X40_Y31_N8
\inst1|lcd_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~84_combout\ = (\inst1|charCount\(3) & (!\inst1|charCount\(4) & \inst1|charCount\(0))) # (!\inst1|charCount\(3) & ((\inst1|charCount\(0)) # (!\inst1|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(3),
	datac => \inst1|charCount\(4),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~84_combout\);

-- Location: LCCOMB_X40_Y31_N24
\inst1|lcd_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~86_combout\ = (\inst1|charCount\(4) & (((\inst1|lcd_data~84_combout\ & \inst1|lcd_data~49_combout\)))) # (!\inst1|charCount\(4) & ((\inst1|lcd_data~85_combout\) # ((\inst1|lcd_data~84_combout\ & \inst1|lcd_data~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(4),
	datab => \inst1|lcd_data~85_combout\,
	datac => \inst1|lcd_data~84_combout\,
	datad => \inst1|lcd_data~49_combout\,
	combout => \inst1|lcd_data~86_combout\);

-- Location: LCCOMB_X41_Y31_N10
\inst1|lcd_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~87_combout\ = (\inst1|lineCount\(0) & ((\inst1|lcd_data~83_combout\ & ((\inst1|lcd_data~86_combout\))) # (!\inst1|lcd_data~83_combout\ & (\inst1|lcd_data~80_combout\)))) # (!\inst1|lineCount\(0) & (((\inst1|lcd_data~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(0),
	datab => \inst1|lcd_data~80_combout\,
	datac => \inst1|lcd_data~83_combout\,
	datad => \inst1|lcd_data~86_combout\,
	combout => \inst1|lcd_data~87_combout\);

-- Location: LCCOMB_X40_Y32_N2
\inst1|lcd_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~75_combout\ = (\inst1|charCount\(3) & (\inst1|charCount\(0))) # (!\inst1|charCount\(3) & ((\inst1|charCount\(2) & ((!\inst1|charCount\(1)))) # (!\inst1|charCount\(2) & (\inst1|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~75_combout\);

-- Location: FF_X40_Y32_N13
\inst1|converter1|digit_out_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_1\(2),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_1\(2));

-- Location: FF_X40_Y32_N27
\inst1|converter1|digit_out_3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_3\(2),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_3\(2));

-- Location: LCCOMB_X40_Y32_N26
\inst1|lcd_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~76_combout\ = (!\inst1|charCount\(2) & ((\inst1|charCount\(1) & (\inst1|converter1|digit_out_1\(2))) # (!\inst1|charCount\(1) & ((\inst1|converter1|digit_out_3\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_out_1\(2),
	datab => \inst1|charCount\(1),
	datac => \inst1|converter1|digit_out_3\(2),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~76_combout\);

-- Location: LCCOMB_X32_Y32_N26
\inst1|converter1|digit_int_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_0~2_combout\ = (\inst1|converter1|number\(2) & !\inst1|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|number\(2),
	datad => \inst1|converter1|state.s0~q\,
	combout => \inst1|converter1|digit_int_0~2_combout\);

-- Location: FF_X32_Y32_N27
\inst1|converter1|digit_int_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_0~2_combout\,
	ena => \inst1|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_0\(2));

-- Location: LCCOMB_X40_Y32_N22
\inst1|converter1|digit_out_0[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_out_0[2]~feeder_combout\ = \inst1|converter1|digit_int_0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|digit_int_0\(2),
	combout => \inst1|converter1|digit_out_0[2]~feeder_combout\);

-- Location: FF_X40_Y32_N23
\inst1|converter1|digit_out_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_out_0[2]~feeder_combout\,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_0\(2));

-- Location: FF_X40_Y32_N25
\inst1|converter1|digit_out_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_2\(2),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_2\(2));

-- Location: LCCOMB_X40_Y32_N24
\inst1|lcd_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~74_combout\ = (\inst1|charCount\(1) & (((\inst1|converter1|digit_out_2\(2) & !\inst1|charCount\(2))))) # (!\inst1|charCount\(1) & (\inst1|converter1|digit_out_0\(2) & ((\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_out_0\(2),
	datab => \inst1|charCount\(1),
	datac => \inst1|converter1|digit_out_2\(2),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~74_combout\);

-- Location: LCCOMB_X40_Y32_N16
\inst1|lcd_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~77_combout\ = (\inst1|charCount\(3) & ((\inst1|lcd_data~75_combout\ & (\inst1|lcd_data~76_combout\)) # (!\inst1|lcd_data~75_combout\ & ((\inst1|lcd_data~74_combout\))))) # (!\inst1|charCount\(3) & (\inst1|lcd_data~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|lcd_data~75_combout\,
	datac => \inst1|lcd_data~76_combout\,
	datad => \inst1|lcd_data~74_combout\,
	combout => \inst1|lcd_data~77_combout\);

-- Location: LCCOMB_X40_Y32_N12
\inst1|lcd_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~78_combout\ = (\inst1|lcd_data~77_combout\ & \inst1|lcd_data~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_data~77_combout\,
	datad => \inst1|lcd_data~11_combout\,
	combout => \inst1|lcd_data~78_combout\);

-- Location: LCCOMB_X41_Y31_N22
\inst1|lcd_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~72_combout\ = (\inst1|charCount\(1) & (\inst1|charCount\(3) & (!\inst1|charCount\(0) & \inst1|charCount\(2)))) # (!\inst1|charCount\(1) & (\inst1|charCount\(3) $ (((\inst1|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~72_combout\);

-- Location: LCCOMB_X44_Y31_N22
\inst1|lcd_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~71_combout\ = (\inst1|lcd_data~7_combout\ & (\inst1|charCount\(4) & (\inst1|charCount\(1) $ (\inst1|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|lcd_data~7_combout\,
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~71_combout\);

-- Location: LCCOMB_X41_Y31_N16
\inst1|lcd_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~73_combout\ = (\inst1|lcd_data~6_combout\ & ((\inst1|lcd_data~71_combout\) # ((\inst1|lcd_data~72_combout\ & !\inst1|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~72_combout\,
	datab => \inst1|charCount\(4),
	datac => \inst1|lcd_data~6_combout\,
	datad => \inst1|lcd_data~71_combout\,
	combout => \inst1|lcd_data~73_combout\);

-- Location: LCCOMB_X41_Y31_N2
\inst1|lcd_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~88_combout\ = (\inst1|lcd_data~78_combout\) # ((\inst1|lcd_data~73_combout\) # ((\inst1|lcd_data~87_combout\ & \inst1|lcd_data~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~87_combout\,
	datab => \inst1|lcd_data~23_combout\,
	datac => \inst1|lcd_data~78_combout\,
	datad => \inst1|lcd_data~73_combout\,
	combout => \inst1|lcd_data~88_combout\);

-- Location: FF_X41_Y31_N3
\inst1|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(2));

-- Location: LCCOMB_X45_Y31_N12
\inst2|dataStorage[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[2]~2_combout\ = !\inst1|lcd_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|lcd_data\(2),
	combout => \inst2|dataStorage[2]~2_combout\);

-- Location: FF_X45_Y31_N13
\inst2|dataStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[2]~2_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(2));

-- Location: LCCOMB_X45_Y31_N18
\inst2|addressStorage~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage~3_combout\ = \inst1|lcd_posX\(2) $ (\inst1|lcd_posY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_posX\(2),
	datad => \inst1|lcd_posY\(1),
	combout => \inst2|addressStorage~3_combout\);

-- Location: FF_X45_Y31_N19
\inst2|addressStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage~3_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(2));

-- Location: LCCOMB_X45_Y31_N6
\inst2|dataOut[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[2]~12_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(2))))) # (!\inst2|state.sendingAddress~q\ & (!\inst2|dataStorage\(2) & (\inst2|state.sendingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataStorage\(2),
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|state.sendingAddress~q\,
	datad => \inst2|addressStorage\(2),
	combout => \inst2|dataOut[2]~12_combout\);

-- Location: LCCOMB_X46_Y31_N16
\inst2|dataOut[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[2]~13_combout\ = (\inst2|dataOut[3]~5_combout\ & (\inst2|state.init0~q\ & ((!\inst2|state.init6~q\)))) # (!\inst2|dataOut[3]~5_combout\ & (((\inst2|dataOut[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[3]~5_combout\,
	datab => \inst2|state.init0~q\,
	datac => \inst2|dataOut[2]~12_combout\,
	datad => \inst2|state.init6~q\,
	combout => \inst2|dataOut[2]~13_combout\);

-- Location: LCCOMB_X40_Y31_N10
\inst1|lcd_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~89_combout\ = (\inst1|lcd_data~50_combout\ & ((\inst1|charCount\(2) & ((!\inst1|charCount\(1)) # (!\inst1|charCount\(3)))) # (!\inst1|charCount\(2) & ((\inst1|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|lcd_data~50_combout\,
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~89_combout\);

-- Location: LCCOMB_X40_Y31_N12
\inst1|lcd_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~90_combout\ = (\inst1|lcd_data~6_combout\ & ((\inst1|lcd_data~89_combout\) # ((\inst1|lcd_data~48_combout\ & !\inst1|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~89_combout\,
	datab => \inst1|lcd_data~6_combout\,
	datac => \inst1|lcd_data~48_combout\,
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~90_combout\);

-- Location: LCCOMB_X43_Y30_N24
\inst1|converter1|digit_out_1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_out_1[1]~feeder_combout\ = \inst1|converter1|digit_int_1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|digit_int_1\(1),
	combout => \inst1|converter1|digit_out_1[1]~feeder_combout\);

-- Location: FF_X43_Y30_N25
\inst1|converter1|digit_out_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_out_1[1]~feeder_combout\,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_1\(1));

-- Location: FF_X43_Y30_N7
\inst1|converter1|digit_out_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_2\(1),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_2\(1));

-- Location: LCCOMB_X43_Y30_N6
\inst1|lcd_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~93_combout\ = (!\inst1|charCount\(2) & ((\inst1|charCount\(0) & (\inst1|converter1|digit_out_1\(1))) # (!\inst1|charCount\(0) & ((\inst1|converter1|digit_out_2\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|converter1|digit_out_1\(1),
	datac => \inst1|converter1|digit_out_2\(1),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~93_combout\);

-- Location: LCCOMB_X32_Y32_N8
\inst1|converter1|digit_int_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_0~3_combout\ = (\inst1|converter1|number\(1) & !\inst1|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|number\(1),
	datad => \inst1|converter1|state.s0~q\,
	combout => \inst1|converter1|digit_int_0~3_combout\);

-- Location: FF_X32_Y32_N9
\inst1|converter1|digit_int_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_0~3_combout\,
	ena => \inst1|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_0\(1));

-- Location: LCCOMB_X43_Y30_N14
\inst1|converter1|digit_out_0[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_out_0[1]~feeder_combout\ = \inst1|converter1|digit_int_0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|digit_int_0\(1),
	combout => \inst1|converter1|digit_out_0[1]~feeder_combout\);

-- Location: FF_X43_Y30_N15
\inst1|converter1|digit_out_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_out_0[1]~feeder_combout\,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_0\(1));

-- Location: FF_X43_Y30_N13
\inst1|converter1|digit_out_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_3\(1),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_3\(1));

-- Location: LCCOMB_X43_Y30_N12
\inst1|lcd_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~91_combout\ = (\inst1|charCount\(2) & (\inst1|converter1|digit_out_0\(1) & ((!\inst1|charCount\(0))))) # (!\inst1|charCount\(2) & (((\inst1|converter1|digit_out_3\(1) & \inst1|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|converter1|digit_out_0\(1),
	datac => \inst1|converter1|digit_out_3\(1),
	datad => \inst1|charCount\(0),
	combout => \inst1|lcd_data~91_combout\);

-- Location: LCCOMB_X43_Y30_N26
\inst1|lcd_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~92_combout\ = (\inst1|charCount\(3) & ((\inst1|lcd_data~91_combout\) # ((\inst1|charCount\(1))))) # (!\inst1|charCount\(3) & (((!\inst1|lcd_data~55_combout\ & !\inst1|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~91_combout\,
	datab => \inst1|charCount\(3),
	datac => \inst1|lcd_data~55_combout\,
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~92_combout\);

-- Location: LCCOMB_X43_Y30_N4
\inst1|lcd_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~94_combout\ = (\inst1|charCount\(1) & ((\inst1|lcd_data~92_combout\ & (\inst1|lcd_data~93_combout\)) # (!\inst1|lcd_data~92_combout\ & ((\inst1|lcd_data~65_combout\))))) # (!\inst1|charCount\(1) & (((\inst1|lcd_data~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~93_combout\,
	datab => \inst1|charCount\(1),
	datac => \inst1|lcd_data~92_combout\,
	datad => \inst1|lcd_data~65_combout\,
	combout => \inst1|lcd_data~94_combout\);

-- Location: LCCOMB_X43_Y30_N2
\inst1|lcd_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~95_combout\ = (\inst1|lcd_data~94_combout\ & \inst1|lcd_data~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|lcd_data~94_combout\,
	datad => \inst1|lcd_data~11_combout\,
	combout => \inst1|lcd_data~95_combout\);

-- Location: LCCOMB_X44_Y30_N14
\inst1|lcd_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~96_combout\ = (!\inst1|charCount\(4) & ((\inst1|charCount\(3) & (!\inst1|charCount\(1) & \inst1|lcd_data~55_combout\)) # (!\inst1|charCount\(3) & ((\inst1|lcd_data~55_combout\) # (!\inst1|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(1),
	datac => \inst1|lcd_data~55_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~96_combout\);

-- Location: LCCOMB_X44_Y31_N4
\inst1|lcd_data~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~5_combout\ = (\inst1|charCount\(0) & (!\inst1|charCount\(4) & ((\inst1|charCount\(3)) # (!\inst1|charCount\(2))))) # (!\inst1|charCount\(0) & (!\inst1|charCount\(3) & ((!\inst1|charCount\(2)) # (!\inst1|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(4),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~5_combout\);

-- Location: LCCOMB_X44_Y31_N10
\inst1|lcd_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~4_combout\ = (\inst1|charCount\(4) & (!\inst1|charCount\(0) & (!\inst1|charCount\(3) & !\inst1|charCount\(2)))) # (!\inst1|charCount\(4) & (\inst1|charCount\(3) $ (((\inst1|charCount\(0) & !\inst1|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(4),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~4_combout\);

-- Location: LCCOMB_X44_Y31_N26
\inst1|lcd_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~119_combout\ = (\inst1|charCount\(1) & (\inst1|lcd_data~5_combout\)) # (!\inst1|charCount\(1) & ((\inst1|lcd_data~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(1),
	datac => \inst1|lcd_data~5_combout\,
	datad => \inst1|lcd_data~4_combout\,
	combout => \inst1|lcd_data~119_combout\);

-- Location: LCCOMB_X44_Y31_N0
\inst1|lcd_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~97_combout\ = (\inst1|charCount\(3) & ((\inst1|charCount\(0) $ (!\inst1|charCount\(1))))) # (!\inst1|charCount\(3) & (!\inst1|charCount\(2) & (!\inst1|charCount\(0) & \inst1|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(3),
	datac => \inst1|charCount\(0),
	datad => \inst1|charCount\(1),
	combout => \inst1|lcd_data~97_combout\);

-- Location: LCCOMB_X44_Y31_N18
\inst1|lcd_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~98_combout\ = (\inst1|lcd_data~71_combout\) # ((!\inst1|charCount\(4) & \inst1|lcd_data~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|charCount\(4),
	datac => \inst1|lcd_data~71_combout\,
	datad => \inst1|lcd_data~97_combout\,
	combout => \inst1|lcd_data~98_combout\);

-- Location: LCCOMB_X44_Y31_N28
\inst1|lcd_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~99_combout\ = (\inst1|lineCount\(0) & (((\inst1|lineCount\(1)) # (\inst1|lcd_data~98_combout\)))) # (!\inst1|lineCount\(0) & (\inst1|lcd_data\(1) & (!\inst1|lineCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data\(1),
	datab => \inst1|lineCount\(0),
	datac => \inst1|lineCount\(1),
	datad => \inst1|lcd_data~98_combout\,
	combout => \inst1|lcd_data~99_combout\);

-- Location: LCCOMB_X44_Y31_N16
\inst1|lcd_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~100_combout\ = (\inst1|lineCount\(1) & ((\inst1|lcd_data~99_combout\ & ((\inst1|lcd_data~119_combout\))) # (!\inst1|lcd_data~99_combout\ & (\inst1|lcd_data~96_combout\)))) # (!\inst1|lineCount\(1) & (((\inst1|lcd_data~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lcd_data~96_combout\,
	datac => \inst1|lcd_data~119_combout\,
	datad => \inst1|lcd_data~99_combout\,
	combout => \inst1|lcd_data~100_combout\);

-- Location: LCCOMB_X44_Y31_N12
\inst1|lcd_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~101_combout\ = (\inst1|lcd_data~90_combout\) # ((\inst1|lcd_data~95_combout\) # ((\inst1|lcd_data~23_combout\ & \inst1|lcd_data~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~23_combout\,
	datab => \inst1|lcd_data~90_combout\,
	datac => \inst1|lcd_data~95_combout\,
	datad => \inst1|lcd_data~100_combout\,
	combout => \inst1|lcd_data~101_combout\);

-- Location: FF_X44_Y31_N13
\inst1|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(1));

-- Location: LCCOMB_X45_Y31_N20
\inst2|dataStorage[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataStorage[1]~3_combout\ = !\inst1|lcd_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lcd_data\(1),
	combout => \inst2|dataStorage[1]~3_combout\);

-- Location: FF_X45_Y31_N21
\inst2|dataStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|dataStorage[1]~3_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(1));

-- Location: FF_X46_Y31_N5
\inst1|lcd_posX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|charCount\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posX\(1));

-- Location: FF_X46_Y31_N7
\inst2|addressStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lcd_posX\(1),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(1));

-- Location: LCCOMB_X46_Y31_N6
\inst2|dataOut[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~14_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(1))))) # (!\inst2|state.sendingAddress~q\ & (!\inst2|dataStorage\(1) & ((\inst2|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|dataStorage\(1),
	datac => \inst2|addressStorage\(1),
	datad => \inst2|state.sendingData~q\,
	combout => \inst2|dataOut[1]~14_combout\);

-- Location: LCCOMB_X46_Y31_N4
\inst2|dataOut[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[1]~15_combout\ = (\inst2|dataOut[1]~1_combout\ & ((\inst2|state.init7~q\) # (\inst2|dataOut[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[1]~1_combout\,
	datab => \inst2|state.init7~q\,
	datad => \inst2|dataOut[1]~14_combout\,
	combout => \inst2|dataOut[1]~15_combout\);

-- Location: LCCOMB_X41_Y30_N16
\inst1|lcd_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~110_combout\ = (\inst1|charCount\(3) & (((\inst1|charCount\(0) & \inst1|charCount\(2))) # (!\inst1|charCount\(1)))) # (!\inst1|charCount\(3) & ((\inst1|charCount\(0) & (!\inst1|charCount\(1) & \inst1|charCount\(2))) # 
-- (!\inst1|charCount\(0) & (\inst1|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~110_combout\);

-- Location: LCCOMB_X41_Y30_N22
\inst1|lcd_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~111_combout\ = (\inst1|charCount\(4) & (\inst1|lcd_data~7_combout\ & ((!\inst1|lcd_data~20_combout\)))) # (!\inst1|charCount\(4) & (((\inst1|lcd_data~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~7_combout\,
	datab => \inst1|lcd_data~110_combout\,
	datac => \inst1|lcd_data~20_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~111_combout\);

-- Location: LCCOMB_X41_Y30_N2
\inst1|lcd_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~107_combout\ = (\inst1|charCount\(3) & (((\inst1|charCount\(1) & \inst1|charCount\(2))))) # (!\inst1|charCount\(3) & ((\inst1|charCount\(2) & (\inst1|charCount\(0))) # (!\inst1|charCount\(2) & ((\inst1|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~107_combout\);

-- Location: LCCOMB_X41_Y30_N12
\inst1|lcd_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~108_combout\ = (\inst1|charCount\(4) & (!\inst1|charCount\(1) & ((\inst1|lcd_data~7_combout\)))) # (!\inst1|charCount\(4) & (((\inst1|lcd_data~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(1),
	datab => \inst1|lcd_data~107_combout\,
	datac => \inst1|lcd_data~7_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~108_combout\);

-- Location: LCCOMB_X41_Y30_N8
\inst1|lcd_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~102_combout\ = (!\inst1|charCount\(4) & (\inst1|charCount\(0) $ (((\inst1|charCount\(3) & \inst1|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~102_combout\);

-- Location: LCCOMB_X41_Y30_N14
\inst1|lcd_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~103_combout\ = (\inst1|lcd_data~102_combout\) # ((\inst1|lcd_data~7_combout\ & (!\inst1|charCount\(0) & \inst1|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~7_combout\,
	datab => \inst1|charCount\(0),
	datac => \inst1|lcd_data~102_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~103_combout\);

-- Location: LCCOMB_X41_Y30_N20
\inst1|lcd_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~104_combout\ = (!\inst1|charCount\(3) & (\inst1|charCount\(0) & ((\inst1|charCount\(1)) # (\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|charCount\(0),
	datac => \inst1|charCount\(1),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~104_combout\);

-- Location: LCCOMB_X41_Y30_N26
\inst1|lcd_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~105_combout\ = (\inst1|lcd_data~104_combout\ & !\inst1|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_data~104_combout\,
	datad => \inst1|charCount\(4),
	combout => \inst1|lcd_data~105_combout\);

-- Location: LCCOMB_X41_Y30_N28
\inst1|lcd_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~106_combout\ = (\inst1|lineCount\(1) & (((\inst1|lcd_data~105_combout\) # (\inst1|lineCount\(0))))) # (!\inst1|lineCount\(1) & (\inst1|lcd_data\(0) & ((!\inst1|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lineCount\(1),
	datab => \inst1|lcd_data\(0),
	datac => \inst1|lcd_data~105_combout\,
	datad => \inst1|lineCount\(0),
	combout => \inst1|lcd_data~106_combout\);

-- Location: LCCOMB_X41_Y30_N10
\inst1|lcd_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~109_combout\ = (\inst1|lineCount\(0) & ((\inst1|lcd_data~106_combout\ & (\inst1|lcd_data~108_combout\)) # (!\inst1|lcd_data~106_combout\ & ((\inst1|lcd_data~103_combout\))))) # (!\inst1|lineCount\(0) & (((\inst1|lcd_data~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~108_combout\,
	datab => \inst1|lineCount\(0),
	datac => \inst1|lcd_data~103_combout\,
	datad => \inst1|lcd_data~106_combout\,
	combout => \inst1|lcd_data~109_combout\);

-- Location: LCCOMB_X41_Y30_N24
\inst1|lcd_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~112_combout\ = (!\inst1|display_state~q\ & ((\inst1|Equal15~0_combout\ & ((\inst1|lcd_data~109_combout\))) # (!\inst1|Equal15~0_combout\ & (\inst1|lcd_data~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|lcd_data~111_combout\,
	datab => \inst1|display_state~q\,
	datac => \inst1|Equal15~0_combout\,
	datad => \inst1|lcd_data~109_combout\,
	combout => \inst1|lcd_data~112_combout\);

-- Location: LCCOMB_X40_Y32_N14
\inst1|lcd_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~114_combout\ = (\inst1|charCount\(3) & (\inst1|charCount\(0))) # (!\inst1|charCount\(3) & ((\inst1|charCount\(2) & ((!\inst1|charCount\(1)))) # (!\inst1|charCount\(2) & (!\inst1|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(0),
	datab => \inst1|charCount\(1),
	datac => \inst1|charCount\(3),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~114_combout\);

-- Location: FF_X40_Y32_N31
\inst1|converter1|digit_out_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_3\(0),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_3\(0));

-- Location: FF_X40_Y32_N29
\inst1|converter1|digit_out_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_1\(0),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_1\(0));

-- Location: LCCOMB_X40_Y32_N30
\inst1|lcd_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~115_combout\ = (!\inst1|charCount\(2) & ((\inst1|charCount\(1) & ((\inst1|converter1|digit_out_1\(0)))) # (!\inst1|charCount\(1) & (\inst1|converter1|digit_out_3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(2),
	datab => \inst1|charCount\(1),
	datac => \inst1|converter1|digit_out_3\(0),
	datad => \inst1|converter1|digit_out_1\(0),
	combout => \inst1|lcd_data~115_combout\);

-- Location: LCCOMB_X32_Y32_N0
\inst1|converter1|digit_int_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_int_0~4_combout\ = (\inst1|converter1|number\(0) & !\inst1|converter1|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|converter1|number\(0),
	datad => \inst1|converter1|state.s0~q\,
	combout => \inst1|converter1|digit_int_0~4_combout\);

-- Location: FF_X32_Y32_N1
\inst1|converter1|digit_int_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_int_0~4_combout\,
	ena => \inst1|converter1|digit_int_0[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_int_0\(0));

-- Location: LCCOMB_X40_Y32_N10
\inst1|converter1|digit_out_0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|converter1|digit_out_0[0]~feeder_combout\ = \inst1|converter1|digit_int_0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|converter1|digit_int_0\(0),
	combout => \inst1|converter1|digit_out_0[0]~feeder_combout\);

-- Location: FF_X40_Y32_N11
\inst1|converter1|digit_out_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|converter1|digit_out_0[0]~feeder_combout\,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_0\(0));

-- Location: FF_X40_Y32_N1
\inst1|converter1|digit_out_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|converter1|digit_int_2\(0),
	sload => VCC,
	ena => \inst1|converter1|state.s5~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|converter1|digit_out_2\(0));

-- Location: LCCOMB_X40_Y32_N0
\inst1|lcd_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~113_combout\ = (\inst1|charCount\(1) & (((\inst1|converter1|digit_out_2\(0) & !\inst1|charCount\(2))))) # (!\inst1|charCount\(1) & (\inst1|converter1|digit_out_0\(0) & ((\inst1|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|converter1|digit_out_0\(0),
	datab => \inst1|charCount\(1),
	datac => \inst1|converter1|digit_out_2\(0),
	datad => \inst1|charCount\(2),
	combout => \inst1|lcd_data~113_combout\);

-- Location: LCCOMB_X40_Y32_N20
\inst1|lcd_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~116_combout\ = (\inst1|charCount\(3) & ((\inst1|lcd_data~114_combout\ & (\inst1|lcd_data~115_combout\)) # (!\inst1|lcd_data~114_combout\ & ((\inst1|lcd_data~113_combout\))))) # (!\inst1|charCount\(3) & (\inst1|lcd_data~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|charCount\(3),
	datab => \inst1|lcd_data~114_combout\,
	datac => \inst1|lcd_data~115_combout\,
	datad => \inst1|lcd_data~113_combout\,
	combout => \inst1|lcd_data~116_combout\);

-- Location: LCCOMB_X41_Y30_N0
\inst1|lcd_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lcd_data~117_combout\ = (\inst1|lcd_data~112_combout\) # ((\inst1|lcd_data~116_combout\ & \inst1|lcd_data~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|lcd_data~112_combout\,
	datac => \inst1|lcd_data~116_combout\,
	datad => \inst1|lcd_data~11_combout\,
	combout => \inst1|lcd_data~117_combout\);

-- Location: FF_X41_Y30_N1
\inst1|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|lcd_data~117_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_data\(0));

-- Location: FF_X45_Y31_N17
\inst2|dataStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|lcd_data\(0),
	sload => VCC,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dataStorage\(0));

-- Location: FF_X44_Y31_N23
\inst1|lcd_posX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|charCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lcd_posX\(0));

-- Location: LCCOMB_X45_Y31_N2
\inst2|addressStorage[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|addressStorage[0]~feeder_combout\ = \inst1|lcd_posX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lcd_posX\(0),
	combout => \inst2|addressStorage[0]~feeder_combout\);

-- Location: FF_X45_Y31_N3
\inst2|addressStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst2|addressStorage[0]~feeder_combout\,
	ena => \inst2|process_0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|addressStorage\(0));

-- Location: LCCOMB_X45_Y31_N16
\inst2|dataOut[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[0]~16_combout\ = (\inst2|state.sendingAddress~q\ & (((\inst2|addressStorage\(0))))) # (!\inst2|state.sendingAddress~q\ & (\inst2|state.sendingData~q\ & (\inst2|dataStorage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|state.sendingAddress~q\,
	datab => \inst2|state.sendingData~q\,
	datac => \inst2|dataStorage\(0),
	datad => \inst2|addressStorage\(0),
	combout => \inst2|dataOut[0]~16_combout\);

-- Location: LCCOMB_X46_Y31_N14
\inst2|dataOut[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dataOut[0]~17_combout\ = (\inst2|dataOut[3]~5_combout\ & (\inst2|state.init0~q\ & ((\inst2|state.init6~q\)))) # (!\inst2|dataOut[3]~5_combout\ & ((\inst2|dataOut[0]~16_combout\) # ((\inst2|state.init0~q\ & \inst2|state.init6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dataOut[3]~5_combout\,
	datab => \inst2|state.init0~q\,
	datac => \inst2|dataOut[0]~16_combout\,
	datad => \inst2|state.init6~q\,
	combout => \inst2|dataOut[0]~17_combout\);

-- Location: LCCOMB_X30_Y31_N12
\inst4|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal5~0_combout\ = (!\inst|Data0\(3) & (!\inst|Data0\(4) & !\inst|Data0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(3),
	datac => \inst|Data0\(4),
	datad => \inst|Data0\(6),
	combout => \inst4|Equal5~0_combout\);

-- Location: LCCOMB_X29_Y33_N12
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst|Data0\(0) & (!\inst|Data0\(2) & (!\inst|Data0\(5) & !\inst|Data0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(0),
	datab => \inst|Data0\(2),
	datac => \inst|Data0\(5),
	datad => \inst|Data0\(7),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y31_N24
\inst4|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = (\inst|Data0\(1) & (\inst|Data0\(10) & (\inst|Data0\(8) & \inst|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(1),
	datab => \inst|Data0\(10),
	datac => \inst|Data0\(8),
	datad => \inst|Data0\(11),
	combout => \inst4|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y31_N10
\inst4|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal7~1_combout\ = (\inst4|Equal5~0_combout\ & (!\inst|Data0\(9) & (\inst4|Equal0~0_combout\ & \inst4|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal5~0_combout\,
	datab => \inst|Data0\(9),
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|Equal7~1_combout\);

-- Location: LCCOMB_X29_Y33_N24
\inst4|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal5~2_combout\ = (\inst|Data0\(2) & (\inst|Data0\(5) & \inst|Data0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(2),
	datac => \inst|Data0\(5),
	datad => \inst|Data0\(7),
	combout => \inst4|Equal5~2_combout\);

-- Location: LCCOMB_X30_Y31_N18
\inst4|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal5~1_combout\ = (!\inst|Data0\(1) & (!\inst|Data0\(10) & (!\inst|Data0\(8) & \inst|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(1),
	datab => \inst|Data0\(10),
	datac => \inst|Data0\(8),
	datad => \inst|Data0\(11),
	combout => \inst4|Equal5~1_combout\);

-- Location: LCCOMB_X30_Y31_N30
\inst4|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal5~3_combout\ = (\inst4|Equal5~0_combout\ & (\inst|Data0\(9) & (\inst4|Equal5~2_combout\ & \inst4|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal5~0_combout\,
	datab => \inst|Data0\(9),
	datac => \inst4|Equal5~2_combout\,
	datad => \inst4|Equal5~1_combout\,
	combout => \inst4|Equal5~3_combout\);

-- Location: LCCOMB_X30_Y31_N28
\inst4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (\inst|Data0\(6) & (\inst|Data0\(9) & (\inst|Data0\(8) & !\inst|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(6),
	datab => \inst|Data0\(9),
	datac => \inst|Data0\(8),
	datad => \inst|Data0\(11),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y31_N2
\inst4|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~1_combout\ = (!\inst|Data0\(3) & (\inst|Data0\(4) & \inst4|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(3),
	datac => \inst|Data0\(4),
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|Equal1~1_combout\);

-- Location: LCCOMB_X29_Y33_N28
\inst4|Led[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Led[2]~0_combout\ = (\inst4|Equal1~1_combout\ & ((\inst|Data0\(1) & (!\inst|Data0\(2) & \inst|Data0\(0))) # (!\inst|Data0\(1) & (\inst|Data0\(2) & !\inst|Data0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~1_combout\,
	datab => \inst|Data0\(1),
	datac => \inst|Data0\(2),
	datad => \inst|Data0\(0),
	combout => \inst4|Led[2]~0_combout\);

-- Location: LCCOMB_X29_Y33_N6
\inst4|Led[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Led[2]~1_combout\ = (\inst|Data0\(10) & (\inst4|Led[2]~0_combout\ & (\inst|Data0\(5) & !\inst|Data0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(10),
	datab => \inst4|Led[2]~0_combout\,
	datac => \inst|Data0\(5),
	datad => \inst|Data0\(7),
	combout => \inst4|Led[2]~1_combout\);

-- Location: LCCOMB_X29_Y33_N20
\inst4|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~2_combout\ = (!\inst|Data0\(10) & (!\inst|Data0\(2) & (!\inst|Data0\(5) & !\inst|Data0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(10),
	datab => \inst|Data0\(2),
	datac => \inst|Data0\(5),
	datad => \inst|Data0\(1),
	combout => \inst4|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y33_N10
\inst4|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~3_combout\ = (\inst4|Equal1~1_combout\ & (\inst4|Equal1~2_combout\ & \inst|Data0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~1_combout\,
	datab => \inst4|Equal1~2_combout\,
	datad => \inst|Data0\(7),
	combout => \inst4|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y31_N20
\inst4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~1_combout\ = (!\inst|Data0\(1) & (!\inst|Data0\(10) & (!\inst|Data0\(8) & !\inst|Data0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Data0\(1),
	datab => \inst|Data0\(10),
	datac => \inst|Data0\(8),
	datad => \inst|Data0\(11),
	combout => \inst4|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y31_N8
\inst4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~2_combout\ = (\inst4|Equal5~0_combout\ & (!\inst|Data0\(9) & (\inst4|Equal0~0_combout\ & \inst4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal5~0_combout\,
	datab => \inst|Data0\(9),
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|Equal0~1_combout\,
	combout => \inst4|Equal0~2_combout\);

ww_ADC_DIN <= \ADC_DIN~output_o\;

ww_ADC_CS <= \ADC_CS~output_o\;

ww_ADC_SCLK <= \ADC_SCLK~output_o\;

ww_LCD_E <= \LCD_E~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_Data(7) <= \LCD_Data[7]~output_o\;

ww_LCD_Data(6) <= \LCD_Data[6]~output_o\;

ww_LCD_Data(5) <= \LCD_Data[5]~output_o\;

ww_LCD_Data(4) <= \LCD_Data[4]~output_o\;

ww_LCD_Data(3) <= \LCD_Data[3]~output_o\;

ww_LCD_Data(2) <= \LCD_Data[2]~output_o\;

ww_LCD_Data(1) <= \LCD_Data[1]~output_o\;

ww_LCD_Data(0) <= \LCD_Data[0]~output_o\;

ww_Led(5) <= \Led[5]~output_o\;

ww_Led(4) <= \Led[4]~output_o\;

ww_Led(3) <= \Led[3]~output_o\;

ww_Led(2) <= \Led[2]~output_o\;

ww_Led(1) <= \Led[1]~output_o\;

ww_Led(0) <= \Led[0]~output_o\;
END structure;


