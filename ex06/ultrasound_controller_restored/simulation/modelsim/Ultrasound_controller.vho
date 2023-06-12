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

-- DATE "06/13/2023 00:36:03"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	ultrasound_reader IS
    PORT (
	lcd_rs : OUT std_logic;
	clk_50 : IN std_logic;
	us_1 : INOUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_e : OUT std_logic;
	lcd_data : OUT std_logic_vector(7 DOWNTO 0)
	);
END ultrasound_reader;

-- Design Ports Information
-- lcd_rs	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_rw	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_e	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[6]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[5]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_data[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- us_1	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ultrasound_reader IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_e : std_logic;
SIGNAL ww_lcd_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \us_1~output_o\ : std_logic;
SIGNAL \lcd_rs~output_o\ : std_logic;
SIGNAL \lcd_rw~output_o\ : std_logic;
SIGNAL \lcd_e~output_o\ : std_logic;
SIGNAL \lcd_data[7]~output_o\ : std_logic;
SIGNAL \lcd_data[6]~output_o\ : std_logic;
SIGNAL \lcd_data[5]~output_o\ : std_logic;
SIGNAL \lcd_data[4]~output_o\ : std_logic;
SIGNAL \lcd_data[3]~output_o\ : std_logic;
SIGNAL \lcd_data[2]~output_o\ : std_logic;
SIGNAL \lcd_data[1]~output_o\ : std_logic;
SIGNAL \lcd_data[0]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \us_1~input_o\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|counter[17]~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|counter~4_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|counter~5_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|counter~6_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|Selector28~1_combout\ : std_logic;
SIGNAL \inst1|Selector28~2_combout\ : std_logic;
SIGNAL \inst1|Selector28~3_combout\ : std_logic;
SIGNAL \inst1|last_enable~q\ : std_logic;
SIGNAL \inst1|Selector58~2_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_SEND_HIGH~q\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_SEND_FIN~q\ : std_logic;
SIGNAL \inst1|Selector58~0_combout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_FIN~2_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_FIN~q\ : std_logic;
SIGNAL \inst1|counter[17]~2_combout\ : std_logic;
SIGNAL \inst1|counter[17]~1_combout\ : std_logic;
SIGNAL \inst1|counter[17]~3_combout\ : std_logic;
SIGNAL \inst1|Add0~43\ : std_logic;
SIGNAL \inst1|Add0~45_combout\ : std_logic;
SIGNAL \inst1|Add0~47_combout\ : std_logic;
SIGNAL \inst1|Add0~46\ : std_logic;
SIGNAL \inst1|Add0~48_combout\ : std_logic;
SIGNAL \inst1|Add0~50_combout\ : std_logic;
SIGNAL \inst1|Add0~49\ : std_logic;
SIGNAL \inst1|Add0~51_combout\ : std_logic;
SIGNAL \inst1|Add0~53_combout\ : std_logic;
SIGNAL \inst1|Add0~52\ : std_logic;
SIGNAL \inst1|Add0~54_combout\ : std_logic;
SIGNAL \inst1|Add0~56_combout\ : std_logic;
SIGNAL \inst1|Add0~55\ : std_logic;
SIGNAL \inst1|Add0~57_combout\ : std_logic;
SIGNAL \inst1|Add0~59_combout\ : std_logic;
SIGNAL \inst1|Add0~58\ : std_logic;
SIGNAL \inst1|Add0~60_combout\ : std_logic;
SIGNAL \inst1|counter[17]~4_combout\ : std_logic;
SIGNAL \inst1|counter[20]~5_combout\ : std_logic;
SIGNAL \inst1|LessThan1~5_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|Add0~32_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~33_combout\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~31_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~30_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~37_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add0~35_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~36_combout\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Add0~38_combout\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~34_combout\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~21_combout\ : std_logic;
SIGNAL \inst1|Add0~23_combout\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~24_combout\ : std_logic;
SIGNAL \inst1|Add0~26_combout\ : std_logic;
SIGNAL \inst1|Add0~25\ : std_logic;
SIGNAL \inst1|Add0~27_combout\ : std_logic;
SIGNAL \inst1|Add0~29_combout\ : std_logic;
SIGNAL \inst1|LessThan0~7_combout\ : std_logic;
SIGNAL \inst1|LessThan1~1_combout\ : std_logic;
SIGNAL \inst1|LessThan1~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~3_combout\ : std_logic;
SIGNAL \inst1|LessThan1~4_combout\ : std_logic;
SIGNAL \inst1|LessThan1~6_combout\ : std_logic;
SIGNAL \inst1|Selector28~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_INIT~q\ : std_logic;
SIGNAL \inst1|Add0~28\ : std_logic;
SIGNAL \inst1|Add0~39_combout\ : std_logic;
SIGNAL \inst1|Add0~41_combout\ : std_logic;
SIGNAL \inst1|Add0~40\ : std_logic;
SIGNAL \inst1|Add0~42_combout\ : std_logic;
SIGNAL \inst1|Add0~44_combout\ : std_logic;
SIGNAL \inst1|LessThan0~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|LessThan0~2_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~3_combout\ : std_logic;
SIGNAL \inst1|LessThan0~6_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_WAIT~q\ : std_logic;
SIGNAL \inst1|Selector5~1_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_COUNT~q\ : std_logic;
SIGNAL \inst1|distance[7]~0_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|ctrl_state.STATE_SEND_START~q\ : std_logic;
SIGNAL \inst1|Selector58~1_combout\ : std_logic;
SIGNAL \inst1|trigger~reg0_q\ : std_logic;
SIGNAL \inst1|trigger~1_combout\ : std_logic;
SIGNAL \inst1|trigger~en_q\ : std_logic;
SIGNAL \inst4|counter[0]~31_combout\ : std_logic;
SIGNAL \inst4|charCount[0]~5_combout\ : std_logic;
SIGNAL \inst4|charCount[3]~15_combout\ : std_logic;
SIGNAL \inst4|charCount[0]~6\ : std_logic;
SIGNAL \inst4|charCount[1]~7_combout\ : std_logic;
SIGNAL \inst4|charCount[1]~8\ : std_logic;
SIGNAL \inst4|charCount[2]~9_combout\ : std_logic;
SIGNAL \inst4|charCount[2]~10\ : std_logic;
SIGNAL \inst4|charCount[3]~11_combout\ : std_logic;
SIGNAL \inst4|lcd_data~112_combout\ : std_logic;
SIGNAL \inst4|charCount[3]~12\ : std_logic;
SIGNAL \inst4|charCount[4]~13_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|lineCount~0_combout\ : std_logic;
SIGNAL \inst4|lineCount[0]~1_combout\ : std_logic;
SIGNAL \inst4|lineCount[1]~2_combout\ : std_logic;
SIGNAL \inst4|lcd_data~143_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|counter[9]~53\ : std_logic;
SIGNAL \inst4|counter[10]~54_combout\ : std_logic;
SIGNAL \inst4|counter[10]~55\ : std_logic;
SIGNAL \inst4|counter[11]~56_combout\ : std_logic;
SIGNAL \inst4|counter[11]~57\ : std_logic;
SIGNAL \inst4|counter[12]~58_combout\ : std_logic;
SIGNAL \inst4|counter[12]~59\ : std_logic;
SIGNAL \inst4|counter[13]~60_combout\ : std_logic;
SIGNAL \inst4|counter[13]~61\ : std_logic;
SIGNAL \inst4|counter[14]~62_combout\ : std_logic;
SIGNAL \inst4|counter[14]~63\ : std_logic;
SIGNAL \inst4|counter[15]~64_combout\ : std_logic;
SIGNAL \inst4|counter[15]~65\ : std_logic;
SIGNAL \inst4|counter[16]~66_combout\ : std_logic;
SIGNAL \inst4|counter[16]~67\ : std_logic;
SIGNAL \inst4|counter[17]~68_combout\ : std_logic;
SIGNAL \inst4|counter[17]~69\ : std_logic;
SIGNAL \inst4|counter[18]~70_combout\ : std_logic;
SIGNAL \inst4|counter[18]~71\ : std_logic;
SIGNAL \inst4|counter[19]~72_combout\ : std_logic;
SIGNAL \inst4|counter[19]~73\ : std_logic;
SIGNAL \inst4|counter[20]~74_combout\ : std_logic;
SIGNAL \inst4|counter[20]~75\ : std_logic;
SIGNAL \inst4|counter[21]~76_combout\ : std_logic;
SIGNAL \inst4|counter[21]~77\ : std_logic;
SIGNAL \inst4|counter[22]~78_combout\ : std_logic;
SIGNAL \inst4|counter[22]~79\ : std_logic;
SIGNAL \inst4|counter[23]~80_combout\ : std_logic;
SIGNAL \inst4|counter[23]~81\ : std_logic;
SIGNAL \inst4|counter[24]~82_combout\ : std_logic;
SIGNAL \inst4|counter[24]~83\ : std_logic;
SIGNAL \inst4|counter[25]~84_combout\ : std_logic;
SIGNAL \inst4|counter[25]~85\ : std_logic;
SIGNAL \inst4|counter[26]~86_combout\ : std_logic;
SIGNAL \inst4|counter[26]~87\ : std_logic;
SIGNAL \inst4|counter[27]~88_combout\ : std_logic;
SIGNAL \inst4|counter[27]~89\ : std_logic;
SIGNAL \inst4|counter[28]~90_combout\ : std_logic;
SIGNAL \inst4|counter[28]~91\ : std_logic;
SIGNAL \inst4|counter[29]~92_combout\ : std_logic;
SIGNAL \inst4|counter[29]~93\ : std_logic;
SIGNAL \inst4|counter[30]~94_combout\ : std_logic;
SIGNAL \inst4|process_1~1_combout\ : std_logic;
SIGNAL \inst4|process_1~2_combout\ : std_logic;
SIGNAL \inst4|process_1~0_combout\ : std_logic;
SIGNAL \inst4|process_0~3_combout\ : std_logic;
SIGNAL \inst4|process_0~4_combout\ : std_logic;
SIGNAL \inst4|process_0~2_combout\ : std_logic;
SIGNAL \inst4|process_0~1_combout\ : std_logic;
SIGNAL \inst4|process_0~5_combout\ : std_logic;
SIGNAL \inst4|process_1~3_combout\ : std_logic;
SIGNAL \inst4|counter[5]~41_combout\ : std_logic;
SIGNAL \inst4|counter[5]~42_combout\ : std_logic;
SIGNAL \inst4|counter[5]~43_combout\ : std_logic;
SIGNAL \inst4|counter[0]~32\ : std_logic;
SIGNAL \inst4|counter[1]~33_combout\ : std_logic;
SIGNAL \inst4|counter[1]~34\ : std_logic;
SIGNAL \inst4|counter[2]~35_combout\ : std_logic;
SIGNAL \inst4|counter[2]~36\ : std_logic;
SIGNAL \inst4|counter[3]~37_combout\ : std_logic;
SIGNAL \inst4|counter[3]~38\ : std_logic;
SIGNAL \inst4|counter[4]~39_combout\ : std_logic;
SIGNAL \inst4|counter[4]~40\ : std_logic;
SIGNAL \inst4|counter[5]~44_combout\ : std_logic;
SIGNAL \inst4|counter[5]~45\ : std_logic;
SIGNAL \inst4|counter[6]~46_combout\ : std_logic;
SIGNAL \inst4|counter[6]~47\ : std_logic;
SIGNAL \inst4|counter[7]~48_combout\ : std_logic;
SIGNAL \inst4|counter[7]~49\ : std_logic;
SIGNAL \inst4|counter[8]~50_combout\ : std_logic;
SIGNAL \inst4|counter[8]~51\ : std_logic;
SIGNAL \inst4|counter[9]~52_combout\ : std_logic;
SIGNAL \inst4|process_0~11_combout\ : std_logic;
SIGNAL \inst4|process_0~10_combout\ : std_logic;
SIGNAL \inst4|process_0~6_combout\ : std_logic;
SIGNAL \inst4|process_0~7_combout\ : std_logic;
SIGNAL \inst4|process_0~8_combout\ : std_logic;
SIGNAL \inst4|process_0~9_combout\ : std_logic;
SIGNAL \inst4|process_0~12_combout\ : std_logic;
SIGNAL \inst4|process_0~13_combout\ : std_logic;
SIGNAL \inst4|process_0~14_combout\ : std_logic;
SIGNAL \inst4|state~11_combout\ : std_logic;
SIGNAL \inst4|state~10_combout\ : std_logic;
SIGNAL \inst4|state.update~q\ : std_logic;
SIGNAL \inst4|state.pause~0_combout\ : std_logic;
SIGNAL \inst4|state.pause~q\ : std_logic;
SIGNAL \inst4|process_1~4_combout\ : std_logic;
SIGNAL \inst4|process_1~5_combout\ : std_logic;
SIGNAL \inst4|lcd_write_n~q\ : std_logic;
SIGNAL \inst5|counter[0]~32_combout\ : std_logic;
SIGNAL \inst5|process_0~8_combout\ : std_logic;
SIGNAL \inst5|state.sendingAddress~q\ : std_logic;
SIGNAL \inst5|counter[12]~58\ : std_logic;
SIGNAL \inst5|counter[13]~59_combout\ : std_logic;
SIGNAL \inst5|counter[13]~60\ : std_logic;
SIGNAL \inst5|counter[14]~61_combout\ : std_logic;
SIGNAL \inst5|counter[14]~62\ : std_logic;
SIGNAL \inst5|counter[15]~63_combout\ : std_logic;
SIGNAL \inst5|counter[15]~64\ : std_logic;
SIGNAL \inst5|counter[16]~65_combout\ : std_logic;
SIGNAL \inst5|counter[16]~66\ : std_logic;
SIGNAL \inst5|counter[17]~67_combout\ : std_logic;
SIGNAL \inst5|counter[17]~68\ : std_logic;
SIGNAL \inst5|counter[18]~69_combout\ : std_logic;
SIGNAL \inst5|Equal4~3_combout\ : std_logic;
SIGNAL \inst5|Equal4~5_combout\ : std_logic;
SIGNAL \inst5|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|counter[18]~70\ : std_logic;
SIGNAL \inst5|counter[19]~71_combout\ : std_logic;
SIGNAL \inst5|counter[19]~72\ : std_logic;
SIGNAL \inst5|counter[20]~73_combout\ : std_logic;
SIGNAL \inst5|counter[20]~74\ : std_logic;
SIGNAL \inst5|counter[21]~75_combout\ : std_logic;
SIGNAL \inst5|counter[21]~76\ : std_logic;
SIGNAL \inst5|counter[22]~77_combout\ : std_logic;
SIGNAL \inst5|Equal4~4_combout\ : std_logic;
SIGNAL \inst5|Equal4~6_combout\ : std_logic;
SIGNAL \inst5|counter[22]~78\ : std_logic;
SIGNAL \inst5|counter[23]~79_combout\ : std_logic;
SIGNAL \inst5|counter[23]~80\ : std_logic;
SIGNAL \inst5|counter[24]~81_combout\ : std_logic;
SIGNAL \inst5|counter[24]~82\ : std_logic;
SIGNAL \inst5|counter[25]~83_combout\ : std_logic;
SIGNAL \inst5|counter[25]~84\ : std_logic;
SIGNAL \inst5|counter[26]~85_combout\ : std_logic;
SIGNAL \inst5|counter[26]~86\ : std_logic;
SIGNAL \inst5|counter[27]~87_combout\ : std_logic;
SIGNAL \inst5|counter[27]~88\ : std_logic;
SIGNAL \inst5|counter[28]~89_combout\ : std_logic;
SIGNAL \inst5|counter[28]~90\ : std_logic;
SIGNAL \inst5|counter[29]~91_combout\ : std_logic;
SIGNAL \inst5|counter[29]~92\ : std_logic;
SIGNAL \inst5|counter[30]~93_combout\ : std_logic;
SIGNAL \inst5|e~5_combout\ : std_logic;
SIGNAL \inst5|Equal4~1_combout\ : std_logic;
SIGNAL \inst5|e~4_combout\ : std_logic;
SIGNAL \inst5|e~3_combout\ : std_logic;
SIGNAL \inst5|Equal4~2_combout\ : std_logic;
SIGNAL \inst5|state~59_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[0]~35_combout\ : std_logic;
SIGNAL \inst5|process_0~11_combout\ : std_logic;
SIGNAL \inst5|Equal6~0_combout\ : std_logic;
SIGNAL \inst5|state.init0~feeder_combout\ : std_logic;
SIGNAL \inst5|state.init0~q\ : std_logic;
SIGNAL \inst5|process_0~15_combout\ : std_logic;
SIGNAL \inst5|process_0~16_combout\ : std_logic;
SIGNAL \inst5|process_0~17_combout\ : std_logic;
SIGNAL \inst5|process_0~10_combout\ : std_logic;
SIGNAL \inst5|process_0~18_combout\ : std_logic;
SIGNAL \inst5|state~55_combout\ : std_logic;
SIGNAL \inst5|state.init1~q\ : std_logic;
SIGNAL \inst5|process_0~9_combout\ : std_logic;
SIGNAL \inst5|state~56_combout\ : std_logic;
SIGNAL \inst5|state.init2~q\ : std_logic;
SIGNAL \inst5|process_0~12_combout\ : std_logic;
SIGNAL \inst5|Equal6~1_combout\ : std_logic;
SIGNAL \inst5|process_0~13_combout\ : std_logic;
SIGNAL \inst5|process_0~14_combout\ : std_logic;
SIGNAL \inst5|state~53_combout\ : std_logic;
SIGNAL \inst5|state.init3~q\ : std_logic;
SIGNAL \inst5|state~35_combout\ : std_logic;
SIGNAL \inst5|state~34_combout\ : std_logic;
SIGNAL \inst5|state~36_combout\ : std_logic;
SIGNAL \inst5|state~44_combout\ : std_logic;
SIGNAL \inst5|state~54_combout\ : std_logic;
SIGNAL \inst5|state.init4~q\ : std_logic;
SIGNAL \inst5|state~57_combout\ : std_logic;
SIGNAL \inst5|state.init5~q\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~44\ : std_logic;
SIGNAL \inst5|charCreationCounter[4]~45_combout\ : std_logic;
SIGNAL \inst5|Equal7~0_combout\ : std_logic;
SIGNAL \inst5|state~45_combout\ : std_logic;
SIGNAL \inst5|state.createChar1~q\ : std_logic;
SIGNAL \inst5|state~46_combout\ : std_logic;
SIGNAL \inst5|state~64_combout\ : std_logic;
SIGNAL \inst5|state.createChar2~q\ : std_logic;
SIGNAL \inst5|dataOut[4]~0_combout\ : std_logic;
SIGNAL \inst5|state~48_combout\ : std_logic;
SIGNAL \inst5|state~49_combout\ : std_logic;
SIGNAL \inst5|state.createChar3~q\ : std_logic;
SIGNAL \inst5|state~50_combout\ : std_logic;
SIGNAL \inst5|state~51_combout\ : std_logic;
SIGNAL \inst5|state.createChar4~q\ : std_logic;
SIGNAL \inst5|process_1~0_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~100_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~38_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[4]~46\ : std_logic;
SIGNAL \inst5|charCreationCounter[5]~47_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[5]~48\ : std_logic;
SIGNAL \inst5|charCreationCounter[6]~49_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[6]~50\ : std_logic;
SIGNAL \inst5|charCreationCounter[7]~51_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[7]~52\ : std_logic;
SIGNAL \inst5|charCreationCounter[8]~53_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[8]~54\ : std_logic;
SIGNAL \inst5|charCreationCounter[9]~55_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[9]~56\ : std_logic;
SIGNAL \inst5|charCreationCounter[10]~57_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[10]~58\ : std_logic;
SIGNAL \inst5|charCreationCounter[11]~59_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[11]~60\ : std_logic;
SIGNAL \inst5|charCreationCounter[12]~61_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[12]~62\ : std_logic;
SIGNAL \inst5|charCreationCounter[13]~63_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[13]~64\ : std_logic;
SIGNAL \inst5|charCreationCounter[14]~65_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[14]~66\ : std_logic;
SIGNAL \inst5|charCreationCounter[15]~67_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[15]~68\ : std_logic;
SIGNAL \inst5|charCreationCounter[16]~69_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[16]~70\ : std_logic;
SIGNAL \inst5|charCreationCounter[17]~71_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[17]~72\ : std_logic;
SIGNAL \inst5|charCreationCounter[18]~73_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[18]~74\ : std_logic;
SIGNAL \inst5|charCreationCounter[19]~75_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[19]~76\ : std_logic;
SIGNAL \inst5|charCreationCounter[20]~77_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[20]~78\ : std_logic;
SIGNAL \inst5|charCreationCounter[21]~79_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[21]~80\ : std_logic;
SIGNAL \inst5|charCreationCounter[22]~81_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[22]~82\ : std_logic;
SIGNAL \inst5|charCreationCounter[23]~83_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[23]~84\ : std_logic;
SIGNAL \inst5|charCreationCounter[24]~85_combout\ : std_logic;
SIGNAL \inst5|Equal8~6_combout\ : std_logic;
SIGNAL \inst5|Equal8~5_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[24]~86\ : std_logic;
SIGNAL \inst5|charCreationCounter[25]~87_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[25]~88\ : std_logic;
SIGNAL \inst5|charCreationCounter[26]~89_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[26]~90\ : std_logic;
SIGNAL \inst5|charCreationCounter[27]~91_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[27]~92\ : std_logic;
SIGNAL \inst5|charCreationCounter[28]~93_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[28]~94\ : std_logic;
SIGNAL \inst5|charCreationCounter[29]~95_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[29]~96\ : std_logic;
SIGNAL \inst5|charCreationCounter[30]~97_combout\ : std_logic;
SIGNAL \inst5|Equal8~7_combout\ : std_logic;
SIGNAL \inst5|Equal8~8_combout\ : std_logic;
SIGNAL \inst5|Equal8~1_combout\ : std_logic;
SIGNAL \inst5|Equal8~0_combout\ : std_logic;
SIGNAL \inst5|Equal8~2_combout\ : std_logic;
SIGNAL \inst5|Equal8~3_combout\ : std_logic;
SIGNAL \inst5|Equal8~4_combout\ : std_logic;
SIGNAL \inst5|Equal8~9_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[23]~99_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[0]~36\ : std_logic;
SIGNAL \inst5|charCreationCounter[1]~39_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[1]~40\ : std_logic;
SIGNAL \inst5|charCreationCounter[2]~41_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[2]~42\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~43_combout\ : std_logic;
SIGNAL \inst5|state~65_combout\ : std_logic;
SIGNAL \inst5|state~66_combout\ : std_logic;
SIGNAL \inst5|state~47_combout\ : std_logic;
SIGNAL \inst5|state.createChar5~q\ : std_logic;
SIGNAL \inst5|state~60_combout\ : std_logic;
SIGNAL \inst5|state~58_combout\ : std_logic;
SIGNAL \inst5|state~61_combout\ : std_logic;
SIGNAL \inst5|state~62_combout\ : std_logic;
SIGNAL \inst5|state.init6~q\ : std_logic;
SIGNAL \inst5|process_0~19_combout\ : std_logic;
SIGNAL \inst5|state~52_combout\ : std_logic;
SIGNAL \inst5|state.init7~q\ : std_logic;
SIGNAL \inst5|state~42_combout\ : std_logic;
SIGNAL \inst5|state~43_combout\ : std_logic;
SIGNAL \inst5|state.sendingData~q\ : std_logic;
SIGNAL \inst5|state~37_combout\ : std_logic;
SIGNAL \inst5|state~38_combout\ : std_logic;
SIGNAL \inst5|charCreationCounter[3]~37_combout\ : std_logic;
SIGNAL \inst5|counter[12]~31_combout\ : std_logic;
SIGNAL \inst5|counter[12]~56_combout\ : std_logic;
SIGNAL \inst5|counter[0]~33\ : std_logic;
SIGNAL \inst5|counter[1]~34_combout\ : std_logic;
SIGNAL \inst5|counter[1]~35\ : std_logic;
SIGNAL \inst5|counter[2]~36_combout\ : std_logic;
SIGNAL \inst5|counter[2]~37\ : std_logic;
SIGNAL \inst5|counter[3]~38_combout\ : std_logic;
SIGNAL \inst5|counter[3]~39\ : std_logic;
SIGNAL \inst5|counter[4]~40_combout\ : std_logic;
SIGNAL \inst5|counter[4]~41\ : std_logic;
SIGNAL \inst5|counter[5]~42_combout\ : std_logic;
SIGNAL \inst5|counter[5]~43\ : std_logic;
SIGNAL \inst5|counter[6]~44_combout\ : std_logic;
SIGNAL \inst5|counter[6]~45\ : std_logic;
SIGNAL \inst5|counter[7]~46_combout\ : std_logic;
SIGNAL \inst5|counter[7]~47\ : std_logic;
SIGNAL \inst5|counter[8]~48_combout\ : std_logic;
SIGNAL \inst5|counter[8]~49\ : std_logic;
SIGNAL \inst5|counter[9]~50_combout\ : std_logic;
SIGNAL \inst5|counter[9]~51\ : std_logic;
SIGNAL \inst5|counter[10]~52_combout\ : std_logic;
SIGNAL \inst5|counter[10]~53\ : std_logic;
SIGNAL \inst5|counter[11]~54_combout\ : std_logic;
SIGNAL \inst5|counter[11]~55\ : std_logic;
SIGNAL \inst5|counter[12]~57_combout\ : std_logic;
SIGNAL \inst5|Equal6~3_combout\ : std_logic;
SIGNAL \inst5|Equal6~4_combout\ : std_logic;
SIGNAL \inst5|Equal6~2_combout\ : std_logic;
SIGNAL \inst5|Equal6~5_combout\ : std_logic;
SIGNAL \inst5|state~39_combout\ : std_logic;
SIGNAL \inst5|state~40_combout\ : std_logic;
SIGNAL \inst5|process_0~20_combout\ : std_logic;
SIGNAL \inst5|state~41_combout\ : std_logic;
SIGNAL \inst5|state~63_combout\ : std_logic;
SIGNAL \inst5|state.ready~q\ : std_logic;
SIGNAL \inst5|Equal8~10_combout\ : std_logic;
SIGNAL \inst5|process_1~1_combout\ : std_logic;
SIGNAL \inst5|e~0_combout\ : std_logic;
SIGNAL \inst5|e~1_combout\ : std_logic;
SIGNAL \inst5|e~2_combout\ : std_logic;
SIGNAL \inst5|e~6_combout\ : std_logic;
SIGNAL \inst5|e~7_combout\ : std_logic;
SIGNAL \inst5|dataOut[7]~2_combout\ : std_logic;
SIGNAL \inst5|dataOut[7]~3_combout\ : std_logic;
SIGNAL \inst5|dataOut[7]~1_combout\ : std_logic;
SIGNAL \inst5|dataOut[7]~4_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~5_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~6_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~7_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~9_combout\ : std_logic;
SIGNAL \inst4|display_counter[0]~31_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst4|display_counter[0]~32\ : std_logic;
SIGNAL \inst4|display_counter[1]~33_combout\ : std_logic;
SIGNAL \inst4|display_counter[1]~34\ : std_logic;
SIGNAL \inst4|display_counter[2]~35_combout\ : std_logic;
SIGNAL \inst4|display_counter[2]~36\ : std_logic;
SIGNAL \inst4|display_counter[3]~37_combout\ : std_logic;
SIGNAL \inst4|display_counter[3]~38\ : std_logic;
SIGNAL \inst4|display_counter[4]~39_combout\ : std_logic;
SIGNAL \inst4|display_counter[4]~40\ : std_logic;
SIGNAL \inst4|display_counter[5]~41_combout\ : std_logic;
SIGNAL \inst4|display_counter[5]~42\ : std_logic;
SIGNAL \inst4|display_counter[6]~43_combout\ : std_logic;
SIGNAL \inst4|display_counter[6]~44\ : std_logic;
SIGNAL \inst4|display_counter[7]~45_combout\ : std_logic;
SIGNAL \inst4|display_counter[7]~46\ : std_logic;
SIGNAL \inst4|display_counter[8]~47_combout\ : std_logic;
SIGNAL \inst4|display_counter[8]~48\ : std_logic;
SIGNAL \inst4|display_counter[9]~49_combout\ : std_logic;
SIGNAL \inst4|display_counter[9]~50\ : std_logic;
SIGNAL \inst4|display_counter[10]~51_combout\ : std_logic;
SIGNAL \inst4|display_counter[10]~52\ : std_logic;
SIGNAL \inst4|display_counter[11]~53_combout\ : std_logic;
SIGNAL \inst4|display_counter[11]~54\ : std_logic;
SIGNAL \inst4|display_counter[12]~55_combout\ : std_logic;
SIGNAL \inst4|display_counter[12]~56\ : std_logic;
SIGNAL \inst4|display_counter[13]~57_combout\ : std_logic;
SIGNAL \inst4|display_counter[13]~58\ : std_logic;
SIGNAL \inst4|display_counter[14]~59_combout\ : std_logic;
SIGNAL \inst4|display_counter[14]~60\ : std_logic;
SIGNAL \inst4|display_counter[15]~61_combout\ : std_logic;
SIGNAL \inst4|display_counter[15]~62\ : std_logic;
SIGNAL \inst4|display_counter[16]~63_combout\ : std_logic;
SIGNAL \inst4|display_counter[16]~64\ : std_logic;
SIGNAL \inst4|display_counter[17]~65_combout\ : std_logic;
SIGNAL \inst4|display_counter[17]~66\ : std_logic;
SIGNAL \inst4|display_counter[18]~67_combout\ : std_logic;
SIGNAL \inst4|display_counter[18]~68\ : std_logic;
SIGNAL \inst4|display_counter[19]~69_combout\ : std_logic;
SIGNAL \inst4|display_counter[19]~70\ : std_logic;
SIGNAL \inst4|display_counter[20]~71_combout\ : std_logic;
SIGNAL \inst4|display_counter[20]~72\ : std_logic;
SIGNAL \inst4|display_counter[21]~73_combout\ : std_logic;
SIGNAL \inst4|display_counter[21]~74\ : std_logic;
SIGNAL \inst4|display_counter[22]~75_combout\ : std_logic;
SIGNAL \inst4|display_counter[22]~76\ : std_logic;
SIGNAL \inst4|display_counter[23]~77_combout\ : std_logic;
SIGNAL \inst4|display_counter[23]~78\ : std_logic;
SIGNAL \inst4|display_counter[24]~79_combout\ : std_logic;
SIGNAL \inst4|display_counter[24]~80\ : std_logic;
SIGNAL \inst4|display_counter[25]~81_combout\ : std_logic;
SIGNAL \inst4|display_counter[25]~82\ : std_logic;
SIGNAL \inst4|display_counter[26]~83_combout\ : std_logic;
SIGNAL \inst4|display_counter[26]~84\ : std_logic;
SIGNAL \inst4|display_counter[27]~85_combout\ : std_logic;
SIGNAL \inst4|display_counter[27]~86\ : std_logic;
SIGNAL \inst4|display_counter[28]~87_combout\ : std_logic;
SIGNAL \inst4|display_counter[28]~88\ : std_logic;
SIGNAL \inst4|display_counter[29]~89_combout\ : std_logic;
SIGNAL \inst4|display_counter[29]~90\ : std_logic;
SIGNAL \inst4|display_counter[30]~91_combout\ : std_logic;
SIGNAL \inst4|LessThan5~0_combout\ : std_logic;
SIGNAL \inst4|LessThan5~5_combout\ : std_logic;
SIGNAL \inst4|LessThan5~2_combout\ : std_logic;
SIGNAL \inst4|LessThan5~1_combout\ : std_logic;
SIGNAL \inst4|LessThan5~3_combout\ : std_logic;
SIGNAL \inst4|LessThan5~4_combout\ : std_logic;
SIGNAL \inst4|LessThan5~6_combout\ : std_logic;
SIGNAL \inst4|LessThan5~7_combout\ : std_logic;
SIGNAL \inst4|display_state~feeder_combout\ : std_logic;
SIGNAL \inst4|display_state~q\ : std_logic;
SIGNAL \inst4|lcd_data~38_combout\ : std_logic;
SIGNAL \inst4|lcd_data~154_combout\ : std_logic;
SIGNAL \inst4|lcd_data~155_combout\ : std_logic;
SIGNAL \inst4|Equal23~0_combout\ : std_logic;
SIGNAL \inst4|Equal23~1_combout\ : std_logic;
SIGNAL \inst4|lcd_data~33_combout\ : std_logic;
SIGNAL \inst4|lcd_data~158_combout\ : std_logic;
SIGNAL \inst4|lcd_data~159_combout\ : std_logic;
SIGNAL \inst4|lcd_data~35_combout\ : std_logic;
SIGNAL \inst4|lcd_data~34_combout\ : std_logic;
SIGNAL \inst4|lcd_data~36_combout\ : std_logic;
SIGNAL \inst4|Equal17~0_combout\ : std_logic;
SIGNAL \inst4|lcd_data~37_combout\ : std_logic;
SIGNAL \inst4|lcd_data~156_combout\ : std_logic;
SIGNAL \inst4|lcd_data~157_combout\ : std_logic;
SIGNAL \inst4|lcd_data~39_combout\ : std_logic;
SIGNAL \inst4|lcd_data~40_combout\ : std_logic;
SIGNAL \inst5|dataStorage[6]~0_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~8_combout\ : std_logic;
SIGNAL \inst5|dataOut[6]~10_combout\ : std_logic;
SIGNAL \inst4|lcd_posX[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|lcd_posY[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|lcd_posX[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|addressStorage~0_combout\ : std_logic;
SIGNAL \inst4|Add3~1\ : std_logic;
SIGNAL \inst4|Add3~2_combout\ : std_logic;
SIGNAL \inst1|distance_counter[0]~8_combout\ : std_logic;
SIGNAL \inst1|counter_high[0]~21_combout\ : std_logic;
SIGNAL \inst1|counter_high[20]~45_combout\ : std_logic;
SIGNAL \inst1|counter_high[20]~46_combout\ : std_logic;
SIGNAL \inst1|counter_high[0]~22\ : std_logic;
SIGNAL \inst1|counter_high[1]~23_combout\ : std_logic;
SIGNAL \inst1|counter_high[1]~24\ : std_logic;
SIGNAL \inst1|counter_high[2]~25_combout\ : std_logic;
SIGNAL \inst1|counter_high[2]~26\ : std_logic;
SIGNAL \inst1|counter_high[3]~27_combout\ : std_logic;
SIGNAL \inst1|counter_high[3]~28\ : std_logic;
SIGNAL \inst1|counter_high[4]~29_combout\ : std_logic;
SIGNAL \inst1|counter_high[4]~30\ : std_logic;
SIGNAL \inst1|counter_high[5]~31_combout\ : std_logic;
SIGNAL \inst1|counter_high[5]~32\ : std_logic;
SIGNAL \inst1|counter_high[6]~33_combout\ : std_logic;
SIGNAL \inst1|counter_high[6]~34\ : std_logic;
SIGNAL \inst1|counter_high[7]~35_combout\ : std_logic;
SIGNAL \inst1|counter_high[7]~36\ : std_logic;
SIGNAL \inst1|counter_high[8]~37_combout\ : std_logic;
SIGNAL \inst1|counter_high[8]~38\ : std_logic;
SIGNAL \inst1|counter_high[9]~39_combout\ : std_logic;
SIGNAL \inst1|counter_high[9]~40\ : std_logic;
SIGNAL \inst1|counter_high[10]~41_combout\ : std_logic;
SIGNAL \inst1|counter_high[10]~42\ : std_logic;
SIGNAL \inst1|counter_high[11]~43_combout\ : std_logic;
SIGNAL \inst1|counter_high[11]~44\ : std_logic;
SIGNAL \inst1|counter_high[12]~47_combout\ : std_logic;
SIGNAL \inst1|counter_high[12]~48\ : std_logic;
SIGNAL \inst1|counter_high[13]~49_combout\ : std_logic;
SIGNAL \inst1|counter_high[13]~50\ : std_logic;
SIGNAL \inst1|counter_high[14]~51_combout\ : std_logic;
SIGNAL \inst1|counter_high[14]~52\ : std_logic;
SIGNAL \inst1|counter_high[15]~53_combout\ : std_logic;
SIGNAL \inst1|counter_high[15]~54\ : std_logic;
SIGNAL \inst1|counter_high[16]~55_combout\ : std_logic;
SIGNAL \inst1|counter_high[16]~56\ : std_logic;
SIGNAL \inst1|counter_high[17]~57_combout\ : std_logic;
SIGNAL \inst1|counter_high[17]~58\ : std_logic;
SIGNAL \inst1|counter_high[18]~59_combout\ : std_logic;
SIGNAL \inst1|counter_high[18]~60\ : std_logic;
SIGNAL \inst1|counter_high[19]~61_combout\ : std_logic;
SIGNAL \inst1|counter_high[19]~62\ : std_logic;
SIGNAL \inst1|counter_high[20]~63_combout\ : std_logic;
SIGNAL \inst1|LessThan2~5_combout\ : std_logic;
SIGNAL \inst1|LessThan2~4_combout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_combout\ : std_logic;
SIGNAL \inst1|LessThan2~2_combout\ : std_logic;
SIGNAL \inst1|LessThan2~3_combout\ : std_logic;
SIGNAL \inst1|LessThan2~6_combout\ : std_logic;
SIGNAL \inst1|distance_counter[3]~18_combout\ : std_logic;
SIGNAL \inst1|distance_counter[0]~9\ : std_logic;
SIGNAL \inst1|distance_counter[1]~10_combout\ : std_logic;
SIGNAL \inst1|distance_counter[1]~11\ : std_logic;
SIGNAL \inst1|distance_counter[2]~12_combout\ : std_logic;
SIGNAL \inst1|distance[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~9_combout\ : std_logic;
SIGNAL \inst4|lcd_data~132_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~7_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~13_combout\ : std_logic;
SIGNAL \inst4|Add3~3\ : std_logic;
SIGNAL \inst4|Add3~4_combout\ : std_logic;
SIGNAL \inst1|distance_counter[2]~13\ : std_logic;
SIGNAL \inst1|distance_counter[3]~14_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~8_combout\ : std_logic;
SIGNAL \inst4|Add3~5\ : std_logic;
SIGNAL \inst4|Add3~6_combout\ : std_logic;
SIGNAL \inst1|distance_counter[3]~15\ : std_logic;
SIGNAL \inst1|distance_counter[4]~16_combout\ : std_logic;
SIGNAL \inst1|distance[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~4_combout\ : std_logic;
SIGNAL \inst4|Add3~7\ : std_logic;
SIGNAL \inst4|Add3~8_combout\ : std_logic;
SIGNAL \inst1|distance_counter[4]~17\ : std_logic;
SIGNAL \inst1|distance_counter[5]~19_combout\ : std_logic;
SIGNAL \inst1|distance[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~5_combout\ : std_logic;
SIGNAL \inst4|Add3~9\ : std_logic;
SIGNAL \inst4|Add3~10_combout\ : std_logic;
SIGNAL \inst1|distance_counter[5]~20\ : std_logic;
SIGNAL \inst1|distance_counter[6]~21_combout\ : std_logic;
SIGNAL \inst1|distance[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~6_combout\ : std_logic;
SIGNAL \inst4|Add3~11\ : std_logic;
SIGNAL \inst4|Add3~12_combout\ : std_logic;
SIGNAL \inst1|distance_counter[6]~22\ : std_logic;
SIGNAL \inst1|distance_counter[7]~23_combout\ : std_logic;
SIGNAL \inst1|distance[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~7_combout\ : std_logic;
SIGNAL \inst4|lcd_data~42_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|Add3~0_combout\ : std_logic;
SIGNAL \inst1|distance[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~12_combout\ : std_logic;
SIGNAL \inst1|distance[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|state~9_combout\ : std_logic;
SIGNAL \inst4|data_1_storage~10_combout\ : std_logic;
SIGNAL \inst4|data_1_storage[0]~11_combout\ : std_logic;
SIGNAL \inst4|lcd_data~43_combout\ : std_logic;
SIGNAL \inst4|lcd_data~44_combout\ : std_logic;
SIGNAL \inst4|lcd_data~41_combout\ : std_logic;
SIGNAL \inst4|lcd_data~45_combout\ : std_logic;
SIGNAL \inst4|lcd_data~51_combout\ : std_logic;
SIGNAL \inst4|lcd_data~52_combout\ : std_logic;
SIGNAL \inst4|lcd_data~46_combout\ : std_logic;
SIGNAL \inst4|lcd_data~48_combout\ : std_logic;
SIGNAL \inst4|lcd_data~47_combout\ : std_logic;
SIGNAL \inst4|lcd_data~49_combout\ : std_logic;
SIGNAL \inst4|lcd_data~50_combout\ : std_logic;
SIGNAL \inst4|lcd_data~53_combout\ : std_logic;
SIGNAL \inst4|lcd_data~54_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[1]~8_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[1]~9\ : std_logic;
SIGNAL \inst4|data_3_storage[2]~10_combout\ : std_logic;
SIGNAL \inst4|data_3_storage~17_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[2]~11\ : std_logic;
SIGNAL \inst4|data_3_storage[3]~12_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[3]~13\ : std_logic;
SIGNAL \inst4|data_3_storage[4]~14_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[4]~15\ : std_logic;
SIGNAL \inst4|data_3_storage[5]~18_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[5]~19\ : std_logic;
SIGNAL \inst4|data_3_storage[6]~20_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[6]~21\ : std_logic;
SIGNAL \inst4|data_3_storage[7]~22_combout\ : std_logic;
SIGNAL \inst4|lcd_data~56_combout\ : std_logic;
SIGNAL \inst4|lcd_data~98_combout\ : std_logic;
SIGNAL \inst4|data_3_storage[1]~16_combout\ : std_logic;
SIGNAL \inst4|lcd_data~57_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[1]~7_combout\ : std_logic;
SIGNAL \inst4|lcd_data~99_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[4]~15_combout\ : std_logic;
SIGNAL \inst4|data_2_storage~16_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[1]~8\ : std_logic;
SIGNAL \inst4|data_2_storage[2]~9_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[2]~10\ : std_logic;
SIGNAL \inst4|data_2_storage[3]~11_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[3]~12\ : std_logic;
SIGNAL \inst4|data_2_storage[4]~13_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[4]~14\ : std_logic;
SIGNAL \inst4|data_2_storage[5]~17_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[5]~18\ : std_logic;
SIGNAL \inst4|data_2_storage[6]~19_combout\ : std_logic;
SIGNAL \inst4|data_2_storage[6]~20\ : std_logic;
SIGNAL \inst4|data_2_storage[7]~21_combout\ : std_logic;
SIGNAL \inst4|lcd_data~55_combout\ : std_logic;
SIGNAL \inst4|lcd_data~58_combout\ : std_logic;
SIGNAL \inst4|lcd_data~59_combout\ : std_logic;
SIGNAL \inst4|lcd_data~60_combout\ : std_logic;
SIGNAL \inst4|lcd_data~61_combout\ : std_logic;
SIGNAL \inst4|lcd_data~62_combout\ : std_logic;
SIGNAL \inst5|dataStorage[5]~1_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~11_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~12_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~13_combout\ : std_logic;
SIGNAL \inst5|dataOut[5]~14_combout\ : std_logic;
SIGNAL \inst5|addressStorage~1_combout\ : std_logic;
SIGNAL \inst4|lcd_data~73_combout\ : std_logic;
SIGNAL \inst4|lcd_data~9_combout\ : std_logic;
SIGNAL \inst4|lcd_data~145_combout\ : std_logic;
SIGNAL \inst4|lcd_data~66_combout\ : std_logic;
SIGNAL \inst4|lcd_data~67_combout\ : std_logic;
SIGNAL \inst4|lcd_data~68_combout\ : std_logic;
SIGNAL \inst4|Equal15~1_combout\ : std_logic;
SIGNAL \inst4|lcd_data~69_combout\ : std_logic;
SIGNAL \inst4|lcd_data~70_combout\ : std_logic;
SIGNAL \inst4|lcd_data~71_combout\ : std_logic;
SIGNAL \inst4|lcd_data~152_combout\ : std_logic;
SIGNAL \inst4|lcd_data~153_combout\ : std_logic;
SIGNAL \inst4|lcd_data~72_combout\ : std_logic;
SIGNAL \inst4|lcd_data~74_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~15_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~16_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~17_combout\ : std_logic;
SIGNAL \inst5|dataOut[4]~18_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~20_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~21_combout\ : std_logic;
SIGNAL \inst5|addressStorage~2_combout\ : std_logic;
SIGNAL \inst4|Equal15~0_combout\ : std_logic;
SIGNAL \inst4|lcd_data~75_combout\ : std_logic;
SIGNAL \inst4|lcd_data~146_combout\ : std_logic;
SIGNAL \inst4|lcd_data~64_combout\ : std_logic;
SIGNAL \inst4|lcd_data~76_combout\ : std_logic;
SIGNAL \inst4|lcd_data~150_combout\ : std_logic;
SIGNAL \inst4|lcd_data~151_combout\ : std_logic;
SIGNAL \inst4|lcd_data~77_combout\ : std_logic;
SIGNAL \inst4|lcd_data~78_combout\ : std_logic;
SIGNAL \inst4|lcd_data~79_combout\ : std_logic;
SIGNAL \inst4|lcd_data~80_combout\ : std_logic;
SIGNAL \inst4|lcd_data~81_combout\ : std_logic;
SIGNAL \inst4|lcd_data~82_combout\ : std_logic;
SIGNAL \inst4|lcd_data~83_combout\ : std_logic;
SIGNAL \inst4|lcd_data~84_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~19_combout\ : std_logic;
SIGNAL \inst5|dataOut[3]~22_combout\ : std_logic;
SIGNAL \inst4|lcd_data~65_combout\ : std_logic;
SIGNAL \inst4|lcd_data~95_combout\ : std_logic;
SIGNAL \inst4|lcd_data~96_combout\ : std_logic;
SIGNAL \inst4|lcd_data~88_combout\ : std_logic;
SIGNAL \inst4|lcd_data~63_combout\ : std_logic;
SIGNAL \inst4|lcd_data~94_combout\ : std_logic;
SIGNAL \inst4|lcd_data~90_combout\ : std_logic;
SIGNAL \inst4|lcd_data~89_combout\ : std_logic;
SIGNAL \inst4|lcd_data~91_combout\ : std_logic;
SIGNAL \inst4|lcd_data~92_combout\ : std_logic;
SIGNAL \inst4|lcd_data~93_combout\ : std_logic;
SIGNAL \inst4|lcd_data~148_combout\ : std_logic;
SIGNAL \inst4|lcd_data~149_combout\ : std_logic;
SIGNAL \inst4|lcd_data~97_combout\ : std_logic;
SIGNAL \inst4|lcd_data~100_combout\ : std_logic;
SIGNAL \inst4|lcd_data~101_combout\ : std_logic;
SIGNAL \inst4|lcd_data~102_combout\ : std_logic;
SIGNAL \inst4|lcd_data~85_combout\ : std_logic;
SIGNAL \inst4|lcd_data~86_combout\ : std_logic;
SIGNAL \inst4|lcd_data~87_combout\ : std_logic;
SIGNAL \inst4|lcd_data~103_combout\ : std_logic;
SIGNAL \inst5|dataStorage[2]~2_combout\ : std_logic;
SIGNAL \inst5|addressStorage~3_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~23_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~24_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~25_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~26_combout\ : std_logic;
SIGNAL \inst5|dataOut[2]~27_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~29_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~30_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~31_combout\ : std_logic;
SIGNAL \inst4|lcd_data~104_combout\ : std_logic;
SIGNAL \inst4|lcd_data~105_combout\ : std_logic;
SIGNAL \inst4|lcd_data~116_combout\ : std_logic;
SIGNAL \inst4|lcd_data~117_combout\ : std_logic;
SIGNAL \inst4|lcd_data~118_combout\ : std_logic;
SIGNAL \inst4|lcd_data~119_combout\ : std_logic;
SIGNAL \inst4|lcd_data~115_combout\ : std_logic;
SIGNAL \inst4|lcd_data~120_combout\ : std_logic;
SIGNAL \inst4|lcd_data~144_combout\ : std_logic;
SIGNAL \inst4|lcd_data~113_combout\ : std_logic;
SIGNAL \inst4|lcd_data~106_combout\ : std_logic;
SIGNAL \inst4|lcd_data~107_combout\ : std_logic;
SIGNAL \inst4|lcd_data~28_combout\ : std_logic;
SIGNAL \inst4|lcd_data~147_combout\ : std_logic;
SIGNAL \inst4|lcd_data~108_combout\ : std_logic;
SIGNAL \inst4|lcd_data~109_combout\ : std_logic;
SIGNAL \inst4|lcd_data~110_combout\ : std_logic;
SIGNAL \inst4|lcd_data~111_combout\ : std_logic;
SIGNAL \inst4|lcd_data~114_combout\ : std_logic;
SIGNAL \inst4|lcd_data~121_combout\ : std_logic;
SIGNAL \inst5|dataStorage[1]~3_combout\ : std_logic;
SIGNAL \inst4|lcd_posX[1]~feeder_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~28_combout\ : std_logic;
SIGNAL \inst5|dataOut[1]~32_combout\ : std_logic;
SIGNAL \inst4|lcd_data~126_combout\ : std_logic;
SIGNAL \inst4|lcd_data~127_combout\ : std_logic;
SIGNAL \inst4|lcd_data~124_combout\ : std_logic;
SIGNAL \inst4|lcd_data~125_combout\ : std_logic;
SIGNAL \inst4|lcd_data~122_combout\ : std_logic;
SIGNAL \inst4|lcd_data~123_combout\ : std_logic;
SIGNAL \inst4|lcd_data~128_combout\ : std_logic;
SIGNAL \inst4|lcd_data~138_combout\ : std_logic;
SIGNAL \inst4|lcd_data~139_combout\ : std_logic;
SIGNAL \inst4|lcd_data~140_combout\ : std_logic;
SIGNAL \inst4|lcd_data~135_combout\ : std_logic;
SIGNAL \inst4|lcd_data~136_combout\ : std_logic;
SIGNAL \inst4|lcd_data~137_combout\ : std_logic;
SIGNAL \inst4|lcd_data~141_combout\ : std_logic;
SIGNAL \inst4|lcd_data~131_combout\ : std_logic;
SIGNAL \inst4|lcd_data~133_combout\ : std_logic;
SIGNAL \inst4|lcd_data~129_combout\ : std_logic;
SIGNAL \inst4|lcd_data~130_combout\ : std_logic;
SIGNAL \inst4|lcd_data~134_combout\ : std_logic;
SIGNAL \inst4|lcd_data~142_combout\ : std_logic;
SIGNAL \inst5|addressStorage[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~34_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~33_combout\ : std_logic;
SIGNAL \inst5|dataOut[0]~35_combout\ : std_logic;
SIGNAL \inst4|data_1_storage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|distance\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|lineCount\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst4|lcd_posX\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst4|lcd_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|dataStorage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|charCount\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst4|counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst5|charCreationCounter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst4|data_2_storage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|data_3_storage\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|lcd_posY\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|counter_high\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \inst4|display_counter\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst1|distance_counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|addressStorage\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst5|ALT_INV_process_1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

lcd_rs <= ww_lcd_rs;
ww_clk_50 <= clk_50;
lcd_rw <= ww_lcd_rw;
lcd_e <= ww_lcd_e;
lcd_data <= ww_lcd_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\inst5|ALT_INV_process_1~1_combout\ <= NOT \inst5|process_1~1_combout\;
\inst1|ALT_INV_ctrl_state.STATE_COUNT~q\ <= NOT \inst1|ctrl_state.STATE_COUNT~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y20_N16
\us_1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|trigger~reg0_q\,
	oe => \inst1|trigger~en_q\,
	devoe => ww_devoe,
	o => \us_1~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\lcd_rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_process_1~1_combout\,
	devoe => ww_devoe,
	o => \lcd_rs~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\lcd_rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_rw~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\lcd_e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|e~7_combout\,
	devoe => ww_devoe,
	o => \lcd_e~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\lcd_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[7]~4_combout\,
	devoe => ww_devoe,
	o => \lcd_data[7]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\lcd_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[6]~10_combout\,
	devoe => ww_devoe,
	o => \lcd_data[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\lcd_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[5]~14_combout\,
	devoe => ww_devoe,
	o => \lcd_data[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\lcd_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[4]~18_combout\,
	devoe => ww_devoe,
	o => \lcd_data[4]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\lcd_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[3]~22_combout\,
	devoe => ww_devoe,
	o => \lcd_data[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\lcd_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[2]~27_combout\,
	devoe => ww_devoe,
	o => \lcd_data[2]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\lcd_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[1]~32_combout\,
	devoe => ww_devoe,
	o => \lcd_data[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\lcd_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|dataOut[0]~35_combout\,
	devoe => ww_devoe,
	o => \lcd_data[0]~output_o\);

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

-- Location: IOIBUF_X53_Y20_N15
\us_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => us_1,
	o => \us_1~input_o\);

-- Location: LCCOMB_X44_Y23_N12
\inst1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = (!\inst1|ctrl_state.STATE_WAIT~q\ & !\inst1|ctrl_state.STATE_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_WAIT~q\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X44_Y23_N22
\inst1|counter[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[17]~0_combout\ = (\us_1~input_o\ & ((!\inst1|ctrl_state.STATE_WAIT~q\))) # (!\us_1~input_o\ & (!\inst1|ctrl_state.STATE_COUNT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctrl_state.STATE_COUNT~q\,
	datac => \us_1~input_o\,
	datad => \inst1|ctrl_state.STATE_WAIT~q\,
	combout => \inst1|counter[17]~0_combout\);

-- Location: LCCOMB_X40_Y24_N12
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X40_Y24_N13
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X40_Y24_N14
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|counter\(1) & (!\inst|Add0~1\)) # (!\inst|counter\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X40_Y24_N15
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X40_Y24_N16
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|counter\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|counter\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|counter\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X40_Y24_N17
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X40_Y24_N18
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(3) & (!\inst|Add0~5\)) # (!\inst|counter\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X40_Y24_N19
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X40_Y24_N20
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|counter\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|counter\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|counter\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X40_Y24_N21
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X40_Y24_N22
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|counter\(5) & (!\inst|Add0~9\)) # (!\inst|counter\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X40_Y24_N23
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X40_Y24_N24
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|counter\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|counter\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|counter\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X40_Y24_N30
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|counter\(9) & (!\inst|Add0~17\)) # (!\inst|counter\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X40_Y23_N0
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|counter\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|counter\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|counter\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X40_Y23_N1
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X40_Y23_N2
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|counter\(11) & (!\inst|Add0~21\)) # (!\inst|counter\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X40_Y23_N3
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X40_Y23_N4
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|counter\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|counter\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|counter\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X40_Y23_N5
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X40_Y23_N6
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|counter\(13) & (!\inst|Add0~25\)) # (!\inst|counter\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X40_Y23_N7
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X40_Y23_N8
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|counter\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|counter\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|counter\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X40_Y23_N22
\inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~4_combout\ = (\inst|Add0~28_combout\ & !\inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~28_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|counter~4_combout\);

-- Location: FF_X40_Y23_N23
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: LCCOMB_X40_Y23_N10
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|counter\(15) & (!\inst|Add0~29\)) # (!\inst|counter\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X40_Y23_N11
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: LCCOMB_X40_Y23_N12
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|counter\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|counter\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|counter\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X41_Y23_N6
\inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~5_combout\ = (!\inst|Equal0~6_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Add0~32_combout\,
	combout => \inst|counter~5_combout\);

-- Location: FF_X41_Y23_N7
\inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(16));

-- Location: LCCOMB_X40_Y23_N14
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|counter\(17) & (!\inst|Add0~33\)) # (!\inst|counter\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X41_Y23_N4
\inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~6_combout\ = (!\inst|Equal0~6_combout\ & \inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|counter~6_combout\);

-- Location: FF_X41_Y23_N5
\inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(17));

-- Location: LCCOMB_X40_Y23_N16
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|counter\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|counter\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|counter\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X41_Y23_N28
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|Add0~36_combout\ & !\inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~36_combout\,
	datac => \inst|Equal0~6_combout\,
	combout => \inst|counter~0_combout\);

-- Location: FF_X41_Y23_N29
\inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(18));

-- Location: LCCOMB_X40_Y23_N18
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = \inst|Add0~37\ $ (\inst|counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(19),
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\);

-- Location: LCCOMB_X41_Y23_N26
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|Equal0~6_combout\ & \inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|counter~1_combout\);

-- Location: FF_X41_Y23_N27
\inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(19));

-- Location: LCCOMB_X41_Y23_N18
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|counter\(19) & (\inst|counter\(17) & (\inst|counter\(16) & \inst|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(19),
	datab => \inst|counter\(17),
	datac => \inst|counter\(16),
	datad => \inst|counter\(18),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y24_N2
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|counter\(9) & (\inst|counter\(4) & (\inst|counter\(5) & \inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(4),
	datac => \inst|counter\(5),
	datad => \inst|counter\(3),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X40_Y24_N8
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|counter\(14) & (\inst|counter\(2) & (\inst|counter\(1) & \inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(14),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(0),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X40_Y23_N26
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(15) & (!\inst|counter\(8) & (!\inst|counter\(7) & !\inst|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datab => \inst|counter\(8),
	datac => \inst|counter\(7),
	datad => \inst|counter\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y23_N20
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|counter\(13) & (!\inst|counter\(11) & (!\inst|counter\(12) & !\inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|counter\(11),
	datac => \inst|counter\(12),
	datad => \inst|counter\(10),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y23_N24
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X40_Y24_N10
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~4_combout\ & (\inst|Equal0~5_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y24_N0
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|Add0~12_combout\ & !\inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~12_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X40_Y24_N1
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X40_Y24_N26
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|counter\(7) & (!\inst|Add0~13\)) # (!\inst|counter\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X40_Y24_N27
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X40_Y24_N28
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|counter\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|counter\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|counter\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X40_Y24_N29
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X40_Y24_N6
\inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (\inst|Add0~18_combout\ & !\inst|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~18_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|counter~3_combout\);

-- Location: FF_X40_Y24_N7
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X40_Y24_N4
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|counter\(9) & (((!\inst|counter\(2) & !\inst|counter\(3))) # (!\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(2),
	datac => \inst|counter\(3),
	datad => \inst|counter\(4),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X40_Y23_N28
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|counter\(16) & (!\inst|counter\(5) & (!\inst|counter\(14) & !\inst|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datab => \inst|counter\(5),
	datac => \inst|counter\(14),
	datad => \inst|counter\(17),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X41_Y23_N8
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|counter\(19) & !\inst|counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(19),
	datad => \inst|counter\(18),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y23_N30
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~1_combout\ & (\inst|LessThan0~2_combout\ & (\inst|LessThan0~0_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X44_Y23_N10
\inst1|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~1_combout\ = (\inst1|ctrl_state.STATE_WAIT~q\ & ((\us_1~input_o\) # ((\inst1|ctrl_state.STATE_COUNT~q\)))) # (!\inst1|ctrl_state.STATE_WAIT~q\ & ((\inst1|ctrl_state.STATE_COUNT~q\ & (!\us_1~input_o\)) # (!\inst1|ctrl_state.STATE_COUNT~q\ 
-- & ((\inst1|ctrl_state.STATE_INIT~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_WAIT~q\,
	datab => \us_1~input_o\,
	datac => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|Selector28~1_combout\);

-- Location: LCCOMB_X44_Y23_N2
\inst1|Selector28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~2_combout\ = (\inst1|Selector28~1_combout\) # ((\inst|LessThan0~3_combout\) # ((!\inst1|WideOr2~0_combout\ & !\inst1|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector28~1_combout\,
	datab => \inst1|WideOr2~0_combout\,
	datac => \inst|LessThan0~3_combout\,
	datad => \inst1|LessThan1~6_combout\,
	combout => \inst1|Selector28~2_combout\);

-- Location: LCCOMB_X44_Y23_N16
\inst1|Selector28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~3_combout\ = (\inst|LessThan0~3_combout\ & ((\inst1|Selector28~0_combout\) # ((\inst1|Selector28~2_combout\ & \inst1|last_enable~q\)))) # (!\inst|LessThan0~3_combout\ & (\inst1|Selector28~2_combout\ & (\inst1|last_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datab => \inst1|Selector28~2_combout\,
	datac => \inst1|last_enable~q\,
	datad => \inst1|Selector28~0_combout\,
	combout => \inst1|Selector28~3_combout\);

-- Location: FF_X44_Y23_N17
\inst1|last_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Selector28~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|last_enable~q\);

-- Location: LCCOMB_X44_Y23_N8
\inst1|Selector58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector58~2_combout\ = (!\inst1|last_enable~q\ & (!\inst1|ctrl_state.STATE_INIT~q\ & \inst|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|last_enable~q\,
	datac => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst1|Selector58~2_combout\);

-- Location: FF_X45_Y24_N5
\inst1|ctrl_state.STATE_SEND_HIGH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|ctrl_state.STATE_SEND_START~q\,
	sload => VCC,
	ena => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_SEND_HIGH~q\);

-- Location: FF_X45_Y24_N31
\inst1|ctrl_state.STATE_SEND_FIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|ctrl_state.STATE_SEND_HIGH~q\,
	sload => VCC,
	ena => \inst1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_SEND_FIN~q\);

-- Location: LCCOMB_X45_Y24_N30
\inst1|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector58~0_combout\ = (\inst1|LessThan0~6_combout\ & ((\inst1|ctrl_state.STATE_SEND_START~q\) # ((\inst1|ctrl_state.STATE_SEND_HIGH~q\) # (\inst1|ctrl_state.STATE_SEND_FIN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_SEND_START~q\,
	datab => \inst1|ctrl_state.STATE_SEND_HIGH~q\,
	datac => \inst1|ctrl_state.STATE_SEND_FIN~q\,
	datad => \inst1|LessThan0~6_combout\,
	combout => \inst1|Selector58~0_combout\);

-- Location: LCCOMB_X44_Y23_N0
\inst1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = ((\inst1|Selector58~2_combout\) # ((\inst1|Selector58~0_combout\) # (\inst1|Selector28~0_combout\))) # (!\inst1|counter[17]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter[17]~0_combout\,
	datab => \inst1|Selector58~2_combout\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Selector28~0_combout\,
	combout => \inst1|Selector5~0_combout\);

-- Location: LCCOMB_X44_Y23_N20
\inst1|ctrl_state.STATE_FIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ctrl_state.STATE_FIN~2_combout\ = (\inst1|ctrl_state.STATE_COUNT~q\ & (((\inst1|ctrl_state.STATE_FIN~q\ & !\inst1|Selector5~0_combout\)) # (!\us_1~input_o\))) # (!\inst1|ctrl_state.STATE_COUNT~q\ & (((\inst1|ctrl_state.STATE_FIN~q\ & 
-- !\inst1|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_COUNT~q\,
	datab => \us_1~input_o\,
	datac => \inst1|ctrl_state.STATE_FIN~q\,
	datad => \inst1|Selector5~0_combout\,
	combout => \inst1|ctrl_state.STATE_FIN~2_combout\);

-- Location: FF_X44_Y23_N21
\inst1|ctrl_state.STATE_FIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|ctrl_state.STATE_FIN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_FIN~q\);

-- Location: LCCOMB_X44_Y23_N30
\inst1|counter[17]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[17]~2_combout\ = (\inst1|ctrl_state.STATE_FIN~q\) # ((\us_1~input_o\ & (\inst1|ctrl_state.STATE_WAIT~q\)) # (!\us_1~input_o\ & ((\inst1|ctrl_state.STATE_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_WAIT~q\,
	datab => \inst1|ctrl_state.STATE_FIN~q\,
	datac => \us_1~input_o\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|counter[17]~2_combout\);

-- Location: LCCOMB_X45_Y23_N22
\inst1|counter[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[17]~1_combout\ = (!\inst1|ctrl_state.STATE_INIT~q\ & ((\inst1|last_enable~q\) # (!\inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|last_enable~q\,
	datab => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst1|counter[17]~1_combout\);

-- Location: LCCOMB_X45_Y23_N18
\inst1|counter[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[17]~3_combout\ = (!\inst1|counter[17]~2_combout\ & (!\inst1|counter[17]~1_combout\ & ((\inst1|WideOr2~0_combout\) # (!\inst1|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \inst1|counter[17]~2_combout\,
	datac => \inst1|counter[17]~1_combout\,
	datad => \inst1|LessThan1~6_combout\,
	combout => \inst1|counter[17]~3_combout\);

-- Location: LCCOMB_X46_Y23_N8
\inst1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~42_combout\ = (\inst1|counter\(14) & (\inst1|Add0~40\ $ (GND))) # (!\inst1|counter\(14) & (!\inst1|Add0~40\ & VCC))
-- \inst1|Add0~43\ = CARRY((\inst1|counter\(14) & !\inst1|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(14),
	datad => VCC,
	cin => \inst1|Add0~40\,
	combout => \inst1|Add0~42_combout\,
	cout => \inst1|Add0~43\);

-- Location: LCCOMB_X46_Y23_N10
\inst1|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~45_combout\ = (\inst1|counter\(15) & (!\inst1|Add0~43\)) # (!\inst1|counter\(15) & ((\inst1|Add0~43\) # (GND)))
-- \inst1|Add0~46\ = CARRY((!\inst1|Add0~43\) # (!\inst1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(15),
	datad => VCC,
	cin => \inst1|Add0~43\,
	combout => \inst1|Add0~45_combout\,
	cout => \inst1|Add0~46\);

-- Location: LCCOMB_X46_Y23_N28
\inst1|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~47_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~45_combout\,
	combout => \inst1|Add0~47_combout\);

-- Location: FF_X46_Y23_N29
\inst1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~47_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(15));

-- Location: LCCOMB_X46_Y23_N12
\inst1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~48_combout\ = (\inst1|counter\(16) & (\inst1|Add0~46\ $ (GND))) # (!\inst1|counter\(16) & (!\inst1|Add0~46\ & VCC))
-- \inst1|Add0~49\ = CARRY((\inst1|counter\(16) & !\inst1|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(16),
	datad => VCC,
	cin => \inst1|Add0~46\,
	combout => \inst1|Add0~48_combout\,
	cout => \inst1|Add0~49\);

-- Location: LCCOMB_X46_Y23_N30
\inst1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~50_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~48_combout\,
	combout => \inst1|Add0~50_combout\);

-- Location: FF_X46_Y23_N31
\inst1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~50_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(16));

-- Location: LCCOMB_X46_Y23_N14
\inst1|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~51_combout\ = (\inst1|counter\(17) & (!\inst1|Add0~49\)) # (!\inst1|counter\(17) & ((\inst1|Add0~49\) # (GND)))
-- \inst1|Add0~52\ = CARRY((!\inst1|Add0~49\) # (!\inst1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(17),
	datad => VCC,
	cin => \inst1|Add0~49\,
	combout => \inst1|Add0~51_combout\,
	cout => \inst1|Add0~52\);

-- Location: LCCOMB_X47_Y23_N16
\inst1|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~53_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|ctrl_state.STATE_INIT~q\ & \inst1|Add0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst1|Add0~51_combout\,
	combout => \inst1|Add0~53_combout\);

-- Location: FF_X47_Y23_N17
\inst1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~53_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(17));

-- Location: LCCOMB_X46_Y23_N16
\inst1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~54_combout\ = (\inst1|counter\(18) & (\inst1|Add0~52\ $ (GND))) # (!\inst1|counter\(18) & (!\inst1|Add0~52\ & VCC))
-- \inst1|Add0~55\ = CARRY((\inst1|counter\(18) & !\inst1|Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(18),
	datad => VCC,
	cin => \inst1|Add0~52\,
	combout => \inst1|Add0~54_combout\,
	cout => \inst1|Add0~55\);

-- Location: LCCOMB_X47_Y23_N2
\inst1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~56_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (\inst1|Add0~54_combout\ & !\inst1|Selector58~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Add0~54_combout\,
	datad => \inst1|Selector58~0_combout\,
	combout => \inst1|Add0~56_combout\);

-- Location: FF_X47_Y23_N3
\inst1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~56_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(18));

-- Location: LCCOMB_X46_Y23_N18
\inst1|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~57_combout\ = (\inst1|counter\(19) & (!\inst1|Add0~55\)) # (!\inst1|counter\(19) & ((\inst1|Add0~55\) # (GND)))
-- \inst1|Add0~58\ = CARRY((!\inst1|Add0~55\) # (!\inst1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(19),
	datad => VCC,
	cin => \inst1|Add0~55\,
	combout => \inst1|Add0~57_combout\,
	cout => \inst1|Add0~58\);

-- Location: LCCOMB_X46_Y23_N22
\inst1|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~59_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~57_combout\,
	combout => \inst1|Add0~59_combout\);

-- Location: FF_X46_Y23_N23
\inst1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~59_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(19));

-- Location: LCCOMB_X46_Y23_N20
\inst1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~60_combout\ = \inst1|Add0~58\ $ (!\inst1|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|counter\(20),
	cin => \inst1|Add0~58\,
	combout => \inst1|Add0~60_combout\);

-- Location: LCCOMB_X47_Y23_N18
\inst1|counter[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[17]~4_combout\ = (\inst1|Selector58~0_combout\) # (!\inst1|ctrl_state.STATE_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst1|Selector58~0_combout\,
	combout => \inst1|counter[17]~4_combout\);

-- Location: LCCOMB_X47_Y23_N8
\inst1|counter[20]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter[20]~5_combout\ = (\inst1|counter[17]~3_combout\ & (\inst1|Add0~60_combout\ & ((!\inst1|counter[17]~4_combout\)))) # (!\inst1|counter[17]~3_combout\ & (((\inst1|counter\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter[17]~3_combout\,
	datab => \inst1|Add0~60_combout\,
	datac => \inst1|counter\(20),
	datad => \inst1|counter[17]~4_combout\,
	combout => \inst1|counter[20]~5_combout\);

-- Location: FF_X47_Y23_N9
\inst1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter[20]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(20));

-- Location: LCCOMB_X47_Y23_N12
\inst1|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~5_combout\ = (\inst1|counter\(18) & (\inst1|counter\(20) & \inst1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(18),
	datac => \inst1|counter\(20),
	datad => \inst1|counter\(17),
	combout => \inst1|LessThan1~5_combout\);

-- Location: LCCOMB_X45_Y23_N6
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (\inst1|counter\(15) & (\inst1|counter\(13) & \inst1|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(15),
	datac => \inst1|counter\(13),
	datad => \inst1|counter\(14),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X46_Y24_N12
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|counter\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: LCCOMB_X45_Y24_N16
\inst1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~32_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|Add0~32_combout\);

-- Location: FF_X45_Y24_N17
\inst1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~32_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(0));

-- Location: LCCOMB_X46_Y24_N14
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|counter\(1) & (!\inst1|Add0~1\)) # (!\inst1|counter\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X45_Y24_N26
\inst1|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (\inst1|Add0~2_combout\ & !\inst1|Selector58~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datab => \inst1|Add0~2_combout\,
	datac => \inst1|Selector58~0_combout\,
	combout => \inst1|Add0~33_combout\);

-- Location: FF_X45_Y24_N27
\inst1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~33_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(1));

-- Location: LCCOMB_X46_Y24_N16
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|counter\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|counter\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|counter\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X45_Y24_N22
\inst1|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~31_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Add0~31_combout\);

-- Location: FF_X45_Y24_N23
\inst1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~31_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(2));

-- Location: LCCOMB_X46_Y24_N18
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|counter\(3) & (!\inst1|Add0~5\)) # (!\inst1|counter\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X45_Y24_N8
\inst1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~30_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~6_combout\,
	combout => \inst1|Add0~30_combout\);

-- Location: FF_X45_Y24_N9
\inst1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~30_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(3));

-- Location: LCCOMB_X46_Y24_N20
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|counter\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|counter\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|counter\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X45_Y24_N14
\inst1|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~37_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|Add0~8_combout\ & \inst1|ctrl_state.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|ctrl_state.STATE_INIT~q\,
	combout => \inst1|Add0~37_combout\);

-- Location: FF_X45_Y24_N15
\inst1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~37_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(4));

-- Location: LCCOMB_X46_Y24_N22
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|counter\(5) & (!\inst1|Add0~9\)) # (!\inst1|counter\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X45_Y24_N6
\inst1|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~35_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Add0~35_combout\);

-- Location: FF_X45_Y24_N7
\inst1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~35_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(5));

-- Location: LCCOMB_X46_Y24_N24
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|counter\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|counter\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|counter\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X45_Y24_N20
\inst1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~36_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~12_combout\,
	combout => \inst1|Add0~36_combout\);

-- Location: FF_X45_Y24_N21
\inst1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~36_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(6));

-- Location: LCCOMB_X46_Y24_N26
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|counter\(7) & (!\inst1|Add0~13\)) # (!\inst1|counter\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X45_Y23_N4
\inst1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~38_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|Add0~14_combout\ & \inst1|ctrl_state.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|ctrl_state.STATE_INIT~q\,
	combout => \inst1|Add0~38_combout\);

-- Location: FF_X45_Y23_N5
\inst1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~38_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(7));

-- Location: LCCOMB_X46_Y24_N28
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|counter\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|counter\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|counter\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X45_Y23_N10
\inst1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~34_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|ctrl_state.STATE_INIT~q\ & \inst1|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst1|Add0~16_combout\,
	combout => \inst1|Add0~34_combout\);

-- Location: FF_X45_Y23_N11
\inst1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~34_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(8));

-- Location: LCCOMB_X46_Y24_N30
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|counter\(9) & (!\inst1|Add0~17\)) # (!\inst1|counter\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X45_Y23_N24
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|Add0~18_combout\ & \inst1|ctrl_state.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|Add0~18_combout\,
	datad => \inst1|ctrl_state.STATE_INIT~q\,
	combout => \inst1|Add0~20_combout\);

-- Location: FF_X45_Y23_N25
\inst1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~20_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(9));

-- Location: LCCOMB_X46_Y23_N0
\inst1|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_combout\ = (\inst1|counter\(10) & (\inst1|Add0~19\ $ (GND))) # (!\inst1|counter\(10) & (!\inst1|Add0~19\ & VCC))
-- \inst1|Add0~22\ = CARRY((\inst1|counter\(10) & !\inst1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(10),
	datad => VCC,
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~21_combout\,
	cout => \inst1|Add0~22\);

-- Location: LCCOMB_X45_Y23_N26
\inst1|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~23_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|Add0~21_combout\ & \inst1|ctrl_state.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|Add0~21_combout\,
	datad => \inst1|ctrl_state.STATE_INIT~q\,
	combout => \inst1|Add0~23_combout\);

-- Location: FF_X45_Y23_N27
\inst1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~23_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(10));

-- Location: LCCOMB_X46_Y23_N2
\inst1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~24_combout\ = (\inst1|counter\(11) & (!\inst1|Add0~22\)) # (!\inst1|counter\(11) & ((\inst1|Add0~22\) # (GND)))
-- \inst1|Add0~25\ = CARRY((!\inst1|Add0~22\) # (!\inst1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(11),
	datad => VCC,
	cin => \inst1|Add0~22\,
	combout => \inst1|Add0~24_combout\,
	cout => \inst1|Add0~25\);

-- Location: LCCOMB_X45_Y23_N8
\inst1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~26_combout\ = (!\inst1|Selector58~0_combout\ & (\inst1|Add0~24_combout\ & \inst1|ctrl_state.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector58~0_combout\,
	datac => \inst1|Add0~24_combout\,
	datad => \inst1|ctrl_state.STATE_INIT~q\,
	combout => \inst1|Add0~26_combout\);

-- Location: FF_X45_Y23_N9
\inst1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~26_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(11));

-- Location: LCCOMB_X46_Y23_N4
\inst1|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~27_combout\ = (\inst1|counter\(12) & (\inst1|Add0~25\ $ (GND))) # (!\inst1|counter\(12) & (!\inst1|Add0~25\ & VCC))
-- \inst1|Add0~28\ = CARRY((\inst1|counter\(12) & !\inst1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter\(12),
	datad => VCC,
	cin => \inst1|Add0~25\,
	combout => \inst1|Add0~27_combout\,
	cout => \inst1|Add0~28\);

-- Location: LCCOMB_X45_Y23_N30
\inst1|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~27_combout\,
	combout => \inst1|Add0~29_combout\);

-- Location: FF_X45_Y23_N31
\inst1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~29_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(12));

-- Location: LCCOMB_X45_Y23_N28
\inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_combout\ = (!\inst1|counter\(10) & (!\inst1|counter\(12) & !\inst1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(10),
	datab => \inst1|counter\(12),
	datad => \inst1|counter\(11),
	combout => \inst1|LessThan0~7_combout\);

-- Location: LCCOMB_X45_Y24_N12
\inst1|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~1_combout\ = (\inst1|counter\(2)) # ((\inst1|counter\(3)) # ((\inst1|counter\(1)) # (\inst1|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(2),
	datab => \inst1|counter\(3),
	datac => \inst1|counter\(1),
	datad => \inst1|counter\(0),
	combout => \inst1|LessThan1~1_combout\);

-- Location: LCCOMB_X45_Y24_N18
\inst1|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~2_combout\ = (\inst1|counter\(5) & (\inst1|counter\(6) & ((\inst1|counter\(4)) # (\inst1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(5),
	datab => \inst1|counter\(6),
	datac => \inst1|counter\(4),
	datad => \inst1|LessThan1~1_combout\,
	combout => \inst1|LessThan1~2_combout\);

-- Location: LCCOMB_X45_Y23_N12
\inst1|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~3_combout\ = (\inst1|counter\(8) & (\inst1|counter\(9) & ((\inst1|counter\(7)) # (\inst1|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(8),
	datab => \inst1|counter\(9),
	datac => \inst1|counter\(7),
	datad => \inst1|LessThan1~2_combout\,
	combout => \inst1|LessThan1~3_combout\);

-- Location: LCCOMB_X45_Y23_N2
\inst1|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~4_combout\ = (\inst1|counter\(16)) # ((\inst1|LessThan1~0_combout\ & ((\inst1|LessThan1~3_combout\) # (!\inst1|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|LessThan0~7_combout\,
	datac => \inst1|counter\(16),
	datad => \inst1|LessThan1~3_combout\,
	combout => \inst1|LessThan1~4_combout\);

-- Location: LCCOMB_X45_Y23_N16
\inst1|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~6_combout\ = (\inst1|counter\(20) & ((\inst1|counter\(19)) # ((\inst1|LessThan1~5_combout\ & \inst1|LessThan1~4_combout\)))) # (!\inst1|counter\(20) & (((\inst1|LessThan1~5_combout\ & \inst1|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(20),
	datab => \inst1|counter\(19),
	datac => \inst1|LessThan1~5_combout\,
	datad => \inst1|LessThan1~4_combout\,
	combout => \inst1|LessThan1~6_combout\);

-- Location: LCCOMB_X44_Y23_N28
\inst1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~0_combout\ = (\inst1|LessThan1~6_combout\ & ((\us_1~input_o\ & ((\inst1|ctrl_state.STATE_COUNT~q\))) # (!\us_1~input_o\ & (\inst1|ctrl_state.STATE_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_WAIT~q\,
	datab => \inst1|ctrl_state.STATE_COUNT~q\,
	datac => \us_1~input_o\,
	datad => \inst1|LessThan1~6_combout\,
	combout => \inst1|Selector28~0_combout\);

-- Location: LCCOMB_X44_Y23_N14
\inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|distance[7]~0_combout\ & (((\inst1|ctrl_state.STATE_INIT~q\) # (\inst1|Selector5~0_combout\)))) # (!\inst1|distance[7]~0_combout\ & (!\inst1|Selector28~0_combout\ & ((\inst1|ctrl_state.STATE_INIT~q\) # 
-- (\inst1|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|distance[7]~0_combout\,
	datab => \inst1|Selector28~0_combout\,
	datac => \inst1|ctrl_state.STATE_INIT~q\,
	datad => \inst1|Selector5~0_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X44_Y23_N15
\inst1|ctrl_state.STATE_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_INIT~q\);

-- Location: LCCOMB_X46_Y23_N6
\inst1|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~39_combout\ = (\inst1|counter\(13) & (!\inst1|Add0~28\)) # (!\inst1|counter\(13) & ((\inst1|Add0~28\) # (GND)))
-- \inst1|Add0~40\ = CARRY((!\inst1|Add0~28\) # (!\inst1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(13),
	datad => VCC,
	cin => \inst1|Add0~28\,
	combout => \inst1|Add0~39_combout\,
	cout => \inst1|Add0~40\);

-- Location: LCCOMB_X45_Y23_N14
\inst1|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~41_combout\ = (\inst1|ctrl_state.STATE_INIT~q\ & (!\inst1|Selector58~0_combout\ & \inst1|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|Add0~39_combout\,
	combout => \inst1|Add0~41_combout\);

-- Location: FF_X45_Y23_N15
\inst1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~41_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(13));

-- Location: LCCOMB_X46_Y23_N26
\inst1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~44_combout\ = (\inst1|Add0~42_combout\ & (!\inst1|Selector58~0_combout\ & \inst1|ctrl_state.STATE_INIT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~42_combout\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst1|ctrl_state.STATE_INIT~q\,
	combout => \inst1|Add0~44_combout\);

-- Location: FF_X46_Y23_N27
\inst1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Add0~44_combout\,
	ena => \inst1|counter[17]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter\(14));

-- Location: LCCOMB_X46_Y23_N24
\inst1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~4_combout\ = (\inst1|counter\(14)) # ((\inst1|counter\(15)) # ((\inst1|counter\(16)) # (\inst1|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(14),
	datab => \inst1|counter\(15),
	datac => \inst1|counter\(16),
	datad => \inst1|counter\(13),
	combout => \inst1|LessThan0~4_combout\);

-- Location: LCCOMB_X47_Y23_N10
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_combout\ = (\inst1|counter\(20)) # ((\inst1|counter\(17)) # ((\inst1|counter\(19)) # (\inst1|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(20),
	datab => \inst1|counter\(17),
	datac => \inst1|counter\(19),
	datad => \inst1|counter\(18),
	combout => \inst1|LessThan0~5_combout\);

-- Location: LCCOMB_X45_Y24_N28
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_combout\ = (\inst1|counter\(3)) # ((\inst1|counter\(2) & ((\inst1|counter\(1)) # (\inst1|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(2),
	datab => \inst1|counter\(3),
	datac => \inst1|counter\(1),
	datad => \inst1|counter\(0),
	combout => \inst1|LessThan0~1_combout\);

-- Location: LCCOMB_X45_Y24_N0
\inst1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~2_combout\ = (\inst1|counter\(5) & (\inst1|counter\(6) & (\inst1|counter\(4) & \inst1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(5),
	datab => \inst1|counter\(6),
	datac => \inst1|counter\(4),
	datad => \inst1|counter\(7),
	combout => \inst1|LessThan0~2_combout\);

-- Location: LCCOMB_X45_Y23_N0
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|counter\(10)) # ((\inst1|counter\(11)) # ((\inst1|counter\(12)) # (\inst1|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter\(10),
	datab => \inst1|counter\(11),
	datac => \inst1|counter\(12),
	datad => \inst1|counter\(9),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X45_Y24_N10
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_combout\ = (\inst1|LessThan0~0_combout\) # ((\inst1|LessThan0~1_combout\ & (\inst1|LessThan0~2_combout\ & \inst1|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~1_combout\,
	datab => \inst1|LessThan0~2_combout\,
	datac => \inst1|counter\(8),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|LessThan0~3_combout\);

-- Location: LCCOMB_X45_Y24_N4
\inst1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~6_combout\ = (\inst1|LessThan0~4_combout\) # ((\inst1|LessThan0~5_combout\) # (\inst1|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~4_combout\,
	datab => \inst1|LessThan0~5_combout\,
	datad => \inst1|LessThan0~3_combout\,
	combout => \inst1|LessThan0~6_combout\);

-- Location: LCCOMB_X44_Y23_N4
\inst1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (!\us_1~input_o\ & \inst1|ctrl_state.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \us_1~input_o\,
	datad => \inst1|ctrl_state.STATE_WAIT~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: LCCOMB_X44_Y23_N6
\inst1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~1_combout\ = (\inst1|LessThan0~6_combout\ & ((\inst1|ctrl_state.STATE_SEND_FIN~q\) # ((\inst1|Selector4~0_combout\ & !\inst1|LessThan1~6_combout\)))) # (!\inst1|LessThan0~6_combout\ & (\inst1|Selector4~0_combout\ & 
-- ((!\inst1|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan0~6_combout\,
	datab => \inst1|Selector4~0_combout\,
	datac => \inst1|ctrl_state.STATE_SEND_FIN~q\,
	datad => \inst1|LessThan1~6_combout\,
	combout => \inst1|Selector4~1_combout\);

-- Location: FF_X44_Y23_N7
\inst1|ctrl_state.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_WAIT~q\);

-- Location: LCCOMB_X44_Y23_N18
\inst1|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector5~1_combout\ = (\inst1|Selector5~0_combout\ & (\inst1|ctrl_state.STATE_WAIT~q\ & (\us_1~input_o\))) # (!\inst1|Selector5~0_combout\ & (((\inst1|ctrl_state.STATE_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ctrl_state.STATE_WAIT~q\,
	datab => \us_1~input_o\,
	datac => \inst1|ctrl_state.STATE_COUNT~q\,
	datad => \inst1|Selector5~0_combout\,
	combout => \inst1|Selector5~1_combout\);

-- Location: FF_X44_Y23_N19
\inst1|ctrl_state.STATE_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Selector5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_COUNT~q\);

-- Location: LCCOMB_X43_Y23_N24
\inst1|distance[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[7]~0_combout\ = (!\us_1~input_o\ & \inst1|ctrl_state.STATE_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \us_1~input_o\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|distance[7]~0_combout\);

-- Location: LCCOMB_X44_Y23_N24
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|Selector5~0_combout\ & (!\inst1|distance[7]~0_combout\ & (\inst1|Selector58~2_combout\))) # (!\inst1|Selector5~0_combout\ & (((\inst1|ctrl_state.STATE_SEND_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|distance[7]~0_combout\,
	datab => \inst1|Selector58~2_combout\,
	datac => \inst1|ctrl_state.STATE_SEND_START~q\,
	datad => \inst1|Selector5~0_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X44_Y23_N25
\inst1|ctrl_state.STATE_SEND_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ctrl_state.STATE_SEND_START~q\);

-- Location: LCCOMB_X45_Y23_N20
\inst1|Selector58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector58~1_combout\ = (\inst1|Selector58~0_combout\) # ((!\inst1|last_enable~q\ & (!\inst1|ctrl_state.STATE_INIT~q\ & \inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|last_enable~q\,
	datab => \inst1|ctrl_state.STATE_INIT~q\,
	datac => \inst1|Selector58~0_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst1|Selector58~1_combout\);

-- Location: FF_X45_Y23_N29
\inst1|trigger~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|ctrl_state.STATE_SEND_START~q\,
	sload => VCC,
	ena => \inst1|Selector58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|trigger~reg0_q\);

-- Location: LCCOMB_X44_Y23_N26
\inst1|trigger~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|trigger~1_combout\ = !\inst1|ctrl_state.STATE_SEND_FIN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|ctrl_state.STATE_SEND_FIN~q\,
	combout => \inst1|trigger~1_combout\);

-- Location: FF_X45_Y23_N23
\inst1|trigger~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|trigger~1_combout\,
	sload => VCC,
	ena => \inst1|Selector58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|trigger~en_q\);

-- Location: LCCOMB_X39_Y26_N2
\inst4|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[0]~31_combout\ = \inst4|counter\(0) $ (VCC)
-- \inst4|counter[0]~32\ = CARRY(\inst4|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(0),
	datad => VCC,
	combout => \inst4|counter[0]~31_combout\,
	cout => \inst4|counter[0]~32\);

-- Location: LCCOMB_X39_Y29_N16
\inst4|charCount[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[0]~5_combout\ = \inst4|charCount\(0) $ (VCC)
-- \inst4|charCount[0]~6\ = CARRY(\inst4|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(0),
	datad => VCC,
	combout => \inst4|charCount[0]~5_combout\,
	cout => \inst4|charCount[0]~6\);

-- Location: LCCOMB_X39_Y29_N10
\inst4|charCount[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[3]~15_combout\ = (\inst4|state.update~q\) # (!\inst4|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|state.update~q\,
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|charCount[3]~15_combout\);

-- Location: FF_X39_Y29_N17
\inst4|charCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[0]~5_combout\,
	sclr => \inst4|charCount[3]~15_combout\,
	ena => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(0));

-- Location: LCCOMB_X39_Y29_N18
\inst4|charCount[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[1]~7_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount[0]~6\)) # (!\inst4|charCount\(1) & ((\inst4|charCount[0]~6\) # (GND)))
-- \inst4|charCount[1]~8\ = CARRY((!\inst4|charCount[0]~6\) # (!\inst4|charCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datad => VCC,
	cin => \inst4|charCount[0]~6\,
	combout => \inst4|charCount[1]~7_combout\,
	cout => \inst4|charCount[1]~8\);

-- Location: FF_X39_Y29_N19
\inst4|charCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[1]~7_combout\,
	sclr => \inst4|charCount[3]~15_combout\,
	ena => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(1));

-- Location: LCCOMB_X39_Y29_N20
\inst4|charCount[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[2]~9_combout\ = (\inst4|charCount\(2) & (\inst4|charCount[1]~8\ $ (GND))) # (!\inst4|charCount\(2) & (!\inst4|charCount[1]~8\ & VCC))
-- \inst4|charCount[2]~10\ = CARRY((\inst4|charCount\(2) & !\inst4|charCount[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(2),
	datad => VCC,
	cin => \inst4|charCount[1]~8\,
	combout => \inst4|charCount[2]~9_combout\,
	cout => \inst4|charCount[2]~10\);

-- Location: FF_X39_Y29_N21
\inst4|charCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[2]~9_combout\,
	sclr => \inst4|charCount[3]~15_combout\,
	ena => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(2));

-- Location: LCCOMB_X39_Y29_N22
\inst4|charCount[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[3]~11_combout\ = (\inst4|charCount\(3) & (!\inst4|charCount[2]~10\)) # (!\inst4|charCount\(3) & ((\inst4|charCount[2]~10\) # (GND)))
-- \inst4|charCount[3]~12\ = CARRY((!\inst4|charCount[2]~10\) # (!\inst4|charCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datad => VCC,
	cin => \inst4|charCount[2]~10\,
	combout => \inst4|charCount[3]~11_combout\,
	cout => \inst4|charCount[3]~12\);

-- Location: FF_X39_Y29_N23
\inst4|charCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[3]~11_combout\,
	sclr => \inst4|charCount[3]~15_combout\,
	ena => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(3));

-- Location: LCCOMB_X39_Y29_N4
\inst4|lcd_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~112_combout\ = (!\inst4|charCount\(3) & \inst4|charCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~112_combout\);

-- Location: LCCOMB_X39_Y29_N24
\inst4|charCount[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|charCount[4]~13_combout\ = \inst4|charCount[3]~12\ $ (!\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|charCount\(4),
	cin => \inst4|charCount[3]~12\,
	combout => \inst4|charCount[4]~13_combout\);

-- Location: FF_X39_Y29_N25
\inst4|charCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|charCount[4]~13_combout\,
	sclr => \inst4|charCount[3]~15_combout\,
	ena => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|charCount\(4));

-- Location: LCCOMB_X39_Y29_N0
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|charCount\(1)) # ((\inst4|charCount\(0)) # ((!\inst4|charCount\(4)) # (!\inst4|lcd_data~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(0),
	datac => \inst4|lcd_data~112_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y27_N24
\inst4|lineCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lineCount~0_combout\ = (\inst4|state.update~q\ & (((\inst4|process_0~14_combout\)))) # (!\inst4|state.update~q\ & (!\inst4|lcd_data~143_combout\ & (!\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~143_combout\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|process_0~14_combout\,
	combout => \inst4|lineCount~0_combout\);

-- Location: LCCOMB_X37_Y27_N18
\inst4|lineCount[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lineCount[0]~1_combout\ = (\inst4|lineCount\(0) & ((!\inst4|lineCount~0_combout\))) # (!\inst4|lineCount\(0) & (!\inst4|state.update~q\ & \inst4|lineCount~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.update~q\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|lineCount~0_combout\,
	combout => \inst4|lineCount[0]~1_combout\);

-- Location: FF_X37_Y27_N19
\inst4|lineCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lineCount[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lineCount\(0));

-- Location: LCCOMB_X37_Y27_N0
\inst4|lineCount[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lineCount[1]~2_combout\ = (\inst4|lineCount~0_combout\ & (!\inst4|state.update~q\ & (\inst4|lineCount\(0) $ (\inst4|lineCount\(1))))) # (!\inst4|lineCount~0_combout\ & (((\inst4|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|state.update~q\,
	datac => \inst4|lineCount\(1),
	datad => \inst4|lineCount~0_combout\,
	combout => \inst4|lineCount[1]~2_combout\);

-- Location: FF_X37_Y27_N1
\inst4|lineCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lineCount[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lineCount\(1));

-- Location: LCCOMB_X37_Y27_N10
\inst4|lcd_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~143_combout\ = (\inst4|lineCount\(0) & \inst4|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|lineCount\(0),
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~143_combout\);

-- Location: LCCOMB_X37_Y25_N26
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|counter\(3) & ((\inst4|counter\(2)) # ((\inst4|counter\(0) & \inst4|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(0),
	datab => \inst4|counter\(1),
	datac => \inst4|counter\(3),
	datad => \inst4|counter\(2),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y26_N20
\inst4|counter[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[9]~52_combout\ = (\inst4|counter\(9) & (!\inst4|counter[8]~51\)) # (!\inst4|counter\(9) & ((\inst4|counter[8]~51\) # (GND)))
-- \inst4|counter[9]~53\ = CARRY((!\inst4|counter[8]~51\) # (!\inst4|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(9),
	datad => VCC,
	cin => \inst4|counter[8]~51\,
	combout => \inst4|counter[9]~52_combout\,
	cout => \inst4|counter[9]~53\);

-- Location: LCCOMB_X39_Y26_N22
\inst4|counter[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[10]~54_combout\ = (\inst4|counter\(10) & (\inst4|counter[9]~53\ $ (GND))) # (!\inst4|counter\(10) & (!\inst4|counter[9]~53\ & VCC))
-- \inst4|counter[10]~55\ = CARRY((\inst4|counter\(10) & !\inst4|counter[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(10),
	datad => VCC,
	cin => \inst4|counter[9]~53\,
	combout => \inst4|counter[10]~54_combout\,
	cout => \inst4|counter[10]~55\);

-- Location: FF_X39_Y26_N23
\inst4|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[10]~54_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(10));

-- Location: LCCOMB_X39_Y26_N24
\inst4|counter[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[11]~56_combout\ = (\inst4|counter\(11) & (!\inst4|counter[10]~55\)) # (!\inst4|counter\(11) & ((\inst4|counter[10]~55\) # (GND)))
-- \inst4|counter[11]~57\ = CARRY((!\inst4|counter[10]~55\) # (!\inst4|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(11),
	datad => VCC,
	cin => \inst4|counter[10]~55\,
	combout => \inst4|counter[11]~56_combout\,
	cout => \inst4|counter[11]~57\);

-- Location: FF_X39_Y26_N25
\inst4|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[11]~56_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(11));

-- Location: LCCOMB_X39_Y26_N26
\inst4|counter[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[12]~58_combout\ = (\inst4|counter\(12) & (\inst4|counter[11]~57\ $ (GND))) # (!\inst4|counter\(12) & (!\inst4|counter[11]~57\ & VCC))
-- \inst4|counter[12]~59\ = CARRY((\inst4|counter\(12) & !\inst4|counter[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(12),
	datad => VCC,
	cin => \inst4|counter[11]~57\,
	combout => \inst4|counter[12]~58_combout\,
	cout => \inst4|counter[12]~59\);

-- Location: FF_X39_Y26_N27
\inst4|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[12]~58_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(12));

-- Location: LCCOMB_X39_Y26_N28
\inst4|counter[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[13]~60_combout\ = (\inst4|counter\(13) & (!\inst4|counter[12]~59\)) # (!\inst4|counter\(13) & ((\inst4|counter[12]~59\) # (GND)))
-- \inst4|counter[13]~61\ = CARRY((!\inst4|counter[12]~59\) # (!\inst4|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(13),
	datad => VCC,
	cin => \inst4|counter[12]~59\,
	combout => \inst4|counter[13]~60_combout\,
	cout => \inst4|counter[13]~61\);

-- Location: FF_X39_Y26_N29
\inst4|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[13]~60_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(13));

-- Location: LCCOMB_X39_Y26_N30
\inst4|counter[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[14]~62_combout\ = (\inst4|counter\(14) & (\inst4|counter[13]~61\ $ (GND))) # (!\inst4|counter\(14) & (!\inst4|counter[13]~61\ & VCC))
-- \inst4|counter[14]~63\ = CARRY((\inst4|counter\(14) & !\inst4|counter[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(14),
	datad => VCC,
	cin => \inst4|counter[13]~61\,
	combout => \inst4|counter[14]~62_combout\,
	cout => \inst4|counter[14]~63\);

-- Location: FF_X39_Y26_N31
\inst4|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[14]~62_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(14));

-- Location: LCCOMB_X39_Y25_N0
\inst4|counter[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[15]~64_combout\ = (\inst4|counter\(15) & (!\inst4|counter[14]~63\)) # (!\inst4|counter\(15) & ((\inst4|counter[14]~63\) # (GND)))
-- \inst4|counter[15]~65\ = CARRY((!\inst4|counter[14]~63\) # (!\inst4|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(15),
	datad => VCC,
	cin => \inst4|counter[14]~63\,
	combout => \inst4|counter[15]~64_combout\,
	cout => \inst4|counter[15]~65\);

-- Location: FF_X39_Y25_N1
\inst4|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[15]~64_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(15));

-- Location: LCCOMB_X39_Y25_N2
\inst4|counter[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[16]~66_combout\ = (\inst4|counter\(16) & (\inst4|counter[15]~65\ $ (GND))) # (!\inst4|counter\(16) & (!\inst4|counter[15]~65\ & VCC))
-- \inst4|counter[16]~67\ = CARRY((\inst4|counter\(16) & !\inst4|counter[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(16),
	datad => VCC,
	cin => \inst4|counter[15]~65\,
	combout => \inst4|counter[16]~66_combout\,
	cout => \inst4|counter[16]~67\);

-- Location: FF_X39_Y25_N3
\inst4|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[16]~66_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(16));

-- Location: LCCOMB_X39_Y25_N4
\inst4|counter[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[17]~68_combout\ = (\inst4|counter\(17) & (!\inst4|counter[16]~67\)) # (!\inst4|counter\(17) & ((\inst4|counter[16]~67\) # (GND)))
-- \inst4|counter[17]~69\ = CARRY((!\inst4|counter[16]~67\) # (!\inst4|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(17),
	datad => VCC,
	cin => \inst4|counter[16]~67\,
	combout => \inst4|counter[17]~68_combout\,
	cout => \inst4|counter[17]~69\);

-- Location: FF_X39_Y25_N5
\inst4|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[17]~68_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(17));

-- Location: LCCOMB_X39_Y25_N6
\inst4|counter[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[18]~70_combout\ = (\inst4|counter\(18) & (\inst4|counter[17]~69\ $ (GND))) # (!\inst4|counter\(18) & (!\inst4|counter[17]~69\ & VCC))
-- \inst4|counter[18]~71\ = CARRY((\inst4|counter\(18) & !\inst4|counter[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(18),
	datad => VCC,
	cin => \inst4|counter[17]~69\,
	combout => \inst4|counter[18]~70_combout\,
	cout => \inst4|counter[18]~71\);

-- Location: FF_X39_Y25_N7
\inst4|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[18]~70_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(18));

-- Location: LCCOMB_X39_Y25_N8
\inst4|counter[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[19]~72_combout\ = (\inst4|counter\(19) & (!\inst4|counter[18]~71\)) # (!\inst4|counter\(19) & ((\inst4|counter[18]~71\) # (GND)))
-- \inst4|counter[19]~73\ = CARRY((!\inst4|counter[18]~71\) # (!\inst4|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(19),
	datad => VCC,
	cin => \inst4|counter[18]~71\,
	combout => \inst4|counter[19]~72_combout\,
	cout => \inst4|counter[19]~73\);

-- Location: FF_X39_Y25_N9
\inst4|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[19]~72_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(19));

-- Location: LCCOMB_X39_Y25_N10
\inst4|counter[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[20]~74_combout\ = (\inst4|counter\(20) & (\inst4|counter[19]~73\ $ (GND))) # (!\inst4|counter\(20) & (!\inst4|counter[19]~73\ & VCC))
-- \inst4|counter[20]~75\ = CARRY((\inst4|counter\(20) & !\inst4|counter[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(20),
	datad => VCC,
	cin => \inst4|counter[19]~73\,
	combout => \inst4|counter[20]~74_combout\,
	cout => \inst4|counter[20]~75\);

-- Location: FF_X39_Y25_N11
\inst4|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[20]~74_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(20));

-- Location: LCCOMB_X39_Y25_N12
\inst4|counter[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[21]~76_combout\ = (\inst4|counter\(21) & (!\inst4|counter[20]~75\)) # (!\inst4|counter\(21) & ((\inst4|counter[20]~75\) # (GND)))
-- \inst4|counter[21]~77\ = CARRY((!\inst4|counter[20]~75\) # (!\inst4|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(21),
	datad => VCC,
	cin => \inst4|counter[20]~75\,
	combout => \inst4|counter[21]~76_combout\,
	cout => \inst4|counter[21]~77\);

-- Location: FF_X39_Y25_N13
\inst4|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[21]~76_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(21));

-- Location: LCCOMB_X39_Y25_N14
\inst4|counter[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[22]~78_combout\ = (\inst4|counter\(22) & (\inst4|counter[21]~77\ $ (GND))) # (!\inst4|counter\(22) & (!\inst4|counter[21]~77\ & VCC))
-- \inst4|counter[22]~79\ = CARRY((\inst4|counter\(22) & !\inst4|counter[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(22),
	datad => VCC,
	cin => \inst4|counter[21]~77\,
	combout => \inst4|counter[22]~78_combout\,
	cout => \inst4|counter[22]~79\);

-- Location: FF_X39_Y25_N15
\inst4|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[22]~78_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(22));

-- Location: LCCOMB_X39_Y25_N16
\inst4|counter[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[23]~80_combout\ = (\inst4|counter\(23) & (!\inst4|counter[22]~79\)) # (!\inst4|counter\(23) & ((\inst4|counter[22]~79\) # (GND)))
-- \inst4|counter[23]~81\ = CARRY((!\inst4|counter[22]~79\) # (!\inst4|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(23),
	datad => VCC,
	cin => \inst4|counter[22]~79\,
	combout => \inst4|counter[23]~80_combout\,
	cout => \inst4|counter[23]~81\);

-- Location: FF_X39_Y25_N17
\inst4|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[23]~80_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(23));

-- Location: LCCOMB_X39_Y25_N18
\inst4|counter[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[24]~82_combout\ = (\inst4|counter\(24) & (\inst4|counter[23]~81\ $ (GND))) # (!\inst4|counter\(24) & (!\inst4|counter[23]~81\ & VCC))
-- \inst4|counter[24]~83\ = CARRY((\inst4|counter\(24) & !\inst4|counter[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(24),
	datad => VCC,
	cin => \inst4|counter[23]~81\,
	combout => \inst4|counter[24]~82_combout\,
	cout => \inst4|counter[24]~83\);

-- Location: FF_X39_Y25_N19
\inst4|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[24]~82_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(24));

-- Location: LCCOMB_X39_Y25_N20
\inst4|counter[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[25]~84_combout\ = (\inst4|counter\(25) & (!\inst4|counter[24]~83\)) # (!\inst4|counter\(25) & ((\inst4|counter[24]~83\) # (GND)))
-- \inst4|counter[25]~85\ = CARRY((!\inst4|counter[24]~83\) # (!\inst4|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(25),
	datad => VCC,
	cin => \inst4|counter[24]~83\,
	combout => \inst4|counter[25]~84_combout\,
	cout => \inst4|counter[25]~85\);

-- Location: FF_X39_Y25_N21
\inst4|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[25]~84_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(25));

-- Location: LCCOMB_X39_Y25_N22
\inst4|counter[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[26]~86_combout\ = (\inst4|counter\(26) & (\inst4|counter[25]~85\ $ (GND))) # (!\inst4|counter\(26) & (!\inst4|counter[25]~85\ & VCC))
-- \inst4|counter[26]~87\ = CARRY((\inst4|counter\(26) & !\inst4|counter[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(26),
	datad => VCC,
	cin => \inst4|counter[25]~85\,
	combout => \inst4|counter[26]~86_combout\,
	cout => \inst4|counter[26]~87\);

-- Location: FF_X39_Y25_N23
\inst4|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[26]~86_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(26));

-- Location: LCCOMB_X39_Y25_N24
\inst4|counter[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[27]~88_combout\ = (\inst4|counter\(27) & (!\inst4|counter[26]~87\)) # (!\inst4|counter\(27) & ((\inst4|counter[26]~87\) # (GND)))
-- \inst4|counter[27]~89\ = CARRY((!\inst4|counter[26]~87\) # (!\inst4|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(27),
	datad => VCC,
	cin => \inst4|counter[26]~87\,
	combout => \inst4|counter[27]~88_combout\,
	cout => \inst4|counter[27]~89\);

-- Location: FF_X39_Y25_N25
\inst4|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[27]~88_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(27));

-- Location: LCCOMB_X39_Y25_N26
\inst4|counter[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[28]~90_combout\ = (\inst4|counter\(28) & (\inst4|counter[27]~89\ $ (GND))) # (!\inst4|counter\(28) & (!\inst4|counter[27]~89\ & VCC))
-- \inst4|counter[28]~91\ = CARRY((\inst4|counter\(28) & !\inst4|counter[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(28),
	datad => VCC,
	cin => \inst4|counter[27]~89\,
	combout => \inst4|counter[28]~90_combout\,
	cout => \inst4|counter[28]~91\);

-- Location: FF_X39_Y25_N27
\inst4|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[28]~90_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(28));

-- Location: LCCOMB_X39_Y25_N28
\inst4|counter[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[29]~92_combout\ = (\inst4|counter\(29) & (!\inst4|counter[28]~91\)) # (!\inst4|counter\(29) & ((\inst4|counter[28]~91\) # (GND)))
-- \inst4|counter[29]~93\ = CARRY((!\inst4|counter[28]~91\) # (!\inst4|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(29),
	datad => VCC,
	cin => \inst4|counter[28]~91\,
	combout => \inst4|counter[29]~92_combout\,
	cout => \inst4|counter[29]~93\);

-- Location: FF_X39_Y25_N29
\inst4|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[29]~92_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(29));

-- Location: LCCOMB_X39_Y25_N30
\inst4|counter[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[30]~94_combout\ = \inst4|counter\(30) $ (!\inst4|counter[29]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(30),
	cin => \inst4|counter[29]~93\,
	combout => \inst4|counter[30]~94_combout\);

-- Location: FF_X39_Y25_N31
\inst4|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[30]~94_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(30));

-- Location: LCCOMB_X38_Y25_N26
\inst4|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~1_combout\ = (!\inst4|counter\(30) & (!\inst4|counter\(28) & (!\inst4|counter\(22) & !\inst4|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(30),
	datab => \inst4|counter\(28),
	datac => \inst4|counter\(22),
	datad => \inst4|counter\(9),
	combout => \inst4|process_1~1_combout\);

-- Location: LCCOMB_X38_Y25_N24
\inst4|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~2_combout\ = (!\inst4|counter\(29) & (!\inst4|counter\(8) & !\inst4|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(29),
	datac => \inst4|counter\(8),
	datad => \inst4|counter\(11),
	combout => \inst4|process_1~2_combout\);

-- Location: LCCOMB_X38_Y25_N4
\inst4|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~0_combout\ = (!\inst4|counter\(18) & (!\inst4|counter\(19) & (!\inst4|counter\(14) & !\inst4|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(18),
	datab => \inst4|counter\(19),
	datac => \inst4|counter\(14),
	datad => \inst4|counter\(6),
	combout => \inst4|process_1~0_combout\);

-- Location: LCCOMB_X38_Y25_N22
\inst4|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~3_combout\ = (!\inst4|counter\(17) & (!\inst4|counter\(23) & (!\inst4|counter\(21) & !\inst4|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(17),
	datab => \inst4|counter\(23),
	datac => \inst4|counter\(21),
	datad => \inst4|counter\(20),
	combout => \inst4|process_0~3_combout\);

-- Location: LCCOMB_X38_Y25_N16
\inst4|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~4_combout\ = (!\inst4|counter\(25) & (!\inst4|counter\(24) & (!\inst4|counter\(27) & !\inst4|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(25),
	datab => \inst4|counter\(24),
	datac => \inst4|counter\(27),
	datad => \inst4|counter\(26),
	combout => \inst4|process_0~4_combout\);

-- Location: LCCOMB_X38_Y25_N8
\inst4|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~2_combout\ = (!\inst4|counter\(16) & (!\inst4|counter\(15) & (!\inst4|counter\(12) & !\inst4|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(16),
	datab => \inst4|counter\(15),
	datac => \inst4|counter\(12),
	datad => \inst4|counter\(13),
	combout => \inst4|process_0~2_combout\);

-- Location: LCCOMB_X39_Y26_N0
\inst4|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~1_combout\ = (!\inst4|counter\(4) & (!\inst4|counter\(7) & (!\inst4|counter\(10) & !\inst4|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(4),
	datab => \inst4|counter\(7),
	datac => \inst4|counter\(10),
	datad => \inst4|counter\(5),
	combout => \inst4|process_0~1_combout\);

-- Location: LCCOMB_X38_Y25_N2
\inst4|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~5_combout\ = (\inst4|process_0~3_combout\ & (\inst4|process_0~4_combout\ & (\inst4|process_0~2_combout\ & \inst4|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~3_combout\,
	datab => \inst4|process_0~4_combout\,
	datac => \inst4|process_0~2_combout\,
	datad => \inst4|process_0~1_combout\,
	combout => \inst4|process_0~5_combout\);

-- Location: LCCOMB_X38_Y25_N18
\inst4|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~3_combout\ = (\inst4|process_1~1_combout\ & (\inst4|process_1~2_combout\ & (\inst4|process_1~0_combout\ & \inst4|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_1~1_combout\,
	datab => \inst4|process_1~2_combout\,
	datac => \inst4|process_1~0_combout\,
	datad => \inst4|process_0~5_combout\,
	combout => \inst4|process_1~3_combout\);

-- Location: LCCOMB_X38_Y25_N28
\inst4|counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[5]~41_combout\ = (\inst5|state.ready~q\ & ((\inst4|LessThan0~0_combout\) # (!\inst4|process_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.ready~q\,
	datac => \inst4|LessThan0~0_combout\,
	datad => \inst4|process_1~3_combout\,
	combout => \inst4|counter[5]~41_combout\);

-- Location: LCCOMB_X38_Y25_N10
\inst4|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[5]~42_combout\ = (!\inst4|state.update~q\ & ((\inst4|Equal0~0_combout\ & ((!\inst4|counter[5]~41_combout\))) # (!\inst4|Equal0~0_combout\ & (\inst4|lcd_data~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~143_combout\,
	datab => \inst4|state.update~q\,
	datac => \inst4|Equal0~0_combout\,
	datad => \inst4|counter[5]~41_combout\,
	combout => \inst4|counter[5]~42_combout\);

-- Location: LCCOMB_X38_Y25_N20
\inst4|counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[5]~43_combout\ = (!\inst4|counter[5]~42_combout\ & ((\inst4|process_0~14_combout\) # (!\inst4|state.update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~14_combout\,
	datab => \inst4|state.update~q\,
	datad => \inst4|counter[5]~42_combout\,
	combout => \inst4|counter[5]~43_combout\);

-- Location: FF_X39_Y26_N3
\inst4|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[0]~31_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(0));

-- Location: LCCOMB_X39_Y26_N4
\inst4|counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[1]~33_combout\ = (\inst4|counter\(1) & (!\inst4|counter[0]~32\)) # (!\inst4|counter\(1) & ((\inst4|counter[0]~32\) # (GND)))
-- \inst4|counter[1]~34\ = CARRY((!\inst4|counter[0]~32\) # (!\inst4|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(1),
	datad => VCC,
	cin => \inst4|counter[0]~32\,
	combout => \inst4|counter[1]~33_combout\,
	cout => \inst4|counter[1]~34\);

-- Location: FF_X39_Y26_N5
\inst4|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[1]~33_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(1));

-- Location: LCCOMB_X39_Y26_N6
\inst4|counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[2]~35_combout\ = (\inst4|counter\(2) & (\inst4|counter[1]~34\ $ (GND))) # (!\inst4|counter\(2) & (!\inst4|counter[1]~34\ & VCC))
-- \inst4|counter[2]~36\ = CARRY((\inst4|counter\(2) & !\inst4|counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(2),
	datad => VCC,
	cin => \inst4|counter[1]~34\,
	combout => \inst4|counter[2]~35_combout\,
	cout => \inst4|counter[2]~36\);

-- Location: FF_X39_Y26_N7
\inst4|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[2]~35_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(2));

-- Location: LCCOMB_X39_Y26_N8
\inst4|counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[3]~37_combout\ = (\inst4|counter\(3) & (!\inst4|counter[2]~36\)) # (!\inst4|counter\(3) & ((\inst4|counter[2]~36\) # (GND)))
-- \inst4|counter[3]~38\ = CARRY((!\inst4|counter[2]~36\) # (!\inst4|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(3),
	datad => VCC,
	cin => \inst4|counter[2]~36\,
	combout => \inst4|counter[3]~37_combout\,
	cout => \inst4|counter[3]~38\);

-- Location: FF_X39_Y26_N9
\inst4|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[3]~37_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(3));

-- Location: LCCOMB_X39_Y26_N10
\inst4|counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[4]~39_combout\ = (\inst4|counter\(4) & (\inst4|counter[3]~38\ $ (GND))) # (!\inst4|counter\(4) & (!\inst4|counter[3]~38\ & VCC))
-- \inst4|counter[4]~40\ = CARRY((\inst4|counter\(4) & !\inst4|counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(4),
	datad => VCC,
	cin => \inst4|counter[3]~38\,
	combout => \inst4|counter[4]~39_combout\,
	cout => \inst4|counter[4]~40\);

-- Location: FF_X39_Y26_N11
\inst4|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[4]~39_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(4));

-- Location: LCCOMB_X39_Y26_N12
\inst4|counter[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[5]~44_combout\ = (\inst4|counter\(5) & (!\inst4|counter[4]~40\)) # (!\inst4|counter\(5) & ((\inst4|counter[4]~40\) # (GND)))
-- \inst4|counter[5]~45\ = CARRY((!\inst4|counter[4]~40\) # (!\inst4|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(5),
	datad => VCC,
	cin => \inst4|counter[4]~40\,
	combout => \inst4|counter[5]~44_combout\,
	cout => \inst4|counter[5]~45\);

-- Location: FF_X39_Y26_N13
\inst4|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[5]~44_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(5));

-- Location: LCCOMB_X39_Y26_N14
\inst4|counter[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[6]~46_combout\ = (\inst4|counter\(6) & (\inst4|counter[5]~45\ $ (GND))) # (!\inst4|counter\(6) & (!\inst4|counter[5]~45\ & VCC))
-- \inst4|counter[6]~47\ = CARRY((\inst4|counter\(6) & !\inst4|counter[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(6),
	datad => VCC,
	cin => \inst4|counter[5]~45\,
	combout => \inst4|counter[6]~46_combout\,
	cout => \inst4|counter[6]~47\);

-- Location: FF_X39_Y26_N15
\inst4|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[6]~46_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(6));

-- Location: LCCOMB_X39_Y26_N16
\inst4|counter[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[7]~48_combout\ = (\inst4|counter\(7) & (!\inst4|counter[6]~47\)) # (!\inst4|counter\(7) & ((\inst4|counter[6]~47\) # (GND)))
-- \inst4|counter[7]~49\ = CARRY((!\inst4|counter[6]~47\) # (!\inst4|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(7),
	datad => VCC,
	cin => \inst4|counter[6]~47\,
	combout => \inst4|counter[7]~48_combout\,
	cout => \inst4|counter[7]~49\);

-- Location: FF_X39_Y26_N17
\inst4|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[7]~48_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(7));

-- Location: LCCOMB_X39_Y26_N18
\inst4|counter[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|counter[8]~50_combout\ = (\inst4|counter\(8) & (\inst4|counter[7]~49\ $ (GND))) # (!\inst4|counter\(8) & (!\inst4|counter[7]~49\ & VCC))
-- \inst4|counter[8]~51\ = CARRY((\inst4|counter\(8) & !\inst4|counter[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|counter\(8),
	datad => VCC,
	cin => \inst4|counter[7]~49\,
	combout => \inst4|counter[8]~50_combout\,
	cout => \inst4|counter[8]~51\);

-- Location: FF_X39_Y26_N19
\inst4|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[8]~50_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(8));

-- Location: FF_X39_Y26_N21
\inst4|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|counter[9]~52_combout\,
	sclr => \inst4|counter[5]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|counter\(9));

-- Location: LCCOMB_X38_Y25_N6
\inst4|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~11_combout\ = (\inst4|counter\(9) & (!\inst4|counter\(3) & (\inst4|counter\(8) & \inst4|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(9),
	datab => \inst4|counter\(3),
	datac => \inst4|counter\(8),
	datad => \inst4|counter\(6),
	combout => \inst4|process_0~11_combout\);

-- Location: LCCOMB_X37_Y25_N28
\inst4|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~10_combout\ = (!\inst4|counter\(0) & (\inst4|state.pause~q\ & (!\inst4|counter\(2) & !\inst4|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(0),
	datab => \inst4|state.pause~q\,
	datac => \inst4|counter\(2),
	datad => \inst4|counter\(1),
	combout => \inst4|process_0~10_combout\);

-- Location: LCCOMB_X38_Y25_N12
\inst4|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~6_combout\ = (!\inst4|counter\(27) & (!\inst4|counter\(28) & (!\inst4|counter\(30) & !\inst4|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(27),
	datab => \inst4|counter\(28),
	datac => \inst4|counter\(30),
	datad => \inst4|counter\(17),
	combout => \inst4|process_0~6_combout\);

-- Location: LCCOMB_X38_Y25_N30
\inst4|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~7_combout\ = (!\inst4|counter\(25) & (!\inst4|counter\(26) & (!\inst4|counter\(21) & !\inst4|counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(25),
	datab => \inst4|counter\(26),
	datac => \inst4|counter\(21),
	datad => \inst4|counter\(24),
	combout => \inst4|process_0~7_combout\);

-- Location: LCCOMB_X38_Y25_N0
\inst4|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~8_combout\ = (!\inst4|counter\(20) & (!\inst4|counter\(23) & (\inst4|process_0~7_combout\ & !\inst4|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(20),
	datab => \inst4|counter\(23),
	datac => \inst4|process_0~7_combout\,
	datad => \inst4|counter\(29),
	combout => \inst4|process_0~8_combout\);

-- Location: LCCOMB_X37_Y25_N22
\inst4|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~9_combout\ = (\inst4|process_0~1_combout\ & (\inst4|process_0~6_combout\ & (\inst4|process_0~8_combout\ & \inst4|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~1_combout\,
	datab => \inst4|process_0~6_combout\,
	datac => \inst4|process_0~8_combout\,
	datad => \inst4|process_0~2_combout\,
	combout => \inst4|process_0~9_combout\);

-- Location: LCCOMB_X37_Y25_N10
\inst4|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~12_combout\ = (\inst4|counter\(14) & \inst4|counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|counter\(14),
	datad => \inst4|counter\(11),
	combout => \inst4|process_0~12_combout\);

-- Location: LCCOMB_X37_Y25_N16
\inst4|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~13_combout\ = (\inst4|counter\(22) & (\inst4|counter\(19) & (\inst4|counter\(18) & \inst4|process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(22),
	datab => \inst4|counter\(19),
	datac => \inst4|counter\(18),
	datad => \inst4|process_0~12_combout\,
	combout => \inst4|process_0~13_combout\);

-- Location: LCCOMB_X37_Y25_N14
\inst4|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_0~14_combout\ = (\inst4|process_0~11_combout\ & (\inst4|process_0~10_combout\ & (\inst4|process_0~9_combout\ & \inst4|process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_0~11_combout\,
	datab => \inst4|process_0~10_combout\,
	datac => \inst4|process_0~9_combout\,
	datad => \inst4|process_0~13_combout\,
	combout => \inst4|process_0~14_combout\);

-- Location: LCCOMB_X37_Y27_N30
\inst4|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~11_combout\ = (\inst4|lineCount\(0) & (!\inst4|state.update~q\ & (\inst4|lineCount\(1) & !\inst4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|state.update~q\,
	datac => \inst4|lineCount\(1),
	datad => \inst4|Equal0~0_combout\,
	combout => \inst4|state~11_combout\);

-- Location: LCCOMB_X37_Y25_N24
\inst4|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~10_combout\ = (\inst4|state~11_combout\) # ((!\inst4|process_0~14_combout\ & \inst4|state.update~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|process_0~14_combout\,
	datac => \inst4|state.update~q\,
	datad => \inst4|state~11_combout\,
	combout => \inst4|state~10_combout\);

-- Location: FF_X37_Y25_N25
\inst4|state.update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.update~q\);

-- Location: LCCOMB_X37_Y25_N20
\inst4|state.pause~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state.pause~0_combout\ = (\inst4|state~11_combout\ & (!\inst4|state.update~q\)) # (!\inst4|state~11_combout\ & (\inst4|state.pause~q\ & ((!\inst4|process_0~14_combout\) # (!\inst4|state.update~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|process_0~14_combout\,
	datac => \inst4|state.pause~q\,
	datad => \inst4|state~11_combout\,
	combout => \inst4|state.pause~0_combout\);

-- Location: FF_X37_Y25_N21
\inst4|state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|state.pause~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.pause~q\);

-- Location: LCCOMB_X37_Y25_N30
\inst4|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~4_combout\ = (\inst4|counter\(3) & (!\inst4|counter\(2) & ((!\inst4|counter\(1))))) # (!\inst4|counter\(3) & ((\inst4|counter\(2)) # ((\inst4|counter\(0) & \inst4|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|counter\(3),
	datab => \inst4|counter\(2),
	datac => \inst4|counter\(0),
	datad => \inst4|counter\(1),
	combout => \inst4|process_1~4_combout\);

-- Location: LCCOMB_X37_Y25_N12
\inst4|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~5_combout\ = (\inst4|state.pause~q\) # ((!\inst4|process_1~3_combout\) # (!\inst4|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.pause~q\,
	datac => \inst4|process_1~4_combout\,
	datad => \inst4|process_1~3_combout\,
	combout => \inst4|process_1~5_combout\);

-- Location: FF_X37_Y25_N13
\inst4|lcd_write_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|process_1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_write_n~q\);

-- Location: LCCOMB_X35_Y27_N2
\inst5|counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[0]~32_combout\ = \inst5|counter\(0) $ (VCC)
-- \inst5|counter[0]~33\ = CARRY(\inst5|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(0),
	datad => VCC,
	combout => \inst5|counter[0]~32_combout\,
	cout => \inst5|counter[0]~33\);

-- Location: LCCOMB_X36_Y27_N0
\inst5|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~8_combout\ = (\inst5|state.ready~q\ & !\inst4|lcd_write_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.ready~q\,
	datad => \inst4|lcd_write_n~q\,
	combout => \inst5|process_0~8_combout\);

-- Location: FF_X36_Y28_N5
\inst5|state.sendingAddress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst5|process_0~8_combout\,
	sload => VCC,
	ena => \inst5|state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.sendingAddress~q\);

-- Location: LCCOMB_X35_Y27_N26
\inst5|counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[12]~57_combout\ = (\inst5|counter\(12) & (\inst5|counter[11]~55\ $ (GND))) # (!\inst5|counter\(12) & (!\inst5|counter[11]~55\ & VCC))
-- \inst5|counter[12]~58\ = CARRY((\inst5|counter\(12) & !\inst5|counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(12),
	datad => VCC,
	cin => \inst5|counter[11]~55\,
	combout => \inst5|counter[12]~57_combout\,
	cout => \inst5|counter[12]~58\);

-- Location: LCCOMB_X35_Y27_N28
\inst5|counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[13]~59_combout\ = (\inst5|counter\(13) & (!\inst5|counter[12]~58\)) # (!\inst5|counter\(13) & ((\inst5|counter[12]~58\) # (GND)))
-- \inst5|counter[13]~60\ = CARRY((!\inst5|counter[12]~58\) # (!\inst5|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(13),
	datad => VCC,
	cin => \inst5|counter[12]~58\,
	combout => \inst5|counter[13]~59_combout\,
	cout => \inst5|counter[13]~60\);

-- Location: FF_X35_Y27_N29
\inst5|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[13]~59_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(13));

-- Location: LCCOMB_X35_Y27_N30
\inst5|counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[14]~61_combout\ = (\inst5|counter\(14) & (\inst5|counter[13]~60\ $ (GND))) # (!\inst5|counter\(14) & (!\inst5|counter[13]~60\ & VCC))
-- \inst5|counter[14]~62\ = CARRY((\inst5|counter\(14) & !\inst5|counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datad => VCC,
	cin => \inst5|counter[13]~60\,
	combout => \inst5|counter[14]~61_combout\,
	cout => \inst5|counter[14]~62\);

-- Location: FF_X35_Y27_N31
\inst5|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[14]~61_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(14));

-- Location: LCCOMB_X35_Y26_N0
\inst5|counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[15]~63_combout\ = (\inst5|counter\(15) & (!\inst5|counter[14]~62\)) # (!\inst5|counter\(15) & ((\inst5|counter[14]~62\) # (GND)))
-- \inst5|counter[15]~64\ = CARRY((!\inst5|counter[14]~62\) # (!\inst5|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(15),
	datad => VCC,
	cin => \inst5|counter[14]~62\,
	combout => \inst5|counter[15]~63_combout\,
	cout => \inst5|counter[15]~64\);

-- Location: FF_X35_Y26_N1
\inst5|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[15]~63_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(15));

-- Location: LCCOMB_X35_Y26_N2
\inst5|counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[16]~65_combout\ = (\inst5|counter\(16) & (\inst5|counter[15]~64\ $ (GND))) # (!\inst5|counter\(16) & (!\inst5|counter[15]~64\ & VCC))
-- \inst5|counter[16]~66\ = CARRY((\inst5|counter\(16) & !\inst5|counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(16),
	datad => VCC,
	cin => \inst5|counter[15]~64\,
	combout => \inst5|counter[16]~65_combout\,
	cout => \inst5|counter[16]~66\);

-- Location: FF_X35_Y26_N3
\inst5|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[16]~65_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(16));

-- Location: LCCOMB_X35_Y26_N4
\inst5|counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[17]~67_combout\ = (\inst5|counter\(17) & (!\inst5|counter[16]~66\)) # (!\inst5|counter\(17) & ((\inst5|counter[16]~66\) # (GND)))
-- \inst5|counter[17]~68\ = CARRY((!\inst5|counter[16]~66\) # (!\inst5|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(17),
	datad => VCC,
	cin => \inst5|counter[16]~66\,
	combout => \inst5|counter[17]~67_combout\,
	cout => \inst5|counter[17]~68\);

-- Location: FF_X35_Y26_N5
\inst5|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[17]~67_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(17));

-- Location: LCCOMB_X35_Y26_N6
\inst5|counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[18]~69_combout\ = (\inst5|counter\(18) & (\inst5|counter[17]~68\ $ (GND))) # (!\inst5|counter\(18) & (!\inst5|counter[17]~68\ & VCC))
-- \inst5|counter[18]~70\ = CARRY((\inst5|counter\(18) & !\inst5|counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(18),
	datad => VCC,
	cin => \inst5|counter[17]~68\,
	combout => \inst5|counter[18]~69_combout\,
	cout => \inst5|counter[18]~70\);

-- Location: FF_X35_Y26_N7
\inst5|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[18]~69_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(18));

-- Location: LCCOMB_X34_Y28_N0
\inst5|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~3_combout\ = (\inst5|counter\(16) & (\inst5|counter\(17) & \inst5|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(16),
	datac => \inst5|counter\(17),
	datad => \inst5|counter\(18),
	combout => \inst5|Equal4~3_combout\);

-- Location: LCCOMB_X34_Y28_N24
\inst5|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~5_combout\ = (\inst5|counter\(13) & (!\inst5|counter\(3) & (!\inst5|counter\(4) & \inst5|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(13),
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(15),
	combout => \inst5|Equal4~5_combout\);

-- Location: LCCOMB_X34_Y28_N26
\inst5|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~0_combout\ = (!\inst5|counter\(14) & (!\inst5|counter\(7) & (!\inst5|counter\(12) & !\inst5|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(14),
	datab => \inst5|counter\(7),
	datac => \inst5|counter\(12),
	datad => \inst5|counter\(6),
	combout => \inst5|Equal4~0_combout\);

-- Location: LCCOMB_X35_Y26_N8
\inst5|counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[19]~71_combout\ = (\inst5|counter\(19) & (!\inst5|counter[18]~70\)) # (!\inst5|counter\(19) & ((\inst5|counter[18]~70\) # (GND)))
-- \inst5|counter[19]~72\ = CARRY((!\inst5|counter[18]~70\) # (!\inst5|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(19),
	datad => VCC,
	cin => \inst5|counter[18]~70\,
	combout => \inst5|counter[19]~71_combout\,
	cout => \inst5|counter[19]~72\);

-- Location: FF_X35_Y26_N9
\inst5|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[19]~71_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(19));

-- Location: LCCOMB_X35_Y26_N10
\inst5|counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[20]~73_combout\ = (\inst5|counter\(20) & (\inst5|counter[19]~72\ $ (GND))) # (!\inst5|counter\(20) & (!\inst5|counter[19]~72\ & VCC))
-- \inst5|counter[20]~74\ = CARRY((\inst5|counter\(20) & !\inst5|counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(20),
	datad => VCC,
	cin => \inst5|counter[19]~72\,
	combout => \inst5|counter[20]~73_combout\,
	cout => \inst5|counter[20]~74\);

-- Location: FF_X35_Y26_N11
\inst5|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[20]~73_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(20));

-- Location: LCCOMB_X35_Y26_N12
\inst5|counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[21]~75_combout\ = (\inst5|counter\(21) & (!\inst5|counter[20]~74\)) # (!\inst5|counter\(21) & ((\inst5|counter[20]~74\) # (GND)))
-- \inst5|counter[21]~76\ = CARRY((!\inst5|counter[20]~74\) # (!\inst5|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(21),
	datad => VCC,
	cin => \inst5|counter[20]~74\,
	combout => \inst5|counter[21]~75_combout\,
	cout => \inst5|counter[21]~76\);

-- Location: FF_X35_Y26_N13
\inst5|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[21]~75_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(21));

-- Location: LCCOMB_X35_Y26_N14
\inst5|counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[22]~77_combout\ = (\inst5|counter\(22) & (\inst5|counter[21]~76\ $ (GND))) # (!\inst5|counter\(22) & (!\inst5|counter[21]~76\ & VCC))
-- \inst5|counter[22]~78\ = CARRY((\inst5|counter\(22) & !\inst5|counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(22),
	datad => VCC,
	cin => \inst5|counter[21]~76\,
	combout => \inst5|counter[22]~77_combout\,
	cout => \inst5|counter[22]~78\);

-- Location: FF_X35_Y26_N15
\inst5|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[22]~77_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(22));

-- Location: LCCOMB_X34_Y28_N10
\inst5|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~4_combout\ = (\inst5|counter\(5) & (!\inst5|counter\(19) & (!\inst5|counter\(11) & !\inst5|counter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(5),
	datab => \inst5|counter\(19),
	datac => \inst5|counter\(11),
	datad => \inst5|counter\(22),
	combout => \inst5|Equal4~4_combout\);

-- Location: LCCOMB_X34_Y28_N14
\inst5|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~6_combout\ = (!\inst5|counter\(9) & (\inst5|Equal4~5_combout\ & (\inst5|Equal4~0_combout\ & \inst5|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(9),
	datab => \inst5|Equal4~5_combout\,
	datac => \inst5|Equal4~0_combout\,
	datad => \inst5|Equal4~4_combout\,
	combout => \inst5|Equal4~6_combout\);

-- Location: LCCOMB_X35_Y26_N16
\inst5|counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[23]~79_combout\ = (\inst5|counter\(23) & (!\inst5|counter[22]~78\)) # (!\inst5|counter\(23) & ((\inst5|counter[22]~78\) # (GND)))
-- \inst5|counter[23]~80\ = CARRY((!\inst5|counter[22]~78\) # (!\inst5|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(23),
	datad => VCC,
	cin => \inst5|counter[22]~78\,
	combout => \inst5|counter[23]~79_combout\,
	cout => \inst5|counter[23]~80\);

-- Location: FF_X35_Y26_N17
\inst5|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[23]~79_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(23));

-- Location: LCCOMB_X35_Y26_N18
\inst5|counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[24]~81_combout\ = (\inst5|counter\(24) & (\inst5|counter[23]~80\ $ (GND))) # (!\inst5|counter\(24) & (!\inst5|counter[23]~80\ & VCC))
-- \inst5|counter[24]~82\ = CARRY((\inst5|counter\(24) & !\inst5|counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(24),
	datad => VCC,
	cin => \inst5|counter[23]~80\,
	combout => \inst5|counter[24]~81_combout\,
	cout => \inst5|counter[24]~82\);

-- Location: FF_X35_Y26_N19
\inst5|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[24]~81_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(24));

-- Location: LCCOMB_X35_Y26_N20
\inst5|counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[25]~83_combout\ = (\inst5|counter\(25) & (!\inst5|counter[24]~82\)) # (!\inst5|counter\(25) & ((\inst5|counter[24]~82\) # (GND)))
-- \inst5|counter[25]~84\ = CARRY((!\inst5|counter[24]~82\) # (!\inst5|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(25),
	datad => VCC,
	cin => \inst5|counter[24]~82\,
	combout => \inst5|counter[25]~83_combout\,
	cout => \inst5|counter[25]~84\);

-- Location: FF_X35_Y26_N21
\inst5|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[25]~83_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(25));

-- Location: LCCOMB_X35_Y26_N22
\inst5|counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[26]~85_combout\ = (\inst5|counter\(26) & (\inst5|counter[25]~84\ $ (GND))) # (!\inst5|counter\(26) & (!\inst5|counter[25]~84\ & VCC))
-- \inst5|counter[26]~86\ = CARRY((\inst5|counter\(26) & !\inst5|counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(26),
	datad => VCC,
	cin => \inst5|counter[25]~84\,
	combout => \inst5|counter[26]~85_combout\,
	cout => \inst5|counter[26]~86\);

-- Location: FF_X35_Y26_N23
\inst5|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[26]~85_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(26));

-- Location: LCCOMB_X35_Y26_N24
\inst5|counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[27]~87_combout\ = (\inst5|counter\(27) & (!\inst5|counter[26]~86\)) # (!\inst5|counter\(27) & ((\inst5|counter[26]~86\) # (GND)))
-- \inst5|counter[27]~88\ = CARRY((!\inst5|counter[26]~86\) # (!\inst5|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(27),
	datad => VCC,
	cin => \inst5|counter[26]~86\,
	combout => \inst5|counter[27]~87_combout\,
	cout => \inst5|counter[27]~88\);

-- Location: FF_X35_Y26_N25
\inst5|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[27]~87_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(27));

-- Location: LCCOMB_X35_Y26_N26
\inst5|counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[28]~89_combout\ = (\inst5|counter\(28) & (\inst5|counter[27]~88\ $ (GND))) # (!\inst5|counter\(28) & (!\inst5|counter[27]~88\ & VCC))
-- \inst5|counter[28]~90\ = CARRY((\inst5|counter\(28) & !\inst5|counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(28),
	datad => VCC,
	cin => \inst5|counter[27]~88\,
	combout => \inst5|counter[28]~89_combout\,
	cout => \inst5|counter[28]~90\);

-- Location: FF_X35_Y26_N27
\inst5|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[28]~89_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(28));

-- Location: LCCOMB_X35_Y26_N28
\inst5|counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[29]~91_combout\ = (\inst5|counter\(29) & (!\inst5|counter[28]~90\)) # (!\inst5|counter\(29) & ((\inst5|counter[28]~90\) # (GND)))
-- \inst5|counter[29]~92\ = CARRY((!\inst5|counter[28]~90\) # (!\inst5|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(29),
	datad => VCC,
	cin => \inst5|counter[28]~90\,
	combout => \inst5|counter[29]~91_combout\,
	cout => \inst5|counter[29]~92\);

-- Location: FF_X35_Y26_N29
\inst5|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[29]~91_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(29));

-- Location: LCCOMB_X35_Y26_N30
\inst5|counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[30]~93_combout\ = \inst5|counter\(30) $ (!\inst5|counter[29]~92\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(30),
	cin => \inst5|counter[29]~92\,
	combout => \inst5|counter[30]~93_combout\);

-- Location: FF_X35_Y26_N31
\inst5|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[30]~93_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(30));

-- Location: LCCOMB_X35_Y28_N12
\inst5|e~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~5_combout\ = (!\inst5|counter\(29) & (!\inst5|counter\(30) & !\inst5|counter\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(29),
	datac => \inst5|counter\(30),
	datad => \inst5|counter\(28),
	combout => \inst5|e~5_combout\);

-- Location: LCCOMB_X35_Y27_N0
\inst5|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~1_combout\ = (!\inst5|counter\(2) & (!\inst5|counter\(0) & (!\inst5|counter\(1) & \inst5|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datab => \inst5|counter\(0),
	datac => \inst5|counter\(1),
	datad => \inst5|counter\(8),
	combout => \inst5|Equal4~1_combout\);

-- Location: LCCOMB_X34_Y26_N10
\inst5|e~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~4_combout\ = (!\inst5|counter\(25) & (!\inst5|counter\(27) & (!\inst5|counter\(24) & !\inst5|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(25),
	datab => \inst5|counter\(27),
	datac => \inst5|counter\(24),
	datad => \inst5|counter\(26),
	combout => \inst5|e~4_combout\);

-- Location: LCCOMB_X34_Y26_N16
\inst5|e~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~3_combout\ = (!\inst5|counter\(23) & (!\inst5|counter\(20) & (!\inst5|counter\(21) & !\inst5|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(23),
	datab => \inst5|counter\(20),
	datac => \inst5|counter\(21),
	datad => \inst5|counter\(10),
	combout => \inst5|e~3_combout\);

-- Location: LCCOMB_X35_Y28_N18
\inst5|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal4~2_combout\ = (\inst5|e~5_combout\ & (\inst5|Equal4~1_combout\ & (\inst5|e~4_combout\ & \inst5|e~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|e~5_combout\,
	datab => \inst5|Equal4~1_combout\,
	datac => \inst5|e~4_combout\,
	datad => \inst5|e~3_combout\,
	combout => \inst5|Equal4~2_combout\);

-- Location: LCCOMB_X35_Y30_N12
\inst5|state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~59_combout\ = (\inst5|state.init6~q\ & (((!\inst5|Equal4~3_combout\) # (!\inst5|Equal4~2_combout\)) # (!\inst5|Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datab => \inst5|Equal4~6_combout\,
	datac => \inst5|Equal4~2_combout\,
	datad => \inst5|Equal4~3_combout\,
	combout => \inst5|state~59_combout\);

-- Location: LCCOMB_X34_Y31_N2
\inst5|charCreationCounter[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[0]~35_combout\ = \inst5|charCreationCounter\(0) $ (VCC)
-- \inst5|charCreationCounter[0]~36\ = CARRY(\inst5|charCreationCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(0),
	datad => VCC,
	combout => \inst5|charCreationCounter[0]~35_combout\,
	cout => \inst5|charCreationCounter[0]~36\);

-- Location: LCCOMB_X34_Y27_N2
\inst5|process_0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~11_combout\ = (!\inst5|counter\(12) & (!\inst5|counter\(3) & (\inst5|counter\(6) & !\inst5|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(12),
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(6),
	datad => \inst5|counter\(7),
	combout => \inst5|process_0~11_combout\);

-- Location: LCCOMB_X35_Y28_N20
\inst5|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~0_combout\ = (!\inst5|counter\(19) & (!\inst5|counter\(11) & !\inst5|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(19),
	datac => \inst5|counter\(11),
	datad => \inst5|counter\(22),
	combout => \inst5|Equal6~0_combout\);

-- Location: LCCOMB_X34_Y28_N8
\inst5|state.init0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state.init0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst5|state.init0~feeder_combout\);

-- Location: FF_X34_Y28_N9
\inst5|state.init0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state.init0~feeder_combout\,
	ena => \inst5|state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init0~q\);

-- Location: LCCOMB_X34_Y28_N30
\inst5|process_0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~15_combout\ = (!\inst5|state.init0~q\ & (!\inst5|counter\(16) & (!\inst5|counter\(17) & !\inst5|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init0~q\,
	datab => \inst5|counter\(16),
	datac => \inst5|counter\(17),
	datad => \inst5|counter\(13),
	combout => \inst5|process_0~15_combout\);

-- Location: LCCOMB_X34_Y28_N28
\inst5|process_0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~16_combout\ = (\inst5|counter\(11) & (!\inst5|counter\(15) & (!\inst5|counter\(4) & \inst5|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(11),
	datab => \inst5|counter\(15),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(18),
	combout => \inst5|process_0~16_combout\);

-- Location: LCCOMB_X34_Y28_N6
\inst5|process_0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~17_combout\ = (\inst5|counter\(22) & (\inst5|counter\(19) & (\inst5|process_0~15_combout\ & \inst5|process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(22),
	datab => \inst5|counter\(19),
	datac => \inst5|process_0~15_combout\,
	datad => \inst5|process_0~16_combout\,
	combout => \inst5|process_0~17_combout\);

-- Location: LCCOMB_X35_Y28_N16
\inst5|process_0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~10_combout\ = (\inst5|counter\(9) & (!\inst5|counter\(5) & \inst5|Equal4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(9),
	datac => \inst5|counter\(5),
	datad => \inst5|Equal4~2_combout\,
	combout => \inst5|process_0~10_combout\);

-- Location: LCCOMB_X35_Y28_N6
\inst5|process_0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~18_combout\ = (\inst5|process_0~11_combout\ & (\inst5|counter\(14) & (\inst5|process_0~17_combout\ & \inst5|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~11_combout\,
	datab => \inst5|counter\(14),
	datac => \inst5|process_0~17_combout\,
	datad => \inst5|process_0~10_combout\,
	combout => \inst5|process_0~18_combout\);

-- Location: LCCOMB_X36_Y28_N0
\inst5|state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~55_combout\ = (\inst5|state~40_combout\ & (!\inst5|process_0~8_combout\ & ((\inst5|process_0~18_combout\)))) # (!\inst5|state~40_combout\ & (((\inst5|state.init1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~8_combout\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.init1~q\,
	datad => \inst5|process_0~18_combout\,
	combout => \inst5|state~55_combout\);

-- Location: FF_X36_Y28_N1
\inst5|state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init1~q\);

-- Location: LCCOMB_X35_Y28_N14
\inst5|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~9_combout\ = (\inst5|Equal4~3_combout\ & (\inst5|state.init1~q\ & (\inst5|Equal4~2_combout\ & \inst5|Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~3_combout\,
	datab => \inst5|state.init1~q\,
	datac => \inst5|Equal4~2_combout\,
	datad => \inst5|Equal4~6_combout\,
	combout => \inst5|process_0~9_combout\);

-- Location: LCCOMB_X34_Y28_N22
\inst5|state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~56_combout\ = (\inst5|state~40_combout\ & (\inst5|process_0~9_combout\ & (!\inst5|process_0~8_combout\))) # (!\inst5|state~40_combout\ & (((\inst5|state.init2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~9_combout\,
	datab => \inst5|process_0~8_combout\,
	datac => \inst5|state.init2~q\,
	datad => \inst5|state~40_combout\,
	combout => \inst5|state~56_combout\);

-- Location: FF_X34_Y28_N23
\inst5|state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init2~q\);

-- Location: LCCOMB_X34_Y28_N16
\inst5|process_0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~12_combout\ = (\inst5|state.init2~q\ & (\inst5|counter\(4) & \inst5|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init2~q\,
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(15),
	combout => \inst5|process_0~12_combout\);

-- Location: LCCOMB_X34_Y28_N20
\inst5|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~1_combout\ = (!\inst5|counter\(16) & (!\inst5|counter\(17) & !\inst5|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(16),
	datac => \inst5|counter\(17),
	datad => \inst5|counter\(13),
	combout => \inst5|Equal6~1_combout\);

-- Location: LCCOMB_X35_Y28_N22
\inst5|process_0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~13_combout\ = (!\inst5|counter\(18) & (\inst5|Equal6~0_combout\ & (\inst5|process_0~12_combout\ & \inst5|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(18),
	datab => \inst5|Equal6~0_combout\,
	datac => \inst5|process_0~12_combout\,
	datad => \inst5|Equal6~1_combout\,
	combout => \inst5|process_0~13_combout\);

-- Location: LCCOMB_X35_Y28_N4
\inst5|process_0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~14_combout\ = (\inst5|process_0~11_combout\ & (\inst5|counter\(14) & (\inst5|process_0~13_combout\ & \inst5|process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~11_combout\,
	datab => \inst5|counter\(14),
	datac => \inst5|process_0~13_combout\,
	datad => \inst5|process_0~10_combout\,
	combout => \inst5|process_0~14_combout\);

-- Location: LCCOMB_X36_Y28_N20
\inst5|state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~53_combout\ = (\inst5|state~40_combout\ & (\inst5|process_0~14_combout\ & ((!\inst5|process_0~8_combout\)))) # (!\inst5|state~40_combout\ & (((\inst5|state.init3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~14_combout\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.init3~q\,
	datad => \inst5|process_0~8_combout\,
	combout => \inst5|state~53_combout\);

-- Location: FF_X36_Y28_N21
\inst5|state.init3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init3~q\);

-- Location: LCCOMB_X36_Y28_N22
\inst5|state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~35_combout\ = ((!\inst5|state.init4~q\ & (!\inst5|state.init3~q\ & !\inst5|state.init5~q\))) # (!\inst5|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init4~q\,
	datab => \inst5|state.init3~q\,
	datac => \inst5|state.init5~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~35_combout\);

-- Location: LCCOMB_X35_Y28_N28
\inst5|state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~34_combout\ = (!\inst5|process_0~9_combout\ & (!\inst5|process_0~14_combout\ & !\inst5|process_0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|process_0~9_combout\,
	datac => \inst5|process_0~14_combout\,
	datad => \inst5|process_0~18_combout\,
	combout => \inst5|state~34_combout\);

-- Location: LCCOMB_X36_Y28_N12
\inst5|state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~36_combout\ = (\inst5|state~35_combout\ & (\inst5|state~34_combout\ & ((\inst4|lcd_write_n~q\) # (!\inst5|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_write_n~q\,
	datab => \inst5|state.ready~q\,
	datac => \inst5|state~35_combout\,
	datad => \inst5|state~34_combout\,
	combout => \inst5|state~36_combout\);

-- Location: LCCOMB_X36_Y28_N18
\inst5|state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~44_combout\ = (\inst5|Equal6~5_combout\ & (!\inst5|process_0~8_combout\ & ((!\inst5|state~36_combout\) # (!\inst5|state~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|process_0~8_combout\,
	datac => \inst5|state~39_combout\,
	datad => \inst5|state~36_combout\,
	combout => \inst5|state~44_combout\);

-- Location: LCCOMB_X36_Y28_N10
\inst5|state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~54_combout\ = (\inst5|state.init3~q\ & ((\inst5|state~44_combout\) # ((!\inst5|state~40_combout\ & \inst5|state.init4~q\)))) # (!\inst5|state.init3~q\ & (!\inst5|state~40_combout\ & (\inst5|state.init4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init3~q\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.init4~q\,
	datad => \inst5|state~44_combout\,
	combout => \inst5|state~54_combout\);

-- Location: FF_X36_Y28_N11
\inst5|state.init4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init4~q\);

-- Location: LCCOMB_X36_Y28_N26
\inst5|state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~57_combout\ = (\inst5|state.init4~q\ & ((\inst5|state~44_combout\) # ((!\inst5|state~40_combout\ & \inst5|state.init5~q\)))) # (!\inst5|state.init4~q\ & (!\inst5|state~40_combout\ & (\inst5|state.init5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init4~q\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.init5~q\,
	datad => \inst5|state~44_combout\,
	combout => \inst5|state~57_combout\);

-- Location: FF_X36_Y28_N27
\inst5|state.init5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init5~q\);

-- Location: LCCOMB_X34_Y31_N8
\inst5|charCreationCounter[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~43_combout\ = (\inst5|charCreationCounter\(3) & (!\inst5|charCreationCounter[2]~42\)) # (!\inst5|charCreationCounter\(3) & ((\inst5|charCreationCounter[2]~42\) # (GND)))
-- \inst5|charCreationCounter[3]~44\ = CARRY((!\inst5|charCreationCounter[2]~42\) # (!\inst5|charCreationCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(3),
	datad => VCC,
	cin => \inst5|charCreationCounter[2]~42\,
	combout => \inst5|charCreationCounter[3]~43_combout\,
	cout => \inst5|charCreationCounter[3]~44\);

-- Location: LCCOMB_X34_Y31_N10
\inst5|charCreationCounter[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[4]~45_combout\ = (\inst5|charCreationCounter\(4) & (\inst5|charCreationCounter[3]~44\ $ (GND))) # (!\inst5|charCreationCounter\(4) & (!\inst5|charCreationCounter[3]~44\ & VCC))
-- \inst5|charCreationCounter[4]~46\ = CARRY((\inst5|charCreationCounter\(4) & !\inst5|charCreationCounter[3]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(4),
	datad => VCC,
	cin => \inst5|charCreationCounter[3]~44\,
	combout => \inst5|charCreationCounter[4]~45_combout\,
	cout => \inst5|charCreationCounter[4]~46\);

-- Location: LCCOMB_X35_Y30_N28
\inst5|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal7~0_combout\ = (!\inst5|Equal8~9_combout\) # (!\inst5|charCreationCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y28_N28
\inst5|state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~45_combout\ = (\inst5|state.init5~q\ & ((\inst5|state~44_combout\) # ((!\inst5|state~40_combout\ & \inst5|state.createChar1~q\)))) # (!\inst5|state.init5~q\ & (!\inst5|state~40_combout\ & (\inst5|state.createChar1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init5~q\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.createChar1~q\,
	datad => \inst5|state~44_combout\,
	combout => \inst5|state~45_combout\);

-- Location: FF_X36_Y28_N29
\inst5|state.createChar1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar1~q\);

-- Location: LCCOMB_X37_Y28_N16
\inst5|state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~46_combout\ = (\inst5|Equal6~5_combout\ & ((\inst5|Equal7~0_combout\ & (\inst5|state.createChar2~q\ & !\inst5|state.createChar1~q\)) # (!\inst5|Equal7~0_combout\ & ((\inst5|state.createChar1~q\))))) # (!\inst5|Equal6~5_combout\ & 
-- (\inst5|state.createChar2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state.createChar2~q\,
	datac => \inst5|Equal7~0_combout\,
	datad => \inst5|state.createChar1~q\,
	combout => \inst5|state~46_combout\);

-- Location: LCCOMB_X37_Y28_N0
\inst5|state~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~64_combout\ = (\inst5|state~35_combout\ & (\inst5|state~46_combout\ & ((\inst4|lcd_write_n~q\) # (!\inst5|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.ready~q\,
	datab => \inst4|lcd_write_n~q\,
	datac => \inst5|state~35_combout\,
	datad => \inst5|state~46_combout\,
	combout => \inst5|state~64_combout\);

-- Location: FF_X37_Y28_N1
\inst5|state.createChar2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar2~q\);

-- Location: LCCOMB_X37_Y28_N10
\inst5|dataOut[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~0_combout\ = (!\inst5|state.createChar2~q\ & !\inst5|state.createChar1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.createChar2~q\,
	datad => \inst5|state.createChar1~q\,
	combout => \inst5|dataOut[4]~0_combout\);

-- Location: LCCOMB_X37_Y28_N14
\inst5|state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~48_combout\ = (\inst5|Equal7~0_combout\ & (\inst5|state.createChar3~q\ & ((\inst5|state.createChar1~q\) # (!\inst5|state.createChar2~q\)))) # (!\inst5|Equal7~0_combout\ & (\inst5|state.createChar2~q\ & ((!\inst5|state.createChar1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar2~q\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|Equal7~0_combout\,
	datad => \inst5|state.createChar1~q\,
	combout => \inst5|state~48_combout\);

-- Location: LCCOMB_X37_Y28_N18
\inst5|state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~49_combout\ = (\inst5|state~36_combout\ & ((\inst5|Equal6~5_combout\ & (\inst5|state~48_combout\)) # (!\inst5|Equal6~5_combout\ & ((\inst5|state.createChar3~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state~48_combout\,
	datac => \inst5|state.createChar3~q\,
	datad => \inst5|state~36_combout\,
	combout => \inst5|state~49_combout\);

-- Location: FF_X37_Y28_N19
\inst5|state.createChar3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar3~q\);

-- Location: LCCOMB_X37_Y28_N24
\inst5|state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~50_combout\ = (\inst5|Equal7~0_combout\ & (\inst5|state.createChar4~q\ & ((!\inst5|state.createChar3~q\) # (!\inst5|dataOut[4]~0_combout\)))) # (!\inst5|Equal7~0_combout\ & (\inst5|dataOut[4]~0_combout\ & ((\inst5|state.createChar3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[4]~0_combout\,
	datab => \inst5|state.createChar4~q\,
	datac => \inst5|Equal7~0_combout\,
	datad => \inst5|state.createChar3~q\,
	combout => \inst5|state~50_combout\);

-- Location: LCCOMB_X37_Y28_N28
\inst5|state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~51_combout\ = (\inst5|state~36_combout\ & ((\inst5|Equal6~5_combout\ & (\inst5|state~50_combout\)) # (!\inst5|Equal6~5_combout\ & ((\inst5|state.createChar4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state~50_combout\,
	datac => \inst5|state.createChar4~q\,
	datad => \inst5|state~36_combout\,
	combout => \inst5|state~51_combout\);

-- Location: FF_X37_Y28_N29
\inst5|state.createChar4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar4~q\);

-- Location: LCCOMB_X37_Y28_N2
\inst5|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~0_combout\ = (\inst5|dataOut[4]~0_combout\ & (!\inst5|state.createChar4~q\ & (!\inst5|state.createChar5~q\ & !\inst5|state.createChar3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[4]~0_combout\,
	datab => \inst5|state.createChar4~q\,
	datac => \inst5|state.createChar5~q\,
	datad => \inst5|state.createChar3~q\,
	combout => \inst5|process_1~0_combout\);

-- Location: LCCOMB_X37_Y28_N6
\inst5|charCreationCounter[3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~100_combout\ = (\inst5|state.init4~q\) # ((\inst5|state.init3~q\) # ((!\inst5|state.init5~q\ & \inst5|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init4~q\,
	datab => \inst5|state.init3~q\,
	datac => \inst5|state.init5~q\,
	datad => \inst5|process_1~0_combout\,
	combout => \inst5|charCreationCounter[3]~100_combout\);

-- Location: LCCOMB_X35_Y28_N10
\inst5|charCreationCounter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~38_combout\ = (!\inst5|charCreationCounter[3]~100_combout\ & (!\inst5|process_0~8_combout\ & (\inst5|Equal6~5_combout\ & \inst5|state~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter[3]~100_combout\,
	datab => \inst5|process_0~8_combout\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|state~34_combout\,
	combout => \inst5|charCreationCounter[3]~38_combout\);

-- Location: FF_X34_Y31_N11
\inst5|charCreationCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[4]~45_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(4));

-- Location: LCCOMB_X34_Y31_N12
\inst5|charCreationCounter[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[5]~47_combout\ = (\inst5|charCreationCounter\(5) & (!\inst5|charCreationCounter[4]~46\)) # (!\inst5|charCreationCounter\(5) & ((\inst5|charCreationCounter[4]~46\) # (GND)))
-- \inst5|charCreationCounter[5]~48\ = CARRY((!\inst5|charCreationCounter[4]~46\) # (!\inst5|charCreationCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(5),
	datad => VCC,
	cin => \inst5|charCreationCounter[4]~46\,
	combout => \inst5|charCreationCounter[5]~47_combout\,
	cout => \inst5|charCreationCounter[5]~48\);

-- Location: FF_X34_Y31_N13
\inst5|charCreationCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[5]~47_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(5));

-- Location: LCCOMB_X34_Y31_N14
\inst5|charCreationCounter[6]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[6]~49_combout\ = (\inst5|charCreationCounter\(6) & (\inst5|charCreationCounter[5]~48\ $ (GND))) # (!\inst5|charCreationCounter\(6) & (!\inst5|charCreationCounter[5]~48\ & VCC))
-- \inst5|charCreationCounter[6]~50\ = CARRY((\inst5|charCreationCounter\(6) & !\inst5|charCreationCounter[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(6),
	datad => VCC,
	cin => \inst5|charCreationCounter[5]~48\,
	combout => \inst5|charCreationCounter[6]~49_combout\,
	cout => \inst5|charCreationCounter[6]~50\);

-- Location: FF_X34_Y31_N15
\inst5|charCreationCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[6]~49_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(6));

-- Location: LCCOMB_X34_Y31_N16
\inst5|charCreationCounter[7]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[7]~51_combout\ = (\inst5|charCreationCounter\(7) & (!\inst5|charCreationCounter[6]~50\)) # (!\inst5|charCreationCounter\(7) & ((\inst5|charCreationCounter[6]~50\) # (GND)))
-- \inst5|charCreationCounter[7]~52\ = CARRY((!\inst5|charCreationCounter[6]~50\) # (!\inst5|charCreationCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(7),
	datad => VCC,
	cin => \inst5|charCreationCounter[6]~50\,
	combout => \inst5|charCreationCounter[7]~51_combout\,
	cout => \inst5|charCreationCounter[7]~52\);

-- Location: FF_X34_Y31_N17
\inst5|charCreationCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[7]~51_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(7));

-- Location: LCCOMB_X34_Y31_N18
\inst5|charCreationCounter[8]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[8]~53_combout\ = (\inst5|charCreationCounter\(8) & (\inst5|charCreationCounter[7]~52\ $ (GND))) # (!\inst5|charCreationCounter\(8) & (!\inst5|charCreationCounter[7]~52\ & VCC))
-- \inst5|charCreationCounter[8]~54\ = CARRY((\inst5|charCreationCounter\(8) & !\inst5|charCreationCounter[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(8),
	datad => VCC,
	cin => \inst5|charCreationCounter[7]~52\,
	combout => \inst5|charCreationCounter[8]~53_combout\,
	cout => \inst5|charCreationCounter[8]~54\);

-- Location: FF_X34_Y31_N19
\inst5|charCreationCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[8]~53_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(8));

-- Location: LCCOMB_X34_Y31_N20
\inst5|charCreationCounter[9]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[9]~55_combout\ = (\inst5|charCreationCounter\(9) & (!\inst5|charCreationCounter[8]~54\)) # (!\inst5|charCreationCounter\(9) & ((\inst5|charCreationCounter[8]~54\) # (GND)))
-- \inst5|charCreationCounter[9]~56\ = CARRY((!\inst5|charCreationCounter[8]~54\) # (!\inst5|charCreationCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(9),
	datad => VCC,
	cin => \inst5|charCreationCounter[8]~54\,
	combout => \inst5|charCreationCounter[9]~55_combout\,
	cout => \inst5|charCreationCounter[9]~56\);

-- Location: FF_X34_Y31_N21
\inst5|charCreationCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[9]~55_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(9));

-- Location: LCCOMB_X34_Y31_N22
\inst5|charCreationCounter[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[10]~57_combout\ = (\inst5|charCreationCounter\(10) & (\inst5|charCreationCounter[9]~56\ $ (GND))) # (!\inst5|charCreationCounter\(10) & (!\inst5|charCreationCounter[9]~56\ & VCC))
-- \inst5|charCreationCounter[10]~58\ = CARRY((\inst5|charCreationCounter\(10) & !\inst5|charCreationCounter[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(10),
	datad => VCC,
	cin => \inst5|charCreationCounter[9]~56\,
	combout => \inst5|charCreationCounter[10]~57_combout\,
	cout => \inst5|charCreationCounter[10]~58\);

-- Location: FF_X34_Y31_N23
\inst5|charCreationCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[10]~57_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(10));

-- Location: LCCOMB_X34_Y31_N24
\inst5|charCreationCounter[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[11]~59_combout\ = (\inst5|charCreationCounter\(11) & (!\inst5|charCreationCounter[10]~58\)) # (!\inst5|charCreationCounter\(11) & ((\inst5|charCreationCounter[10]~58\) # (GND)))
-- \inst5|charCreationCounter[11]~60\ = CARRY((!\inst5|charCreationCounter[10]~58\) # (!\inst5|charCreationCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(11),
	datad => VCC,
	cin => \inst5|charCreationCounter[10]~58\,
	combout => \inst5|charCreationCounter[11]~59_combout\,
	cout => \inst5|charCreationCounter[11]~60\);

-- Location: FF_X34_Y31_N25
\inst5|charCreationCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[11]~59_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(11));

-- Location: LCCOMB_X34_Y31_N26
\inst5|charCreationCounter[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[12]~61_combout\ = (\inst5|charCreationCounter\(12) & (\inst5|charCreationCounter[11]~60\ $ (GND))) # (!\inst5|charCreationCounter\(12) & (!\inst5|charCreationCounter[11]~60\ & VCC))
-- \inst5|charCreationCounter[12]~62\ = CARRY((\inst5|charCreationCounter\(12) & !\inst5|charCreationCounter[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(12),
	datad => VCC,
	cin => \inst5|charCreationCounter[11]~60\,
	combout => \inst5|charCreationCounter[12]~61_combout\,
	cout => \inst5|charCreationCounter[12]~62\);

-- Location: FF_X34_Y31_N27
\inst5|charCreationCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[12]~61_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(12));

-- Location: LCCOMB_X34_Y31_N28
\inst5|charCreationCounter[13]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[13]~63_combout\ = (\inst5|charCreationCounter\(13) & (!\inst5|charCreationCounter[12]~62\)) # (!\inst5|charCreationCounter\(13) & ((\inst5|charCreationCounter[12]~62\) # (GND)))
-- \inst5|charCreationCounter[13]~64\ = CARRY((!\inst5|charCreationCounter[12]~62\) # (!\inst5|charCreationCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(13),
	datad => VCC,
	cin => \inst5|charCreationCounter[12]~62\,
	combout => \inst5|charCreationCounter[13]~63_combout\,
	cout => \inst5|charCreationCounter[13]~64\);

-- Location: FF_X34_Y31_N29
\inst5|charCreationCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[13]~63_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(13));

-- Location: LCCOMB_X34_Y31_N30
\inst5|charCreationCounter[14]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[14]~65_combout\ = (\inst5|charCreationCounter\(14) & (\inst5|charCreationCounter[13]~64\ $ (GND))) # (!\inst5|charCreationCounter\(14) & (!\inst5|charCreationCounter[13]~64\ & VCC))
-- \inst5|charCreationCounter[14]~66\ = CARRY((\inst5|charCreationCounter\(14) & !\inst5|charCreationCounter[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(14),
	datad => VCC,
	cin => \inst5|charCreationCounter[13]~64\,
	combout => \inst5|charCreationCounter[14]~65_combout\,
	cout => \inst5|charCreationCounter[14]~66\);

-- Location: FF_X34_Y31_N31
\inst5|charCreationCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[14]~65_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(14));

-- Location: LCCOMB_X34_Y30_N0
\inst5|charCreationCounter[15]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[15]~67_combout\ = (\inst5|charCreationCounter\(15) & (!\inst5|charCreationCounter[14]~66\)) # (!\inst5|charCreationCounter\(15) & ((\inst5|charCreationCounter[14]~66\) # (GND)))
-- \inst5|charCreationCounter[15]~68\ = CARRY((!\inst5|charCreationCounter[14]~66\) # (!\inst5|charCreationCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(15),
	datad => VCC,
	cin => \inst5|charCreationCounter[14]~66\,
	combout => \inst5|charCreationCounter[15]~67_combout\,
	cout => \inst5|charCreationCounter[15]~68\);

-- Location: FF_X34_Y30_N1
\inst5|charCreationCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[15]~67_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(15));

-- Location: LCCOMB_X34_Y30_N2
\inst5|charCreationCounter[16]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[16]~69_combout\ = (\inst5|charCreationCounter\(16) & (\inst5|charCreationCounter[15]~68\ $ (GND))) # (!\inst5|charCreationCounter\(16) & (!\inst5|charCreationCounter[15]~68\ & VCC))
-- \inst5|charCreationCounter[16]~70\ = CARRY((\inst5|charCreationCounter\(16) & !\inst5|charCreationCounter[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(16),
	datad => VCC,
	cin => \inst5|charCreationCounter[15]~68\,
	combout => \inst5|charCreationCounter[16]~69_combout\,
	cout => \inst5|charCreationCounter[16]~70\);

-- Location: FF_X34_Y30_N3
\inst5|charCreationCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[16]~69_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(16));

-- Location: LCCOMB_X34_Y30_N4
\inst5|charCreationCounter[17]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[17]~71_combout\ = (\inst5|charCreationCounter\(17) & (!\inst5|charCreationCounter[16]~70\)) # (!\inst5|charCreationCounter\(17) & ((\inst5|charCreationCounter[16]~70\) # (GND)))
-- \inst5|charCreationCounter[17]~72\ = CARRY((!\inst5|charCreationCounter[16]~70\) # (!\inst5|charCreationCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(17),
	datad => VCC,
	cin => \inst5|charCreationCounter[16]~70\,
	combout => \inst5|charCreationCounter[17]~71_combout\,
	cout => \inst5|charCreationCounter[17]~72\);

-- Location: FF_X34_Y30_N5
\inst5|charCreationCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[17]~71_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(17));

-- Location: LCCOMB_X34_Y30_N6
\inst5|charCreationCounter[18]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[18]~73_combout\ = (\inst5|charCreationCounter\(18) & (\inst5|charCreationCounter[17]~72\ $ (GND))) # (!\inst5|charCreationCounter\(18) & (!\inst5|charCreationCounter[17]~72\ & VCC))
-- \inst5|charCreationCounter[18]~74\ = CARRY((\inst5|charCreationCounter\(18) & !\inst5|charCreationCounter[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(18),
	datad => VCC,
	cin => \inst5|charCreationCounter[17]~72\,
	combout => \inst5|charCreationCounter[18]~73_combout\,
	cout => \inst5|charCreationCounter[18]~74\);

-- Location: FF_X34_Y30_N7
\inst5|charCreationCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[18]~73_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(18));

-- Location: LCCOMB_X34_Y30_N8
\inst5|charCreationCounter[19]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[19]~75_combout\ = (\inst5|charCreationCounter\(19) & (!\inst5|charCreationCounter[18]~74\)) # (!\inst5|charCreationCounter\(19) & ((\inst5|charCreationCounter[18]~74\) # (GND)))
-- \inst5|charCreationCounter[19]~76\ = CARRY((!\inst5|charCreationCounter[18]~74\) # (!\inst5|charCreationCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(19),
	datad => VCC,
	cin => \inst5|charCreationCounter[18]~74\,
	combout => \inst5|charCreationCounter[19]~75_combout\,
	cout => \inst5|charCreationCounter[19]~76\);

-- Location: FF_X34_Y30_N9
\inst5|charCreationCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[19]~75_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(19));

-- Location: LCCOMB_X34_Y30_N10
\inst5|charCreationCounter[20]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[20]~77_combout\ = (\inst5|charCreationCounter\(20) & (\inst5|charCreationCounter[19]~76\ $ (GND))) # (!\inst5|charCreationCounter\(20) & (!\inst5|charCreationCounter[19]~76\ & VCC))
-- \inst5|charCreationCounter[20]~78\ = CARRY((\inst5|charCreationCounter\(20) & !\inst5|charCreationCounter[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(20),
	datad => VCC,
	cin => \inst5|charCreationCounter[19]~76\,
	combout => \inst5|charCreationCounter[20]~77_combout\,
	cout => \inst5|charCreationCounter[20]~78\);

-- Location: FF_X34_Y30_N11
\inst5|charCreationCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[20]~77_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(20));

-- Location: LCCOMB_X34_Y30_N12
\inst5|charCreationCounter[21]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[21]~79_combout\ = (\inst5|charCreationCounter\(21) & (!\inst5|charCreationCounter[20]~78\)) # (!\inst5|charCreationCounter\(21) & ((\inst5|charCreationCounter[20]~78\) # (GND)))
-- \inst5|charCreationCounter[21]~80\ = CARRY((!\inst5|charCreationCounter[20]~78\) # (!\inst5|charCreationCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(21),
	datad => VCC,
	cin => \inst5|charCreationCounter[20]~78\,
	combout => \inst5|charCreationCounter[21]~79_combout\,
	cout => \inst5|charCreationCounter[21]~80\);

-- Location: FF_X34_Y30_N13
\inst5|charCreationCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[21]~79_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(21));

-- Location: LCCOMB_X34_Y30_N14
\inst5|charCreationCounter[22]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[22]~81_combout\ = (\inst5|charCreationCounter\(22) & (\inst5|charCreationCounter[21]~80\ $ (GND))) # (!\inst5|charCreationCounter\(22) & (!\inst5|charCreationCounter[21]~80\ & VCC))
-- \inst5|charCreationCounter[22]~82\ = CARRY((\inst5|charCreationCounter\(22) & !\inst5|charCreationCounter[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(22),
	datad => VCC,
	cin => \inst5|charCreationCounter[21]~80\,
	combout => \inst5|charCreationCounter[22]~81_combout\,
	cout => \inst5|charCreationCounter[22]~82\);

-- Location: FF_X34_Y30_N15
\inst5|charCreationCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[22]~81_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(22));

-- Location: LCCOMB_X34_Y30_N16
\inst5|charCreationCounter[23]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[23]~83_combout\ = (\inst5|charCreationCounter\(23) & (!\inst5|charCreationCounter[22]~82\)) # (!\inst5|charCreationCounter\(23) & ((\inst5|charCreationCounter[22]~82\) # (GND)))
-- \inst5|charCreationCounter[23]~84\ = CARRY((!\inst5|charCreationCounter[22]~82\) # (!\inst5|charCreationCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(23),
	datad => VCC,
	cin => \inst5|charCreationCounter[22]~82\,
	combout => \inst5|charCreationCounter[23]~83_combout\,
	cout => \inst5|charCreationCounter[23]~84\);

-- Location: FF_X34_Y30_N17
\inst5|charCreationCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[23]~83_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(23));

-- Location: LCCOMB_X34_Y30_N18
\inst5|charCreationCounter[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[24]~85_combout\ = (\inst5|charCreationCounter\(24) & (\inst5|charCreationCounter[23]~84\ $ (GND))) # (!\inst5|charCreationCounter\(24) & (!\inst5|charCreationCounter[23]~84\ & VCC))
-- \inst5|charCreationCounter[24]~86\ = CARRY((\inst5|charCreationCounter\(24) & !\inst5|charCreationCounter[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(24),
	datad => VCC,
	cin => \inst5|charCreationCounter[23]~84\,
	combout => \inst5|charCreationCounter[24]~85_combout\,
	cout => \inst5|charCreationCounter[24]~86\);

-- Location: FF_X34_Y30_N19
\inst5|charCreationCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[24]~85_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(24));

-- Location: LCCOMB_X35_Y30_N26
\inst5|Equal8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~6_combout\ = (!\inst5|charCreationCounter\(22) & (!\inst5|charCreationCounter\(24) & (!\inst5|charCreationCounter\(23) & !\inst5|charCreationCounter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(22),
	datab => \inst5|charCreationCounter\(24),
	datac => \inst5|charCreationCounter\(23),
	datad => \inst5|charCreationCounter\(21),
	combout => \inst5|Equal8~6_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst5|Equal8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~5_combout\ = (!\inst5|charCreationCounter\(20) & (!\inst5|charCreationCounter\(17) & (!\inst5|charCreationCounter\(18) & !\inst5|charCreationCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(20),
	datab => \inst5|charCreationCounter\(17),
	datac => \inst5|charCreationCounter\(18),
	datad => \inst5|charCreationCounter\(19),
	combout => \inst5|Equal8~5_combout\);

-- Location: LCCOMB_X34_Y30_N20
\inst5|charCreationCounter[25]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[25]~87_combout\ = (\inst5|charCreationCounter\(25) & (!\inst5|charCreationCounter[24]~86\)) # (!\inst5|charCreationCounter\(25) & ((\inst5|charCreationCounter[24]~86\) # (GND)))
-- \inst5|charCreationCounter[25]~88\ = CARRY((!\inst5|charCreationCounter[24]~86\) # (!\inst5|charCreationCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(25),
	datad => VCC,
	cin => \inst5|charCreationCounter[24]~86\,
	combout => \inst5|charCreationCounter[25]~87_combout\,
	cout => \inst5|charCreationCounter[25]~88\);

-- Location: FF_X34_Y30_N21
\inst5|charCreationCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[25]~87_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(25));

-- Location: LCCOMB_X34_Y30_N22
\inst5|charCreationCounter[26]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[26]~89_combout\ = (\inst5|charCreationCounter\(26) & (\inst5|charCreationCounter[25]~88\ $ (GND))) # (!\inst5|charCreationCounter\(26) & (!\inst5|charCreationCounter[25]~88\ & VCC))
-- \inst5|charCreationCounter[26]~90\ = CARRY((\inst5|charCreationCounter\(26) & !\inst5|charCreationCounter[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(26),
	datad => VCC,
	cin => \inst5|charCreationCounter[25]~88\,
	combout => \inst5|charCreationCounter[26]~89_combout\,
	cout => \inst5|charCreationCounter[26]~90\);

-- Location: FF_X34_Y30_N23
\inst5|charCreationCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[26]~89_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(26));

-- Location: LCCOMB_X34_Y30_N24
\inst5|charCreationCounter[27]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[27]~91_combout\ = (\inst5|charCreationCounter\(27) & (!\inst5|charCreationCounter[26]~90\)) # (!\inst5|charCreationCounter\(27) & ((\inst5|charCreationCounter[26]~90\) # (GND)))
-- \inst5|charCreationCounter[27]~92\ = CARRY((!\inst5|charCreationCounter[26]~90\) # (!\inst5|charCreationCounter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(27),
	datad => VCC,
	cin => \inst5|charCreationCounter[26]~90\,
	combout => \inst5|charCreationCounter[27]~91_combout\,
	cout => \inst5|charCreationCounter[27]~92\);

-- Location: FF_X34_Y30_N25
\inst5|charCreationCounter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[27]~91_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(27));

-- Location: LCCOMB_X34_Y30_N26
\inst5|charCreationCounter[28]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[28]~93_combout\ = (\inst5|charCreationCounter\(28) & (\inst5|charCreationCounter[27]~92\ $ (GND))) # (!\inst5|charCreationCounter\(28) & (!\inst5|charCreationCounter[27]~92\ & VCC))
-- \inst5|charCreationCounter[28]~94\ = CARRY((\inst5|charCreationCounter\(28) & !\inst5|charCreationCounter[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(28),
	datad => VCC,
	cin => \inst5|charCreationCounter[27]~92\,
	combout => \inst5|charCreationCounter[28]~93_combout\,
	cout => \inst5|charCreationCounter[28]~94\);

-- Location: FF_X34_Y30_N27
\inst5|charCreationCounter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[28]~93_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(28));

-- Location: LCCOMB_X34_Y30_N28
\inst5|charCreationCounter[29]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[29]~95_combout\ = (\inst5|charCreationCounter\(29) & (!\inst5|charCreationCounter[28]~94\)) # (!\inst5|charCreationCounter\(29) & ((\inst5|charCreationCounter[28]~94\) # (GND)))
-- \inst5|charCreationCounter[29]~96\ = CARRY((!\inst5|charCreationCounter[28]~94\) # (!\inst5|charCreationCounter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(29),
	datad => VCC,
	cin => \inst5|charCreationCounter[28]~94\,
	combout => \inst5|charCreationCounter[29]~95_combout\,
	cout => \inst5|charCreationCounter[29]~96\);

-- Location: FF_X34_Y30_N29
\inst5|charCreationCounter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[29]~95_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(29));

-- Location: LCCOMB_X34_Y30_N30
\inst5|charCreationCounter[30]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[30]~97_combout\ = \inst5|charCreationCounter\(30) $ (!\inst5|charCreationCounter[29]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(30),
	cin => \inst5|charCreationCounter[29]~96\,
	combout => \inst5|charCreationCounter[30]~97_combout\);

-- Location: FF_X34_Y30_N31
\inst5|charCreationCounter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[30]~97_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(30));

-- Location: LCCOMB_X35_Y30_N16
\inst5|Equal8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~7_combout\ = (!\inst5|charCreationCounter\(28) & (!\inst5|charCreationCounter\(27) & (!\inst5|charCreationCounter\(26) & !\inst5|charCreationCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(28),
	datab => \inst5|charCreationCounter\(27),
	datac => \inst5|charCreationCounter\(26),
	datad => \inst5|charCreationCounter\(25),
	combout => \inst5|Equal8~7_combout\);

-- Location: LCCOMB_X35_Y30_N22
\inst5|Equal8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~8_combout\ = (!\inst5|charCreationCounter\(29) & (!\inst5|charCreationCounter\(30) & \inst5|Equal8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(29),
	datac => \inst5|charCreationCounter\(30),
	datad => \inst5|Equal8~7_combout\,
	combout => \inst5|Equal8~8_combout\);

-- Location: LCCOMB_X34_Y31_N0
\inst5|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~1_combout\ = (!\inst5|charCreationCounter\(5) & (!\inst5|charCreationCounter\(8) & (!\inst5|charCreationCounter\(6) & !\inst5|charCreationCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(5),
	datab => \inst5|charCreationCounter\(8),
	datac => \inst5|charCreationCounter\(6),
	datad => \inst5|charCreationCounter\(7),
	combout => \inst5|Equal8~1_combout\);

-- Location: LCCOMB_X35_Y30_N8
\inst5|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~0_combout\ = (!\inst5|charCreationCounter\(2) & (!\inst5|charCreationCounter\(1) & (!\inst5|charCreationCounter\(4) & !\inst5|charCreationCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(2),
	datab => \inst5|charCreationCounter\(1),
	datac => \inst5|charCreationCounter\(4),
	datad => \inst5|charCreationCounter\(0),
	combout => \inst5|Equal8~0_combout\);

-- Location: LCCOMB_X35_Y30_N14
\inst5|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~2_combout\ = (!\inst5|charCreationCounter\(9) & (!\inst5|charCreationCounter\(10) & (!\inst5|charCreationCounter\(12) & !\inst5|charCreationCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(9),
	datab => \inst5|charCreationCounter\(10),
	datac => \inst5|charCreationCounter\(12),
	datad => \inst5|charCreationCounter\(11),
	combout => \inst5|Equal8~2_combout\);

-- Location: LCCOMB_X35_Y30_N24
\inst5|Equal8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~3_combout\ = (!\inst5|charCreationCounter\(16) & (!\inst5|charCreationCounter\(15) & (!\inst5|charCreationCounter\(13) & !\inst5|charCreationCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(16),
	datab => \inst5|charCreationCounter\(15),
	datac => \inst5|charCreationCounter\(13),
	datad => \inst5|charCreationCounter\(14),
	combout => \inst5|Equal8~3_combout\);

-- Location: LCCOMB_X35_Y30_N6
\inst5|Equal8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~4_combout\ = (\inst5|Equal8~1_combout\ & (\inst5|Equal8~0_combout\ & (\inst5|Equal8~2_combout\ & \inst5|Equal8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~1_combout\,
	datab => \inst5|Equal8~0_combout\,
	datac => \inst5|Equal8~2_combout\,
	datad => \inst5|Equal8~3_combout\,
	combout => \inst5|Equal8~4_combout\);

-- Location: LCCOMB_X35_Y30_N0
\inst5|Equal8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~9_combout\ = (\inst5|Equal8~6_combout\ & (\inst5|Equal8~5_combout\ & (\inst5|Equal8~8_combout\ & \inst5|Equal8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~6_combout\,
	datab => \inst5|Equal8~5_combout\,
	datac => \inst5|Equal8~8_combout\,
	datad => \inst5|Equal8~4_combout\,
	combout => \inst5|Equal8~9_combout\);

-- Location: LCCOMB_X35_Y31_N30
\inst5|charCreationCounter[23]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[23]~99_combout\ = (\inst5|charCreationCounter\(3) & ((\inst5|Equal8~9_combout\) # ((\inst5|state.init5~q\ & \inst5|Equal6~5_combout\)))) # (!\inst5|charCreationCounter\(3) & (\inst5|state.init5~q\ & (\inst5|Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|state.init5~q\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|charCreationCounter[23]~99_combout\);

-- Location: FF_X34_Y31_N3
\inst5|charCreationCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[0]~35_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(0));

-- Location: LCCOMB_X34_Y31_N4
\inst5|charCreationCounter[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[1]~39_combout\ = (\inst5|charCreationCounter\(1) & (!\inst5|charCreationCounter[0]~36\)) # (!\inst5|charCreationCounter\(1) & ((\inst5|charCreationCounter[0]~36\) # (GND)))
-- \inst5|charCreationCounter[1]~40\ = CARRY((!\inst5|charCreationCounter[0]~36\) # (!\inst5|charCreationCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|charCreationCounter\(1),
	datad => VCC,
	cin => \inst5|charCreationCounter[0]~36\,
	combout => \inst5|charCreationCounter[1]~39_combout\,
	cout => \inst5|charCreationCounter[1]~40\);

-- Location: FF_X34_Y31_N5
\inst5|charCreationCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[1]~39_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(1));

-- Location: LCCOMB_X34_Y31_N6
\inst5|charCreationCounter[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[2]~41_combout\ = (\inst5|charCreationCounter\(2) & (\inst5|charCreationCounter[1]~40\ $ (GND))) # (!\inst5|charCreationCounter\(2) & (!\inst5|charCreationCounter[1]~40\ & VCC))
-- \inst5|charCreationCounter[2]~42\ = CARRY((\inst5|charCreationCounter\(2) & !\inst5|charCreationCounter[1]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(2),
	datad => VCC,
	cin => \inst5|charCreationCounter[1]~40\,
	combout => \inst5|charCreationCounter[2]~41_combout\,
	cout => \inst5|charCreationCounter[2]~42\);

-- Location: FF_X34_Y31_N7
\inst5|charCreationCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[2]~41_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(2));

-- Location: FF_X34_Y31_N9
\inst5|charCreationCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|charCreationCounter[3]~43_combout\,
	sclr => \inst5|charCreationCounter[23]~99_combout\,
	ena => \inst5|charCreationCounter[3]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|charCreationCounter\(3));

-- Location: LCCOMB_X36_Y30_N30
\inst5|state~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~65_combout\ = (\inst5|state.createChar4~q\ & (!\inst5|state.createChar1~q\ & (!\inst5|state.createChar3~q\ & !\inst5|state.createChar2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|state.createChar1~q\,
	datac => \inst5|state.createChar3~q\,
	datad => \inst5|state.createChar2~q\,
	combout => \inst5|state~65_combout\);

-- Location: LCCOMB_X35_Y30_N20
\inst5|state~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~66_combout\ = (\inst5|state~65_combout\ & (\inst5|charCreationCounter\(3) & ((\inst5|Equal8~9_combout\)))) # (!\inst5|state~65_combout\ & (\inst5|state.createChar5~q\ & ((!\inst5|Equal8~9_combout\) # (!\inst5|charCreationCounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|state~65_combout\,
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|state~66_combout\);

-- Location: LCCOMB_X37_Y28_N4
\inst5|state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~47_combout\ = (\inst5|state~36_combout\ & ((\inst5|Equal6~5_combout\ & (\inst5|state~66_combout\)) # (!\inst5|Equal6~5_combout\ & ((\inst5|state.createChar5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|state~66_combout\,
	datac => \inst5|state.createChar5~q\,
	datad => \inst5|state~36_combout\,
	combout => \inst5|state~47_combout\);

-- Location: FF_X37_Y28_N5
\inst5|state.createChar5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.createChar5~q\);

-- Location: LCCOMB_X35_Y30_N10
\inst5|state~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~60_combout\ = (\inst5|state.createChar5~q\ & ((\inst5|Equal6~5_combout\ & ((!\inst5|Equal7~0_combout\))) # (!\inst5|Equal6~5_combout\ & (\inst5|state~59_combout\)))) # (!\inst5|state.createChar5~q\ & (\inst5|state~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~59_combout\,
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|Equal7~0_combout\,
	combout => \inst5|state~60_combout\);

-- Location: LCCOMB_X35_Y30_N2
\inst5|state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~58_combout\ = (\inst5|state.init6~q\ & ((!\inst5|charCreationCounter\(3)) # (!\inst5|Equal8~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal8~9_combout\,
	datac => \inst5|state.init6~q\,
	datad => \inst5|charCreationCounter\(3),
	combout => \inst5|state~58_combout\);

-- Location: LCCOMB_X36_Y30_N12
\inst5|state~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~61_combout\ = (\inst5|Equal6~5_combout\ & ((\inst5|state.createChar4~q\) # ((\inst5|state.createChar3~q\) # (!\inst5|dataOut[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|dataOut[4]~0_combout\,
	combout => \inst5|state~61_combout\);

-- Location: LCCOMB_X35_Y30_N30
\inst5|state~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~62_combout\ = (\inst5|state~36_combout\ & ((\inst5|state~61_combout\ & ((\inst5|state~58_combout\))) # (!\inst5|state~61_combout\ & (\inst5|state~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~60_combout\,
	datab => \inst5|state~58_combout\,
	datac => \inst5|state~61_combout\,
	datad => \inst5|state~36_combout\,
	combout => \inst5|state~62_combout\);

-- Location: FF_X35_Y30_N31
\inst5|state.init6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init6~q\);

-- Location: LCCOMB_X35_Y28_N0
\inst5|process_0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~19_combout\ = (\inst5|Equal4~3_combout\ & (\inst5|state.init6~q\ & (\inst5|Equal4~2_combout\ & \inst5|Equal4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal4~3_combout\,
	datab => \inst5|state.init6~q\,
	datac => \inst5|Equal4~2_combout\,
	datad => \inst5|Equal4~6_combout\,
	combout => \inst5|process_0~19_combout\);

-- Location: LCCOMB_X36_Y28_N30
\inst5|state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~52_combout\ = (\inst5|state~40_combout\ & (\inst5|process_0~19_combout\ & ((!\inst5|process_0~8_combout\)))) # (!\inst5|state~40_combout\ & (((\inst5|state.init7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~19_combout\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.init7~q\,
	datad => \inst5|process_0~8_combout\,
	combout => \inst5|state~52_combout\);

-- Location: FF_X36_Y28_N31
\inst5|state.init7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.init7~q\);

-- Location: LCCOMB_X37_Y28_N26
\inst5|state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~42_combout\ = (\inst5|process_1~0_combout\ & (\inst5|state.sendingAddress~q\ & \inst5|Equal6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|process_1~0_combout\,
	datac => \inst5|state.sendingAddress~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|state~42_combout\);

-- Location: LCCOMB_X36_Y28_N2
\inst5|state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~43_combout\ = (\inst5|state~40_combout\ & (!\inst5|process_0~8_combout\ & ((\inst5|state~42_combout\)))) # (!\inst5|state~40_combout\ & (((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~8_combout\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.sendingData~q\,
	datad => \inst5|state~42_combout\,
	combout => \inst5|state~43_combout\);

-- Location: FF_X36_Y28_N3
\inst5|state.sendingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.sendingData~q\);

-- Location: LCCOMB_X36_Y28_N6
\inst5|state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~37_combout\ = (!\inst5|state.sendingAddress~q\ & (!\inst5|state.init7~q\ & !\inst5|state.sendingData~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.sendingAddress~q\,
	datac => \inst5|state.init7~q\,
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|state~37_combout\);

-- Location: LCCOMB_X35_Y28_N2
\inst5|state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~38_combout\ = (!\inst5|process_0~19_combout\ & ((\inst5|state~37_combout\) # (!\inst5|Equal6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state~37_combout\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|process_0~19_combout\,
	combout => \inst5|state~38_combout\);

-- Location: LCCOMB_X37_Y28_N20
\inst5|charCreationCounter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|charCreationCounter[3]~37_combout\ = (!\inst5|state.init3~q\ & !\inst5|state.init4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.init3~q\,
	datad => \inst5|state.init4~q\,
	combout => \inst5|charCreationCounter[3]~37_combout\);

-- Location: LCCOMB_X35_Y28_N24
\inst5|counter[12]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[12]~31_combout\ = ((\inst5|charCreationCounter[3]~37_combout\ & (!\inst5|state.init5~q\ & \inst5|process_1~0_combout\))) # (!\inst5|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter[3]~37_combout\,
	datab => \inst5|state.init5~q\,
	datac => \inst5|Equal6~5_combout\,
	datad => \inst5|process_1~0_combout\,
	combout => \inst5|counter[12]~31_combout\);

-- Location: LCCOMB_X35_Y28_N26
\inst5|counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[12]~56_combout\ = (\inst5|process_0~8_combout\) # (((!\inst5|state~34_combout\) # (!\inst5|counter[12]~31_combout\)) # (!\inst5|state~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~8_combout\,
	datab => \inst5|state~38_combout\,
	datac => \inst5|counter[12]~31_combout\,
	datad => \inst5|state~34_combout\,
	combout => \inst5|counter[12]~56_combout\);

-- Location: FF_X35_Y27_N3
\inst5|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[0]~32_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(0));

-- Location: LCCOMB_X35_Y27_N4
\inst5|counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[1]~34_combout\ = (\inst5|counter\(1) & (!\inst5|counter[0]~33\)) # (!\inst5|counter\(1) & ((\inst5|counter[0]~33\) # (GND)))
-- \inst5|counter[1]~35\ = CARRY((!\inst5|counter[0]~33\) # (!\inst5|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(1),
	datad => VCC,
	cin => \inst5|counter[0]~33\,
	combout => \inst5|counter[1]~34_combout\,
	cout => \inst5|counter[1]~35\);

-- Location: FF_X35_Y27_N5
\inst5|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[1]~34_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(1));

-- Location: LCCOMB_X35_Y27_N6
\inst5|counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[2]~36_combout\ = (\inst5|counter\(2) & (\inst5|counter[1]~35\ $ (GND))) # (!\inst5|counter\(2) & (!\inst5|counter[1]~35\ & VCC))
-- \inst5|counter[2]~37\ = CARRY((\inst5|counter\(2) & !\inst5|counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(2),
	datad => VCC,
	cin => \inst5|counter[1]~35\,
	combout => \inst5|counter[2]~36_combout\,
	cout => \inst5|counter[2]~37\);

-- Location: FF_X35_Y27_N7
\inst5|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[2]~36_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(2));

-- Location: LCCOMB_X35_Y27_N8
\inst5|counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[3]~38_combout\ = (\inst5|counter\(3) & (!\inst5|counter[2]~37\)) # (!\inst5|counter\(3) & ((\inst5|counter[2]~37\) # (GND)))
-- \inst5|counter[3]~39\ = CARRY((!\inst5|counter[2]~37\) # (!\inst5|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(3),
	datad => VCC,
	cin => \inst5|counter[2]~37\,
	combout => \inst5|counter[3]~38_combout\,
	cout => \inst5|counter[3]~39\);

-- Location: FF_X35_Y27_N9
\inst5|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[3]~38_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(3));

-- Location: LCCOMB_X35_Y27_N10
\inst5|counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[4]~40_combout\ = (\inst5|counter\(4) & (\inst5|counter[3]~39\ $ (GND))) # (!\inst5|counter\(4) & (!\inst5|counter[3]~39\ & VCC))
-- \inst5|counter[4]~41\ = CARRY((\inst5|counter\(4) & !\inst5|counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(4),
	datad => VCC,
	cin => \inst5|counter[3]~39\,
	combout => \inst5|counter[4]~40_combout\,
	cout => \inst5|counter[4]~41\);

-- Location: FF_X35_Y27_N11
\inst5|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[4]~40_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(4));

-- Location: LCCOMB_X35_Y27_N12
\inst5|counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[5]~42_combout\ = (\inst5|counter\(5) & (!\inst5|counter[4]~41\)) # (!\inst5|counter\(5) & ((\inst5|counter[4]~41\) # (GND)))
-- \inst5|counter[5]~43\ = CARRY((!\inst5|counter[4]~41\) # (!\inst5|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(5),
	datad => VCC,
	cin => \inst5|counter[4]~41\,
	combout => \inst5|counter[5]~42_combout\,
	cout => \inst5|counter[5]~43\);

-- Location: FF_X35_Y27_N13
\inst5|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[5]~42_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(5));

-- Location: LCCOMB_X35_Y27_N14
\inst5|counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[6]~44_combout\ = (\inst5|counter\(6) & (\inst5|counter[5]~43\ $ (GND))) # (!\inst5|counter\(6) & (!\inst5|counter[5]~43\ & VCC))
-- \inst5|counter[6]~45\ = CARRY((\inst5|counter\(6) & !\inst5|counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(6),
	datad => VCC,
	cin => \inst5|counter[5]~43\,
	combout => \inst5|counter[6]~44_combout\,
	cout => \inst5|counter[6]~45\);

-- Location: FF_X35_Y27_N15
\inst5|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[6]~44_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(6));

-- Location: LCCOMB_X35_Y27_N16
\inst5|counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[7]~46_combout\ = (\inst5|counter\(7) & (!\inst5|counter[6]~45\)) # (!\inst5|counter\(7) & ((\inst5|counter[6]~45\) # (GND)))
-- \inst5|counter[7]~47\ = CARRY((!\inst5|counter[6]~45\) # (!\inst5|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(7),
	datad => VCC,
	cin => \inst5|counter[6]~45\,
	combout => \inst5|counter[7]~46_combout\,
	cout => \inst5|counter[7]~47\);

-- Location: FF_X35_Y27_N17
\inst5|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[7]~46_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(7));

-- Location: LCCOMB_X35_Y27_N18
\inst5|counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[8]~48_combout\ = (\inst5|counter\(8) & (\inst5|counter[7]~47\ $ (GND))) # (!\inst5|counter\(8) & (!\inst5|counter[7]~47\ & VCC))
-- \inst5|counter[8]~49\ = CARRY((\inst5|counter\(8) & !\inst5|counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(8),
	datad => VCC,
	cin => \inst5|counter[7]~47\,
	combout => \inst5|counter[8]~48_combout\,
	cout => \inst5|counter[8]~49\);

-- Location: FF_X35_Y27_N19
\inst5|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[8]~48_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(8));

-- Location: LCCOMB_X35_Y27_N20
\inst5|counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[9]~50_combout\ = (\inst5|counter\(9) & (!\inst5|counter[8]~49\)) # (!\inst5|counter\(9) & ((\inst5|counter[8]~49\) # (GND)))
-- \inst5|counter[9]~51\ = CARRY((!\inst5|counter[8]~49\) # (!\inst5|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(9),
	datad => VCC,
	cin => \inst5|counter[8]~49\,
	combout => \inst5|counter[9]~50_combout\,
	cout => \inst5|counter[9]~51\);

-- Location: FF_X35_Y27_N21
\inst5|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[9]~50_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(9));

-- Location: LCCOMB_X35_Y27_N22
\inst5|counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[10]~52_combout\ = (\inst5|counter\(10) & (\inst5|counter[9]~51\ $ (GND))) # (!\inst5|counter\(10) & (!\inst5|counter[9]~51\ & VCC))
-- \inst5|counter[10]~53\ = CARRY((\inst5|counter\(10) & !\inst5|counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(10),
	datad => VCC,
	cin => \inst5|counter[9]~51\,
	combout => \inst5|counter[10]~52_combout\,
	cout => \inst5|counter[10]~53\);

-- Location: FF_X35_Y27_N23
\inst5|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[10]~52_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(10));

-- Location: LCCOMB_X35_Y27_N24
\inst5|counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|counter[11]~54_combout\ = (\inst5|counter\(11) & (!\inst5|counter[10]~53\)) # (!\inst5|counter\(11) & ((\inst5|counter[10]~53\) # (GND)))
-- \inst5|counter[11]~55\ = CARRY((!\inst5|counter[10]~53\) # (!\inst5|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|counter\(11),
	datad => VCC,
	cin => \inst5|counter[10]~53\,
	combout => \inst5|counter[11]~54_combout\,
	cout => \inst5|counter[11]~55\);

-- Location: FF_X35_Y27_N25
\inst5|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[11]~54_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(11));

-- Location: FF_X35_Y27_N27
\inst5|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|counter[12]~57_combout\,
	sclr => \inst5|counter[12]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|counter\(12));

-- Location: LCCOMB_X34_Y27_N22
\inst5|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~3_combout\ = (\inst5|counter\(12) & (\inst5|counter\(3) & (!\inst5|counter\(4) & \inst5|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(12),
	datab => \inst5|counter\(3),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(7),
	combout => \inst5|Equal6~3_combout\);

-- Location: LCCOMB_X34_Y27_N0
\inst5|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~4_combout\ = (\inst5|counter\(9) & (!\inst5|counter\(5) & (!\inst5|counter\(6) & !\inst5|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(9),
	datab => \inst5|counter\(5),
	datac => \inst5|counter\(6),
	datad => \inst5|counter\(14),
	combout => \inst5|Equal6~4_combout\);

-- Location: LCCOMB_X35_Y28_N30
\inst5|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~2_combout\ = (!\inst5|counter\(15) & (!\inst5|counter\(18) & (\inst5|Equal6~0_combout\ & \inst5|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(15),
	datab => \inst5|counter\(18),
	datac => \inst5|Equal6~0_combout\,
	datad => \inst5|Equal6~1_combout\,
	combout => \inst5|Equal6~2_combout\);

-- Location: LCCOMB_X35_Y28_N8
\inst5|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal6~5_combout\ = (\inst5|Equal6~3_combout\ & (\inst5|Equal6~4_combout\ & (\inst5|Equal6~2_combout\ & \inst5|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~3_combout\,
	datab => \inst5|Equal6~4_combout\,
	datac => \inst5|Equal6~2_combout\,
	datad => \inst5|Equal4~2_combout\,
	combout => \inst5|Equal6~5_combout\);

-- Location: LCCOMB_X36_Y28_N8
\inst5|state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~39_combout\ = (\inst5|Equal6~5_combout\ & ((\inst5|process_1~0_combout\ & ((\inst5|state~38_combout\))) # (!\inst5|process_1~0_combout\ & (\inst5|Equal7~0_combout\)))) # (!\inst5|Equal6~5_combout\ & (((\inst5|state~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~5_combout\,
	datab => \inst5|process_1~0_combout\,
	datac => \inst5|Equal7~0_combout\,
	datad => \inst5|state~38_combout\,
	combout => \inst5|state~39_combout\);

-- Location: LCCOMB_X36_Y28_N4
\inst5|state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~40_combout\ = (!\inst5|state~36_combout\) # (!\inst5|state~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state~39_combout\,
	datad => \inst5|state~36_combout\,
	combout => \inst5|state~40_combout\);

-- Location: LCCOMB_X36_Y28_N14
\inst5|process_0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_0~20_combout\ = (\inst5|state.sendingAddress~q\ & \inst5|Equal6~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|state.sendingAddress~q\,
	datad => \inst5|Equal6~5_combout\,
	combout => \inst5|process_0~20_combout\);

-- Location: LCCOMB_X36_Y28_N24
\inst5|state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~41_combout\ = (!\inst5|process_0~19_combout\ & (\inst5|counter[12]~31_combout\ & (!\inst5|process_0~20_combout\ & \inst5|state~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|process_0~19_combout\,
	datab => \inst5|counter[12]~31_combout\,
	datac => \inst5|process_0~20_combout\,
	datad => \inst5|state~34_combout\,
	combout => \inst5|state~41_combout\);

-- Location: LCCOMB_X36_Y28_N16
\inst5|state~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|state~63_combout\ = (\inst5|state~40_combout\ & (\inst5|state~41_combout\ & ((\inst4|lcd_write_n~q\) # (!\inst5|state.ready~q\)))) # (!\inst5|state~40_combout\ & (((\inst5|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_write_n~q\,
	datab => \inst5|state~40_combout\,
	datac => \inst5|state.ready~q\,
	datad => \inst5|state~41_combout\,
	combout => \inst5|state~63_combout\);

-- Location: FF_X36_Y28_N17
\inst5|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|state~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|state.ready~q\);

-- Location: LCCOMB_X35_Y31_N16
\inst5|Equal8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal8~10_combout\ = (\inst5|Equal8~9_combout\ & !\inst5|charCreationCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal8~9_combout\,
	datad => \inst5|charCreationCounter\(3),
	combout => \inst5|Equal8~10_combout\);

-- Location: LCCOMB_X37_Y28_N12
\inst5|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|process_1~1_combout\ = (\inst5|process_1~0_combout\ & (!\inst5|state.ready~q\ & ((!\inst5|state.sendingData~q\)))) # (!\inst5|process_1~0_combout\ & (((\inst5|Equal8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.ready~q\,
	datab => \inst5|process_1~0_combout\,
	datac => \inst5|Equal8~10_combout\,
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|process_1~1_combout\);

-- Location: LCCOMB_X34_Y27_N12
\inst5|e~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~0_combout\ = (\inst5|counter\(1) & ((\inst5|counter\(4)) # (\inst5|counter\(2)))) # (!\inst5|counter\(1) & (\inst5|counter\(4) & \inst5|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(1),
	datac => \inst5|counter\(4),
	datad => \inst5|counter\(2),
	combout => \inst5|e~0_combout\);

-- Location: LCCOMB_X34_Y27_N18
\inst5|e~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~1_combout\ = (\inst5|counter\(4) & (((!\inst5|counter\(3) & !\inst5|e~0_combout\)) # (!\inst5|counter\(5)))) # (!\inst5|counter\(4) & ((\inst5|counter\(3)) # ((\inst5|counter\(5)) # (\inst5|e~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(3),
	datab => \inst5|counter\(4),
	datac => \inst5|counter\(5),
	datad => \inst5|e~0_combout\,
	combout => \inst5|e~1_combout\);

-- Location: LCCOMB_X34_Y27_N4
\inst5|e~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~2_combout\ = (\inst5|Equal6~2_combout\ & (!\inst5|counter\(8) & (!\inst5|state.ready~q\ & \inst5|e~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal6~2_combout\,
	datab => \inst5|counter\(8),
	datac => \inst5|state.ready~q\,
	datad => \inst5|e~1_combout\,
	combout => \inst5|e~2_combout\);

-- Location: LCCOMB_X34_Y28_N12
\inst5|e~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~6_combout\ = (\inst5|e~3_combout\ & (\inst5|e~4_combout\ & \inst5|e~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|e~3_combout\,
	datac => \inst5|e~4_combout\,
	datad => \inst5|e~5_combout\,
	combout => \inst5|e~6_combout\);

-- Location: LCCOMB_X34_Y28_N2
\inst5|e~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|e~7_combout\ = (!\inst5|counter\(9) & (\inst5|e~2_combout\ & (\inst5|Equal4~0_combout\ & \inst5|e~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|counter\(9),
	datab => \inst5|e~2_combout\,
	datac => \inst5|Equal4~0_combout\,
	datad => \inst5|e~6_combout\,
	combout => \inst5|e~7_combout\);

-- Location: LCCOMB_X37_Y28_N8
\inst5|dataOut[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[7]~2_combout\ = (!\inst5|state.init4~q\ & (!\inst5|state.init3~q\ & (!\inst5|state.init2~q\ & !\inst5|state.init1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init4~q\,
	datab => \inst5|state.init3~q\,
	datac => \inst5|state.init2~q\,
	datad => \inst5|state.init1~q\,
	combout => \inst5|dataOut[7]~2_combout\);

-- Location: LCCOMB_X36_Y31_N0
\inst5|dataOut[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[7]~3_combout\ = (!\inst5|state.init5~q\ & (\inst5|dataOut[7]~2_combout\ & (!\inst5|state.init6~q\ & \inst5|state.init0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init5~q\,
	datab => \inst5|dataOut[7]~2_combout\,
	datac => \inst5|state.init6~q\,
	datad => \inst5|state.init0~q\,
	combout => \inst5|dataOut[7]~3_combout\);

-- Location: LCCOMB_X37_Y28_N22
\inst5|dataOut[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[7]~1_combout\ = (!\inst5|state.createChar1~q\ & !\inst5|state.init7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.createChar1~q\,
	datac => \inst5|state.init7~q\,
	combout => \inst5|dataOut[7]~1_combout\);

-- Location: LCCOMB_X36_Y31_N14
\inst5|dataOut[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[7]~4_combout\ = (\inst5|state.sendingAddress~q\ & (\inst5|dataOut[7]~3_combout\ & (!\inst5|state.createChar2~q\ & \inst5|dataOut[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|dataOut[7]~3_combout\,
	datac => \inst5|state.createChar2~q\,
	datad => \inst5|dataOut[7]~1_combout\,
	combout => \inst5|dataOut[7]~4_combout\);

-- Location: LCCOMB_X35_Y31_N14
\inst5|dataOut[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~5_combout\ = (!\inst5|charCreationCounter\(3) & (!\inst5|process_1~0_combout\ & \inst5|Equal8~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|charCreationCounter\(3),
	datab => \inst5|process_1~0_combout\,
	datad => \inst5|Equal8~9_combout\,
	combout => \inst5|dataOut[6]~5_combout\);

-- Location: LCCOMB_X36_Y29_N0
\inst5|dataOut[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~6_combout\ = (!\inst5|state.createChar4~q\ & (\inst5|dataOut[4]~0_combout\ & (!\inst5|state.createChar3~q\ & !\inst5|state.init7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar4~q\,
	datab => \inst5|dataOut[4]~0_combout\,
	datac => \inst5|state.createChar3~q\,
	datad => \inst5|state.init7~q\,
	combout => \inst5|dataOut[0]~6_combout\);

-- Location: LCCOMB_X36_Y31_N24
\inst5|dataOut[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~7_combout\ = (!\inst5|state.createChar5~q\ & (\inst5|dataOut[7]~3_combout\ & \inst5|dataOut[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar5~q\,
	datab => \inst5|dataOut[7]~3_combout\,
	datad => \inst5|dataOut[0]~6_combout\,
	combout => \inst5|dataOut[1]~7_combout\);

-- Location: LCCOMB_X35_Y31_N24
\inst5|dataOut[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~9_combout\ = (\inst5|state.init0~q\ & (!\inst5|state.init5~q\ & (\inst5|dataOut[7]~2_combout\ & !\inst5|dataOut[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init0~q\,
	datab => \inst5|state.init5~q\,
	datac => \inst5|dataOut[7]~2_combout\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[6]~9_combout\);

-- Location: FF_X35_Y31_N15
\inst4|lcd_posY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lineCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posY\(0));

-- Location: FF_X35_Y31_N9
\inst5|addressStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_posY\(0),
	sload => VCC,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(6));

-- Location: LCCOMB_X30_Y26_N2
\inst4|display_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[0]~31_combout\ = \inst4|display_counter\(0) $ (VCC)
-- \inst4|display_counter[0]~32\ = CARRY(\inst4|display_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(0),
	datad => VCC,
	combout => \inst4|display_counter[0]~31_combout\,
	cout => \inst4|display_counter[0]~32\);

-- Location: LCCOMB_X31_Y25_N0
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

-- Location: FF_X30_Y26_N3
\inst4|display_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[0]~31_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(0));

-- Location: LCCOMB_X30_Y26_N4
\inst4|display_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[1]~33_combout\ = (\inst4|display_counter\(1) & (!\inst4|display_counter[0]~32\)) # (!\inst4|display_counter\(1) & ((\inst4|display_counter[0]~32\) # (GND)))
-- \inst4|display_counter[1]~34\ = CARRY((!\inst4|display_counter[0]~32\) # (!\inst4|display_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(1),
	datad => VCC,
	cin => \inst4|display_counter[0]~32\,
	combout => \inst4|display_counter[1]~33_combout\,
	cout => \inst4|display_counter[1]~34\);

-- Location: FF_X30_Y26_N5
\inst4|display_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[1]~33_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(1));

-- Location: LCCOMB_X30_Y26_N6
\inst4|display_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[2]~35_combout\ = (\inst4|display_counter\(2) & (\inst4|display_counter[1]~34\ $ (GND))) # (!\inst4|display_counter\(2) & (!\inst4|display_counter[1]~34\ & VCC))
-- \inst4|display_counter[2]~36\ = CARRY((\inst4|display_counter\(2) & !\inst4|display_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(2),
	datad => VCC,
	cin => \inst4|display_counter[1]~34\,
	combout => \inst4|display_counter[2]~35_combout\,
	cout => \inst4|display_counter[2]~36\);

-- Location: FF_X30_Y26_N7
\inst4|display_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[2]~35_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(2));

-- Location: LCCOMB_X30_Y26_N8
\inst4|display_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[3]~37_combout\ = (\inst4|display_counter\(3) & (!\inst4|display_counter[2]~36\)) # (!\inst4|display_counter\(3) & ((\inst4|display_counter[2]~36\) # (GND)))
-- \inst4|display_counter[3]~38\ = CARRY((!\inst4|display_counter[2]~36\) # (!\inst4|display_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(3),
	datad => VCC,
	cin => \inst4|display_counter[2]~36\,
	combout => \inst4|display_counter[3]~37_combout\,
	cout => \inst4|display_counter[3]~38\);

-- Location: FF_X30_Y26_N9
\inst4|display_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[3]~37_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(3));

-- Location: LCCOMB_X30_Y26_N10
\inst4|display_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[4]~39_combout\ = (\inst4|display_counter\(4) & (\inst4|display_counter[3]~38\ $ (GND))) # (!\inst4|display_counter\(4) & (!\inst4|display_counter[3]~38\ & VCC))
-- \inst4|display_counter[4]~40\ = CARRY((\inst4|display_counter\(4) & !\inst4|display_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(4),
	datad => VCC,
	cin => \inst4|display_counter[3]~38\,
	combout => \inst4|display_counter[4]~39_combout\,
	cout => \inst4|display_counter[4]~40\);

-- Location: FF_X30_Y26_N11
\inst4|display_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[4]~39_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(4));

-- Location: LCCOMB_X30_Y26_N12
\inst4|display_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[5]~41_combout\ = (\inst4|display_counter\(5) & (!\inst4|display_counter[4]~40\)) # (!\inst4|display_counter\(5) & ((\inst4|display_counter[4]~40\) # (GND)))
-- \inst4|display_counter[5]~42\ = CARRY((!\inst4|display_counter[4]~40\) # (!\inst4|display_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(5),
	datad => VCC,
	cin => \inst4|display_counter[4]~40\,
	combout => \inst4|display_counter[5]~41_combout\,
	cout => \inst4|display_counter[5]~42\);

-- Location: FF_X30_Y26_N13
\inst4|display_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[5]~41_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(5));

-- Location: LCCOMB_X30_Y26_N14
\inst4|display_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[6]~43_combout\ = (\inst4|display_counter\(6) & (\inst4|display_counter[5]~42\ $ (GND))) # (!\inst4|display_counter\(6) & (!\inst4|display_counter[5]~42\ & VCC))
-- \inst4|display_counter[6]~44\ = CARRY((\inst4|display_counter\(6) & !\inst4|display_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(6),
	datad => VCC,
	cin => \inst4|display_counter[5]~42\,
	combout => \inst4|display_counter[6]~43_combout\,
	cout => \inst4|display_counter[6]~44\);

-- Location: FF_X30_Y26_N15
\inst4|display_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[6]~43_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(6));

-- Location: LCCOMB_X30_Y26_N16
\inst4|display_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[7]~45_combout\ = (\inst4|display_counter\(7) & (!\inst4|display_counter[6]~44\)) # (!\inst4|display_counter\(7) & ((\inst4|display_counter[6]~44\) # (GND)))
-- \inst4|display_counter[7]~46\ = CARRY((!\inst4|display_counter[6]~44\) # (!\inst4|display_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(7),
	datad => VCC,
	cin => \inst4|display_counter[6]~44\,
	combout => \inst4|display_counter[7]~45_combout\,
	cout => \inst4|display_counter[7]~46\);

-- Location: FF_X30_Y26_N17
\inst4|display_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[7]~45_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(7));

-- Location: LCCOMB_X30_Y26_N18
\inst4|display_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[8]~47_combout\ = (\inst4|display_counter\(8) & (\inst4|display_counter[7]~46\ $ (GND))) # (!\inst4|display_counter\(8) & (!\inst4|display_counter[7]~46\ & VCC))
-- \inst4|display_counter[8]~48\ = CARRY((\inst4|display_counter\(8) & !\inst4|display_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(8),
	datad => VCC,
	cin => \inst4|display_counter[7]~46\,
	combout => \inst4|display_counter[8]~47_combout\,
	cout => \inst4|display_counter[8]~48\);

-- Location: FF_X30_Y26_N19
\inst4|display_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[8]~47_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(8));

-- Location: LCCOMB_X30_Y26_N20
\inst4|display_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[9]~49_combout\ = (\inst4|display_counter\(9) & (!\inst4|display_counter[8]~48\)) # (!\inst4|display_counter\(9) & ((\inst4|display_counter[8]~48\) # (GND)))
-- \inst4|display_counter[9]~50\ = CARRY((!\inst4|display_counter[8]~48\) # (!\inst4|display_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(9),
	datad => VCC,
	cin => \inst4|display_counter[8]~48\,
	combout => \inst4|display_counter[9]~49_combout\,
	cout => \inst4|display_counter[9]~50\);

-- Location: FF_X30_Y26_N21
\inst4|display_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[9]~49_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(9));

-- Location: LCCOMB_X30_Y26_N22
\inst4|display_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[10]~51_combout\ = (\inst4|display_counter\(10) & (\inst4|display_counter[9]~50\ $ (GND))) # (!\inst4|display_counter\(10) & (!\inst4|display_counter[9]~50\ & VCC))
-- \inst4|display_counter[10]~52\ = CARRY((\inst4|display_counter\(10) & !\inst4|display_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(10),
	datad => VCC,
	cin => \inst4|display_counter[9]~50\,
	combout => \inst4|display_counter[10]~51_combout\,
	cout => \inst4|display_counter[10]~52\);

-- Location: FF_X30_Y26_N23
\inst4|display_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[10]~51_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(10));

-- Location: LCCOMB_X30_Y26_N24
\inst4|display_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[11]~53_combout\ = (\inst4|display_counter\(11) & (!\inst4|display_counter[10]~52\)) # (!\inst4|display_counter\(11) & ((\inst4|display_counter[10]~52\) # (GND)))
-- \inst4|display_counter[11]~54\ = CARRY((!\inst4|display_counter[10]~52\) # (!\inst4|display_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(11),
	datad => VCC,
	cin => \inst4|display_counter[10]~52\,
	combout => \inst4|display_counter[11]~53_combout\,
	cout => \inst4|display_counter[11]~54\);

-- Location: FF_X30_Y26_N25
\inst4|display_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[11]~53_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(11));

-- Location: LCCOMB_X30_Y26_N26
\inst4|display_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[12]~55_combout\ = (\inst4|display_counter\(12) & (\inst4|display_counter[11]~54\ $ (GND))) # (!\inst4|display_counter\(12) & (!\inst4|display_counter[11]~54\ & VCC))
-- \inst4|display_counter[12]~56\ = CARRY((\inst4|display_counter\(12) & !\inst4|display_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(12),
	datad => VCC,
	cin => \inst4|display_counter[11]~54\,
	combout => \inst4|display_counter[12]~55_combout\,
	cout => \inst4|display_counter[12]~56\);

-- Location: FF_X30_Y26_N27
\inst4|display_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[12]~55_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(12));

-- Location: LCCOMB_X30_Y26_N28
\inst4|display_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[13]~57_combout\ = (\inst4|display_counter\(13) & (!\inst4|display_counter[12]~56\)) # (!\inst4|display_counter\(13) & ((\inst4|display_counter[12]~56\) # (GND)))
-- \inst4|display_counter[13]~58\ = CARRY((!\inst4|display_counter[12]~56\) # (!\inst4|display_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(13),
	datad => VCC,
	cin => \inst4|display_counter[12]~56\,
	combout => \inst4|display_counter[13]~57_combout\,
	cout => \inst4|display_counter[13]~58\);

-- Location: FF_X30_Y26_N29
\inst4|display_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[13]~57_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(13));

-- Location: LCCOMB_X30_Y26_N30
\inst4|display_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[14]~59_combout\ = (\inst4|display_counter\(14) & (\inst4|display_counter[13]~58\ $ (GND))) # (!\inst4|display_counter\(14) & (!\inst4|display_counter[13]~58\ & VCC))
-- \inst4|display_counter[14]~60\ = CARRY((\inst4|display_counter\(14) & !\inst4|display_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(14),
	datad => VCC,
	cin => \inst4|display_counter[13]~58\,
	combout => \inst4|display_counter[14]~59_combout\,
	cout => \inst4|display_counter[14]~60\);

-- Location: FF_X30_Y26_N31
\inst4|display_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[14]~59_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(14));

-- Location: LCCOMB_X30_Y25_N0
\inst4|display_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[15]~61_combout\ = (\inst4|display_counter\(15) & (!\inst4|display_counter[14]~60\)) # (!\inst4|display_counter\(15) & ((\inst4|display_counter[14]~60\) # (GND)))
-- \inst4|display_counter[15]~62\ = CARRY((!\inst4|display_counter[14]~60\) # (!\inst4|display_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(15),
	datad => VCC,
	cin => \inst4|display_counter[14]~60\,
	combout => \inst4|display_counter[15]~61_combout\,
	cout => \inst4|display_counter[15]~62\);

-- Location: FF_X30_Y25_N1
\inst4|display_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[15]~61_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(15));

-- Location: LCCOMB_X30_Y25_N2
\inst4|display_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[16]~63_combout\ = (\inst4|display_counter\(16) & (\inst4|display_counter[15]~62\ $ (GND))) # (!\inst4|display_counter\(16) & (!\inst4|display_counter[15]~62\ & VCC))
-- \inst4|display_counter[16]~64\ = CARRY((\inst4|display_counter\(16) & !\inst4|display_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(16),
	datad => VCC,
	cin => \inst4|display_counter[15]~62\,
	combout => \inst4|display_counter[16]~63_combout\,
	cout => \inst4|display_counter[16]~64\);

-- Location: FF_X30_Y25_N3
\inst4|display_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[16]~63_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(16));

-- Location: LCCOMB_X30_Y25_N4
\inst4|display_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[17]~65_combout\ = (\inst4|display_counter\(17) & (!\inst4|display_counter[16]~64\)) # (!\inst4|display_counter\(17) & ((\inst4|display_counter[16]~64\) # (GND)))
-- \inst4|display_counter[17]~66\ = CARRY((!\inst4|display_counter[16]~64\) # (!\inst4|display_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(17),
	datad => VCC,
	cin => \inst4|display_counter[16]~64\,
	combout => \inst4|display_counter[17]~65_combout\,
	cout => \inst4|display_counter[17]~66\);

-- Location: FF_X30_Y25_N5
\inst4|display_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[17]~65_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(17));

-- Location: LCCOMB_X30_Y25_N6
\inst4|display_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[18]~67_combout\ = (\inst4|display_counter\(18) & (\inst4|display_counter[17]~66\ $ (GND))) # (!\inst4|display_counter\(18) & (!\inst4|display_counter[17]~66\ & VCC))
-- \inst4|display_counter[18]~68\ = CARRY((\inst4|display_counter\(18) & !\inst4|display_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(18),
	datad => VCC,
	cin => \inst4|display_counter[17]~66\,
	combout => \inst4|display_counter[18]~67_combout\,
	cout => \inst4|display_counter[18]~68\);

-- Location: FF_X30_Y25_N7
\inst4|display_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[18]~67_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(18));

-- Location: LCCOMB_X30_Y25_N8
\inst4|display_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[19]~69_combout\ = (\inst4|display_counter\(19) & (!\inst4|display_counter[18]~68\)) # (!\inst4|display_counter\(19) & ((\inst4|display_counter[18]~68\) # (GND)))
-- \inst4|display_counter[19]~70\ = CARRY((!\inst4|display_counter[18]~68\) # (!\inst4|display_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(19),
	datad => VCC,
	cin => \inst4|display_counter[18]~68\,
	combout => \inst4|display_counter[19]~69_combout\,
	cout => \inst4|display_counter[19]~70\);

-- Location: FF_X30_Y25_N9
\inst4|display_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[19]~69_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(19));

-- Location: LCCOMB_X30_Y25_N10
\inst4|display_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[20]~71_combout\ = (\inst4|display_counter\(20) & (\inst4|display_counter[19]~70\ $ (GND))) # (!\inst4|display_counter\(20) & (!\inst4|display_counter[19]~70\ & VCC))
-- \inst4|display_counter[20]~72\ = CARRY((\inst4|display_counter\(20) & !\inst4|display_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(20),
	datad => VCC,
	cin => \inst4|display_counter[19]~70\,
	combout => \inst4|display_counter[20]~71_combout\,
	cout => \inst4|display_counter[20]~72\);

-- Location: FF_X30_Y25_N11
\inst4|display_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[20]~71_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(20));

-- Location: LCCOMB_X30_Y25_N12
\inst4|display_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[21]~73_combout\ = (\inst4|display_counter\(21) & (!\inst4|display_counter[20]~72\)) # (!\inst4|display_counter\(21) & ((\inst4|display_counter[20]~72\) # (GND)))
-- \inst4|display_counter[21]~74\ = CARRY((!\inst4|display_counter[20]~72\) # (!\inst4|display_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(21),
	datad => VCC,
	cin => \inst4|display_counter[20]~72\,
	combout => \inst4|display_counter[21]~73_combout\,
	cout => \inst4|display_counter[21]~74\);

-- Location: FF_X30_Y25_N13
\inst4|display_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[21]~73_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(21));

-- Location: LCCOMB_X30_Y25_N14
\inst4|display_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[22]~75_combout\ = (\inst4|display_counter\(22) & (\inst4|display_counter[21]~74\ $ (GND))) # (!\inst4|display_counter\(22) & (!\inst4|display_counter[21]~74\ & VCC))
-- \inst4|display_counter[22]~76\ = CARRY((\inst4|display_counter\(22) & !\inst4|display_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(22),
	datad => VCC,
	cin => \inst4|display_counter[21]~74\,
	combout => \inst4|display_counter[22]~75_combout\,
	cout => \inst4|display_counter[22]~76\);

-- Location: FF_X30_Y25_N15
\inst4|display_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[22]~75_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(22));

-- Location: LCCOMB_X30_Y25_N16
\inst4|display_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[23]~77_combout\ = (\inst4|display_counter\(23) & (!\inst4|display_counter[22]~76\)) # (!\inst4|display_counter\(23) & ((\inst4|display_counter[22]~76\) # (GND)))
-- \inst4|display_counter[23]~78\ = CARRY((!\inst4|display_counter[22]~76\) # (!\inst4|display_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(23),
	datad => VCC,
	cin => \inst4|display_counter[22]~76\,
	combout => \inst4|display_counter[23]~77_combout\,
	cout => \inst4|display_counter[23]~78\);

-- Location: FF_X30_Y25_N17
\inst4|display_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[23]~77_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(23));

-- Location: LCCOMB_X30_Y25_N18
\inst4|display_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[24]~79_combout\ = (\inst4|display_counter\(24) & (\inst4|display_counter[23]~78\ $ (GND))) # (!\inst4|display_counter\(24) & (!\inst4|display_counter[23]~78\ & VCC))
-- \inst4|display_counter[24]~80\ = CARRY((\inst4|display_counter\(24) & !\inst4|display_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(24),
	datad => VCC,
	cin => \inst4|display_counter[23]~78\,
	combout => \inst4|display_counter[24]~79_combout\,
	cout => \inst4|display_counter[24]~80\);

-- Location: FF_X30_Y25_N19
\inst4|display_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[24]~79_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(24));

-- Location: LCCOMB_X30_Y25_N20
\inst4|display_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[25]~81_combout\ = (\inst4|display_counter\(25) & (!\inst4|display_counter[24]~80\)) # (!\inst4|display_counter\(25) & ((\inst4|display_counter[24]~80\) # (GND)))
-- \inst4|display_counter[25]~82\ = CARRY((!\inst4|display_counter[24]~80\) # (!\inst4|display_counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(25),
	datad => VCC,
	cin => \inst4|display_counter[24]~80\,
	combout => \inst4|display_counter[25]~81_combout\,
	cout => \inst4|display_counter[25]~82\);

-- Location: FF_X30_Y25_N21
\inst4|display_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[25]~81_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(25));

-- Location: LCCOMB_X30_Y25_N22
\inst4|display_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[26]~83_combout\ = (\inst4|display_counter\(26) & (\inst4|display_counter[25]~82\ $ (GND))) # (!\inst4|display_counter\(26) & (!\inst4|display_counter[25]~82\ & VCC))
-- \inst4|display_counter[26]~84\ = CARRY((\inst4|display_counter\(26) & !\inst4|display_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(26),
	datad => VCC,
	cin => \inst4|display_counter[25]~82\,
	combout => \inst4|display_counter[26]~83_combout\,
	cout => \inst4|display_counter[26]~84\);

-- Location: FF_X30_Y25_N23
\inst4|display_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[26]~83_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(26));

-- Location: LCCOMB_X30_Y25_N24
\inst4|display_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[27]~85_combout\ = (\inst4|display_counter\(27) & (!\inst4|display_counter[26]~84\)) # (!\inst4|display_counter\(27) & ((\inst4|display_counter[26]~84\) # (GND)))
-- \inst4|display_counter[27]~86\ = CARRY((!\inst4|display_counter[26]~84\) # (!\inst4|display_counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(27),
	datad => VCC,
	cin => \inst4|display_counter[26]~84\,
	combout => \inst4|display_counter[27]~85_combout\,
	cout => \inst4|display_counter[27]~86\);

-- Location: FF_X30_Y25_N25
\inst4|display_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[27]~85_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(27));

-- Location: LCCOMB_X30_Y25_N26
\inst4|display_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[28]~87_combout\ = (\inst4|display_counter\(28) & (\inst4|display_counter[27]~86\ $ (GND))) # (!\inst4|display_counter\(28) & (!\inst4|display_counter[27]~86\ & VCC))
-- \inst4|display_counter[28]~88\ = CARRY((\inst4|display_counter\(28) & !\inst4|display_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(28),
	datad => VCC,
	cin => \inst4|display_counter[27]~86\,
	combout => \inst4|display_counter[28]~87_combout\,
	cout => \inst4|display_counter[28]~88\);

-- Location: FF_X30_Y25_N27
\inst4|display_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[28]~87_combout\,
	asdata => VCC,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(28));

-- Location: LCCOMB_X30_Y25_N28
\inst4|display_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[29]~89_combout\ = (\inst4|display_counter\(29) & (!\inst4|display_counter[28]~88\)) # (!\inst4|display_counter\(29) & ((\inst4|display_counter[28]~88\) # (GND)))
-- \inst4|display_counter[29]~90\ = CARRY((!\inst4|display_counter[28]~88\) # (!\inst4|display_counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(29),
	datad => VCC,
	cin => \inst4|display_counter[28]~88\,
	combout => \inst4|display_counter[29]~89_combout\,
	cout => \inst4|display_counter[29]~90\);

-- Location: FF_X30_Y25_N29
\inst4|display_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[29]~89_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(29));

-- Location: LCCOMB_X30_Y25_N30
\inst4|display_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_counter[30]~91_combout\ = \inst4|display_counter\(30) $ (!\inst4|display_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(30),
	cin => \inst4|display_counter[29]~90\,
	combout => \inst4|display_counter[30]~91_combout\);

-- Location: FF_X30_Y25_N31
\inst4|display_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_counter[30]~91_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LessThan5~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_counter\(30));

-- Location: LCCOMB_X31_Y25_N22
\inst4|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~0_combout\ = (!\inst4|display_counter\(29) & (!\inst4|display_counter\(26) & (!\inst4|display_counter\(28) & !\inst4|display_counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(29),
	datab => \inst4|display_counter\(26),
	datac => \inst4|display_counter\(28),
	datad => \inst4|display_counter\(27),
	combout => \inst4|LessThan5~0_combout\);

-- Location: LCCOMB_X31_Y25_N30
\inst4|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~5_combout\ = (((!\inst4|display_counter\(21)) # (!\inst4|display_counter\(19))) # (!\inst4|display_counter\(22))) # (!\inst4|display_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(20),
	datab => \inst4|display_counter\(22),
	datac => \inst4|display_counter\(19),
	datad => \inst4|display_counter\(21),
	combout => \inst4|LessThan5~5_combout\);

-- Location: LCCOMB_X30_Y26_N0
\inst4|LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~2_combout\ = (!\inst4|display_counter\(10) & (!\inst4|display_counter\(8) & (!\inst4|display_counter\(7) & !\inst4|display_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(10),
	datab => \inst4|display_counter\(8),
	datac => \inst4|display_counter\(7),
	datad => \inst4|display_counter\(9),
	combout => \inst4|LessThan5~2_combout\);

-- Location: LCCOMB_X31_Y25_N28
\inst4|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~1_combout\ = (((!\inst4|display_counter\(14)) # (!\inst4|display_counter\(13))) # (!\inst4|display_counter\(12))) # (!\inst4|display_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(15),
	datab => \inst4|display_counter\(12),
	datac => \inst4|display_counter\(13),
	datad => \inst4|display_counter\(14),
	combout => \inst4|LessThan5~1_combout\);

-- Location: LCCOMB_X31_Y25_N10
\inst4|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~3_combout\ = (!\inst4|display_counter\(16) & ((\inst4|LessThan5~1_combout\) # ((!\inst4|display_counter\(11) & \inst4|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(16),
	datab => \inst4|display_counter\(11),
	datac => \inst4|LessThan5~2_combout\,
	datad => \inst4|LessThan5~1_combout\,
	combout => \inst4|LessThan5~3_combout\);

-- Location: LCCOMB_X31_Y25_N12
\inst4|LessThan5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~4_combout\ = (!\inst4|display_counter\(18) & ((\inst4|LessThan5~3_combout\) # (!\inst4|display_counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|display_counter\(18),
	datac => \inst4|display_counter\(17),
	datad => \inst4|LessThan5~3_combout\,
	combout => \inst4|LessThan5~4_combout\);

-- Location: LCCOMB_X31_Y25_N24
\inst4|LessThan5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~6_combout\ = (!\inst4|display_counter\(24) & (((\inst4|LessThan5~5_combout\) # (\inst4|LessThan5~4_combout\)) # (!\inst4|display_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(23),
	datab => \inst4|display_counter\(24),
	datac => \inst4|LessThan5~5_combout\,
	datad => \inst4|LessThan5~4_combout\,
	combout => \inst4|LessThan5~6_combout\);

-- Location: LCCOMB_X31_Y25_N6
\inst4|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~7_combout\ = (\inst4|display_counter\(30)) # (((\inst4|display_counter\(25) & !\inst4|LessThan5~6_combout\)) # (!\inst4|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_counter\(25),
	datab => \inst4|display_counter\(30),
	datac => \inst4|LessThan5~0_combout\,
	datad => \inst4|LessThan5~6_combout\,
	combout => \inst4|LessThan5~7_combout\);

-- Location: LCCOMB_X31_Y25_N8
\inst4|display_state~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|display_state~feeder_combout\ = \inst4|LessThan5~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|LessThan5~7_combout\,
	combout => \inst4|display_state~feeder_combout\);

-- Location: FF_X31_Y25_N9
\inst4|display_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|display_state~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|display_state~q\);

-- Location: LCCOMB_X40_Y27_N0
\inst4|lcd_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~38_combout\ = (!\inst4|lineCount\(0) & !\inst4|lineCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lineCount\(0),
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~38_combout\);

-- Location: LCCOMB_X41_Y29_N20
\inst4|lcd_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~154_combout\ = (\inst4|charCount\(4) & (!\inst4|charCount\(3) & ((!\inst4|charCount\(1)) # (!\inst4|charCount\(0))))) # (!\inst4|charCount\(4) & ((\inst4|charCount\(1)) # (\inst4|charCount\(0) $ (\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(0),
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~154_combout\);

-- Location: LCCOMB_X41_Y29_N22
\inst4|lcd_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~155_combout\ = (\inst4|charCount\(2) & (!\inst4|charCount\(4))) # (!\inst4|charCount\(2) & (\inst4|lcd_data~154_combout\ & ((!\inst4|charCount\(3)) # (!\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(3),
	datad => \inst4|lcd_data~154_combout\,
	combout => \inst4|lcd_data~155_combout\);

-- Location: LCCOMB_X39_Y29_N8
\inst4|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal23~0_combout\ = (!\inst4|charCount\(2) & (!\inst4|charCount\(3) & !\inst4|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(4),
	combout => \inst4|Equal23~0_combout\);

-- Location: LCCOMB_X38_Y29_N18
\inst4|Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal23~1_combout\ = (!\inst4|charCount\(1) & (\inst4|Equal23~0_combout\ & !\inst4|charCount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datac => \inst4|Equal23~0_combout\,
	datad => \inst4|charCount\(0),
	combout => \inst4|Equal23~1_combout\);

-- Location: LCCOMB_X38_Y29_N8
\inst4|lcd_data~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~33_combout\ = (\inst4|display_state~q\ & (\inst4|Equal23~1_combout\ & ((!\inst4|lineCount\(0)) # (!\inst4|lineCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lineCount\(0),
	datac => \inst4|display_state~q\,
	datad => \inst4|Equal23~1_combout\,
	combout => \inst4|lcd_data~33_combout\);

-- Location: LCCOMB_X40_Y29_N20
\inst4|lcd_data~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~158_combout\ = (\inst4|charCount\(1) & ((\inst4|charCount\(0) & ((!\inst4|charCount\(4)))) # (!\inst4|charCount\(0) & (!\inst4|charCount\(2))))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(2) & ((\inst4|charCount\(0)) # 
-- (\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~158_combout\);

-- Location: LCCOMB_X40_Y29_N30
\inst4|lcd_data~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~159_combout\ = (\inst4|charCount\(3) & (!\inst4|charCount\(4) & ((\inst4|charCount\(0)) # (!\inst4|lcd_data~158_combout\)))) # (!\inst4|charCount\(3) & (((\inst4|lcd_data~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|lcd_data~158_combout\,
	combout => \inst4|lcd_data~159_combout\);

-- Location: LCCOMB_X40_Y28_N12
\inst4|lcd_data~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~35_combout\ = (\inst4|lineCount\(0) & ((\inst4|lineCount\(1)) # ((\inst4|lcd_data~159_combout\)))) # (!\inst4|lineCount\(0) & (!\inst4|lineCount\(1) & ((\inst4|lcd_data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data~159_combout\,
	datad => \inst4|lcd_data\(6),
	combout => \inst4|lcd_data~35_combout\);

-- Location: LCCOMB_X40_Y28_N22
\inst4|lcd_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~34_combout\ = (\inst4|charCount\(1) & (\inst4|charCount\(3))) # (!\inst4|charCount\(1) & ((\inst4|charCount\(3) & ((\inst4|charCount\(2)))) # (!\inst4|charCount\(3) & (\inst4|charCount\(0) & !\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~34_combout\);

-- Location: LCCOMB_X40_Y28_N14
\inst4|lcd_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~36_combout\ = (\inst4|charCount\(0) & (!\inst4|charCount\(1) & (!\inst4|charCount\(3) & !\inst4|charCount\(2)))) # (!\inst4|charCount\(0) & (\inst4|charCount\(3) & (\inst4|charCount\(1) $ (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~36_combout\);

-- Location: LCCOMB_X36_Y29_N10
\inst4|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal17~0_combout\ = (!\inst4|charCount\(3) & (!\inst4|charCount\(2) & \inst4|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(4),
	combout => \inst4|Equal17~0_combout\);

-- Location: LCCOMB_X40_Y29_N0
\inst4|lcd_data~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~37_combout\ = ((\inst4|charCount\(0) & \inst4|charCount\(1))) # (!\inst4|Equal17~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~37_combout\);

-- Location: LCCOMB_X40_Y28_N0
\inst4|lcd_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~156_combout\ = (\inst4|lcd_data~35_combout\ & ((\inst4|charCount\(4) & ((!\inst4|lcd_data~37_combout\))) # (!\inst4|charCount\(4) & (!\inst4|lcd_data~36_combout\)))) # (!\inst4|lcd_data~35_combout\ & (((!\inst4|charCount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~35_combout\,
	datab => \inst4|lcd_data~36_combout\,
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~37_combout\,
	combout => \inst4|lcd_data~156_combout\);

-- Location: LCCOMB_X40_Y28_N18
\inst4|lcd_data~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~157_combout\ = (\inst4|lineCount\(1) & (\inst4|lcd_data~156_combout\ & ((\inst4|lcd_data~35_combout\) # (!\inst4|lcd_data~34_combout\)))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~35_combout\,
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data~34_combout\,
	datad => \inst4|lcd_data~156_combout\,
	combout => \inst4|lcd_data~157_combout\);

-- Location: LCCOMB_X40_Y28_N28
\inst4|lcd_data~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~39_combout\ = (\inst4|lcd_data~33_combout\) # ((!\inst4|display_state~q\ & (!\inst4|lcd_data~38_combout\ & \inst4|lcd_data~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~38_combout\,
	datac => \inst4|lcd_data~33_combout\,
	datad => \inst4|lcd_data~157_combout\,
	combout => \inst4|lcd_data~39_combout\);

-- Location: LCCOMB_X40_Y28_N16
\inst4|lcd_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~40_combout\ = (\inst4|lcd_data~39_combout\) # ((!\inst4|display_state~q\ & (\inst4|lcd_data~38_combout\ & \inst4|lcd_data~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~38_combout\,
	datac => \inst4|lcd_data~155_combout\,
	datad => \inst4|lcd_data~39_combout\,
	combout => \inst4|lcd_data~40_combout\);

-- Location: FF_X40_Y28_N17
\inst4|lcd_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(6));

-- Location: LCCOMB_X35_Y31_N22
\inst5|dataStorage[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[6]~0_combout\ = !\inst4|lcd_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_data\(6),
	combout => \inst5|dataStorage[6]~0_combout\);

-- Location: FF_X35_Y31_N23
\inst5|dataStorage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[6]~0_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(6));

-- Location: LCCOMB_X35_Y31_N8
\inst5|dataOut[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~8_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(6))))) # (!\inst5|state.sendingAddress~q\ & (\inst5|state.sendingData~q\ & ((!\inst5|dataStorage\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|state.sendingData~q\,
	datac => \inst5|addressStorage\(6),
	datad => \inst5|dataStorage\(6),
	combout => \inst5|dataOut[6]~8_combout\);

-- Location: LCCOMB_X35_Y31_N10
\inst5|dataOut[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[6]~10_combout\ = (\inst5|dataOut[6]~5_combout\ & ((\inst5|dataOut[6]~9_combout\) # ((\inst5|dataOut[6]~8_combout\ & \inst5|dataOut[1]~7_combout\)))) # (!\inst5|dataOut[6]~5_combout\ & (((\inst5|dataOut[6]~8_combout\ & 
-- \inst5|dataOut[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[6]~5_combout\,
	datab => \inst5|dataOut[6]~9_combout\,
	datac => \inst5|dataOut[6]~8_combout\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[6]~10_combout\);

-- Location: LCCOMB_X36_Y27_N10
\inst4|lcd_posX[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posX[3]~feeder_combout\ = \inst4|charCount\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(3),
	combout => \inst4|lcd_posX[3]~feeder_combout\);

-- Location: FF_X36_Y27_N11
\inst4|lcd_posX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posX[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(3));

-- Location: LCCOMB_X37_Y27_N28
\inst4|lcd_posY[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posY[1]~feeder_combout\ = \inst4|lineCount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_posY[1]~feeder_combout\);

-- Location: FF_X37_Y27_N29
\inst4|lcd_posY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posY[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posY\(1));

-- Location: LCCOMB_X36_Y27_N6
\inst4|lcd_posX[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posX[4]~feeder_combout\ = \inst4|charCount\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_posX[4]~feeder_combout\);

-- Location: FF_X36_Y27_N7
\inst4|lcd_posX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posX[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(4));

-- Location: FF_X36_Y27_N1
\inst4|lcd_posX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|charCount\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(2));

-- Location: LCCOMB_X36_Y27_N18
\inst5|addressStorage~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~0_combout\ = (\inst4|lcd_posY\(1) & ((\inst4|lcd_posX\(4)) # ((\inst4|lcd_posX\(3) & \inst4|lcd_posX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_posX\(3),
	datab => \inst4|lcd_posY\(1),
	datac => \inst4|lcd_posX\(4),
	datad => \inst4|lcd_posX\(2),
	combout => \inst5|addressStorage~0_combout\);

-- Location: FF_X36_Y27_N19
\inst5|addressStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~0_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(5));

-- Location: LCCOMB_X38_Y27_N4
\inst4|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~0_combout\ = \inst4|data_1_storage\(1) $ (VCC)
-- \inst4|Add3~1\ = CARRY(\inst4|data_1_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_1_storage\(1),
	datad => VCC,
	combout => \inst4|Add3~0_combout\,
	cout => \inst4|Add3~1\);

-- Location: LCCOMB_X38_Y27_N6
\inst4|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~2_combout\ = (\inst4|data_1_storage\(2) & (\inst4|Add3~1\ & VCC)) # (!\inst4|data_1_storage\(2) & (!\inst4|Add3~1\))
-- \inst4|Add3~3\ = CARRY((!\inst4|data_1_storage\(2) & !\inst4|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(2),
	datad => VCC,
	cin => \inst4|Add3~1\,
	combout => \inst4|Add3~2_combout\,
	cout => \inst4|Add3~3\);

-- Location: LCCOMB_X43_Y23_N8
\inst1|distance_counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[0]~8_combout\ = \inst1|distance_counter\(0) $ (VCC)
-- \inst1|distance_counter[0]~9\ = CARRY(\inst1|distance_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|distance_counter\(0),
	datad => VCC,
	combout => \inst1|distance_counter[0]~8_combout\,
	cout => \inst1|distance_counter[0]~9\);

-- Location: LCCOMB_X43_Y25_N12
\inst1|counter_high[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[0]~21_combout\ = \inst1|counter_high\(0) $ (VCC)
-- \inst1|counter_high[0]~22\ = CARRY(\inst1|counter_high\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(0),
	datad => VCC,
	combout => \inst1|counter_high[0]~21_combout\,
	cout => \inst1|counter_high[0]~22\);

-- Location: LCCOMB_X43_Y25_N2
\inst1|counter_high[20]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[20]~45_combout\ = (\inst1|LessThan2~6_combout\) # (!\inst1|ctrl_state.STATE_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|LessThan2~6_combout\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|counter_high[20]~45_combout\);

-- Location: LCCOMB_X43_Y23_N0
\inst1|counter_high[20]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[20]~46_combout\ = (\us_1~input_o\ & ((\inst1|ctrl_state.STATE_WAIT~q\) # (\inst1|ctrl_state.STATE_COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ctrl_state.STATE_WAIT~q\,
	datac => \us_1~input_o\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|counter_high[20]~46_combout\);

-- Location: FF_X43_Y25_N13
\inst1|counter_high[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[0]~21_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(0));

-- Location: LCCOMB_X43_Y25_N14
\inst1|counter_high[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[1]~23_combout\ = (\inst1|counter_high\(1) & (!\inst1|counter_high[0]~22\)) # (!\inst1|counter_high\(1) & ((\inst1|counter_high[0]~22\) # (GND)))
-- \inst1|counter_high[1]~24\ = CARRY((!\inst1|counter_high[0]~22\) # (!\inst1|counter_high\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(1),
	datad => VCC,
	cin => \inst1|counter_high[0]~22\,
	combout => \inst1|counter_high[1]~23_combout\,
	cout => \inst1|counter_high[1]~24\);

-- Location: FF_X43_Y25_N15
\inst1|counter_high[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[1]~23_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(1));

-- Location: LCCOMB_X43_Y25_N16
\inst1|counter_high[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[2]~25_combout\ = (\inst1|counter_high\(2) & (\inst1|counter_high[1]~24\ $ (GND))) # (!\inst1|counter_high\(2) & (!\inst1|counter_high[1]~24\ & VCC))
-- \inst1|counter_high[2]~26\ = CARRY((\inst1|counter_high\(2) & !\inst1|counter_high[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(2),
	datad => VCC,
	cin => \inst1|counter_high[1]~24\,
	combout => \inst1|counter_high[2]~25_combout\,
	cout => \inst1|counter_high[2]~26\);

-- Location: FF_X43_Y25_N17
\inst1|counter_high[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[2]~25_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(2));

-- Location: LCCOMB_X43_Y25_N18
\inst1|counter_high[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[3]~27_combout\ = (\inst1|counter_high\(3) & (!\inst1|counter_high[2]~26\)) # (!\inst1|counter_high\(3) & ((\inst1|counter_high[2]~26\) # (GND)))
-- \inst1|counter_high[3]~28\ = CARRY((!\inst1|counter_high[2]~26\) # (!\inst1|counter_high\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(3),
	datad => VCC,
	cin => \inst1|counter_high[2]~26\,
	combout => \inst1|counter_high[3]~27_combout\,
	cout => \inst1|counter_high[3]~28\);

-- Location: FF_X43_Y25_N19
\inst1|counter_high[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[3]~27_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(3));

-- Location: LCCOMB_X43_Y25_N20
\inst1|counter_high[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[4]~29_combout\ = (\inst1|counter_high\(4) & (\inst1|counter_high[3]~28\ $ (GND))) # (!\inst1|counter_high\(4) & (!\inst1|counter_high[3]~28\ & VCC))
-- \inst1|counter_high[4]~30\ = CARRY((\inst1|counter_high\(4) & !\inst1|counter_high[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(4),
	datad => VCC,
	cin => \inst1|counter_high[3]~28\,
	combout => \inst1|counter_high[4]~29_combout\,
	cout => \inst1|counter_high[4]~30\);

-- Location: FF_X43_Y25_N21
\inst1|counter_high[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[4]~29_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(4));

-- Location: LCCOMB_X43_Y25_N22
\inst1|counter_high[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[5]~31_combout\ = (\inst1|counter_high\(5) & (!\inst1|counter_high[4]~30\)) # (!\inst1|counter_high\(5) & ((\inst1|counter_high[4]~30\) # (GND)))
-- \inst1|counter_high[5]~32\ = CARRY((!\inst1|counter_high[4]~30\) # (!\inst1|counter_high\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(5),
	datad => VCC,
	cin => \inst1|counter_high[4]~30\,
	combout => \inst1|counter_high[5]~31_combout\,
	cout => \inst1|counter_high[5]~32\);

-- Location: FF_X43_Y25_N23
\inst1|counter_high[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[5]~31_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(5));

-- Location: LCCOMB_X43_Y25_N24
\inst1|counter_high[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[6]~33_combout\ = (\inst1|counter_high\(6) & (\inst1|counter_high[5]~32\ $ (GND))) # (!\inst1|counter_high\(6) & (!\inst1|counter_high[5]~32\ & VCC))
-- \inst1|counter_high[6]~34\ = CARRY((\inst1|counter_high\(6) & !\inst1|counter_high[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(6),
	datad => VCC,
	cin => \inst1|counter_high[5]~32\,
	combout => \inst1|counter_high[6]~33_combout\,
	cout => \inst1|counter_high[6]~34\);

-- Location: FF_X43_Y25_N25
\inst1|counter_high[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[6]~33_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(6));

-- Location: LCCOMB_X43_Y25_N26
\inst1|counter_high[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[7]~35_combout\ = (\inst1|counter_high\(7) & (!\inst1|counter_high[6]~34\)) # (!\inst1|counter_high\(7) & ((\inst1|counter_high[6]~34\) # (GND)))
-- \inst1|counter_high[7]~36\ = CARRY((!\inst1|counter_high[6]~34\) # (!\inst1|counter_high\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(7),
	datad => VCC,
	cin => \inst1|counter_high[6]~34\,
	combout => \inst1|counter_high[7]~35_combout\,
	cout => \inst1|counter_high[7]~36\);

-- Location: FF_X43_Y25_N27
\inst1|counter_high[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[7]~35_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(7));

-- Location: LCCOMB_X43_Y25_N28
\inst1|counter_high[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[8]~37_combout\ = (\inst1|counter_high\(8) & (\inst1|counter_high[7]~36\ $ (GND))) # (!\inst1|counter_high\(8) & (!\inst1|counter_high[7]~36\ & VCC))
-- \inst1|counter_high[8]~38\ = CARRY((\inst1|counter_high\(8) & !\inst1|counter_high[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(8),
	datad => VCC,
	cin => \inst1|counter_high[7]~36\,
	combout => \inst1|counter_high[8]~37_combout\,
	cout => \inst1|counter_high[8]~38\);

-- Location: FF_X43_Y25_N29
\inst1|counter_high[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[8]~37_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(8));

-- Location: LCCOMB_X43_Y25_N30
\inst1|counter_high[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[9]~39_combout\ = (\inst1|counter_high\(9) & (!\inst1|counter_high[8]~38\)) # (!\inst1|counter_high\(9) & ((\inst1|counter_high[8]~38\) # (GND)))
-- \inst1|counter_high[9]~40\ = CARRY((!\inst1|counter_high[8]~38\) # (!\inst1|counter_high\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(9),
	datad => VCC,
	cin => \inst1|counter_high[8]~38\,
	combout => \inst1|counter_high[9]~39_combout\,
	cout => \inst1|counter_high[9]~40\);

-- Location: FF_X43_Y25_N31
\inst1|counter_high[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[9]~39_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(9));

-- Location: LCCOMB_X43_Y24_N0
\inst1|counter_high[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[10]~41_combout\ = (\inst1|counter_high\(10) & (\inst1|counter_high[9]~40\ $ (GND))) # (!\inst1|counter_high\(10) & (!\inst1|counter_high[9]~40\ & VCC))
-- \inst1|counter_high[10]~42\ = CARRY((\inst1|counter_high\(10) & !\inst1|counter_high[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(10),
	datad => VCC,
	cin => \inst1|counter_high[9]~40\,
	combout => \inst1|counter_high[10]~41_combout\,
	cout => \inst1|counter_high[10]~42\);

-- Location: FF_X43_Y24_N1
\inst1|counter_high[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[10]~41_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(10));

-- Location: LCCOMB_X43_Y24_N2
\inst1|counter_high[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[11]~43_combout\ = (\inst1|counter_high\(11) & (!\inst1|counter_high[10]~42\)) # (!\inst1|counter_high\(11) & ((\inst1|counter_high[10]~42\) # (GND)))
-- \inst1|counter_high[11]~44\ = CARRY((!\inst1|counter_high[10]~42\) # (!\inst1|counter_high\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(11),
	datad => VCC,
	cin => \inst1|counter_high[10]~42\,
	combout => \inst1|counter_high[11]~43_combout\,
	cout => \inst1|counter_high[11]~44\);

-- Location: FF_X43_Y24_N3
\inst1|counter_high[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[11]~43_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(11));

-- Location: LCCOMB_X43_Y24_N4
\inst1|counter_high[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[12]~47_combout\ = (\inst1|counter_high\(12) & (\inst1|counter_high[11]~44\ $ (GND))) # (!\inst1|counter_high\(12) & (!\inst1|counter_high[11]~44\ & VCC))
-- \inst1|counter_high[12]~48\ = CARRY((\inst1|counter_high\(12) & !\inst1|counter_high[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(12),
	datad => VCC,
	cin => \inst1|counter_high[11]~44\,
	combout => \inst1|counter_high[12]~47_combout\,
	cout => \inst1|counter_high[12]~48\);

-- Location: FF_X43_Y24_N5
\inst1|counter_high[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[12]~47_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(12));

-- Location: LCCOMB_X43_Y24_N6
\inst1|counter_high[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[13]~49_combout\ = (\inst1|counter_high\(13) & (!\inst1|counter_high[12]~48\)) # (!\inst1|counter_high\(13) & ((\inst1|counter_high[12]~48\) # (GND)))
-- \inst1|counter_high[13]~50\ = CARRY((!\inst1|counter_high[12]~48\) # (!\inst1|counter_high\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(13),
	datad => VCC,
	cin => \inst1|counter_high[12]~48\,
	combout => \inst1|counter_high[13]~49_combout\,
	cout => \inst1|counter_high[13]~50\);

-- Location: FF_X43_Y24_N7
\inst1|counter_high[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[13]~49_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(13));

-- Location: LCCOMB_X43_Y24_N8
\inst1|counter_high[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[14]~51_combout\ = (\inst1|counter_high\(14) & (\inst1|counter_high[13]~50\ $ (GND))) # (!\inst1|counter_high\(14) & (!\inst1|counter_high[13]~50\ & VCC))
-- \inst1|counter_high[14]~52\ = CARRY((\inst1|counter_high\(14) & !\inst1|counter_high[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(14),
	datad => VCC,
	cin => \inst1|counter_high[13]~50\,
	combout => \inst1|counter_high[14]~51_combout\,
	cout => \inst1|counter_high[14]~52\);

-- Location: FF_X43_Y24_N9
\inst1|counter_high[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[14]~51_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(14));

-- Location: LCCOMB_X43_Y24_N10
\inst1|counter_high[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[15]~53_combout\ = (\inst1|counter_high\(15) & (!\inst1|counter_high[14]~52\)) # (!\inst1|counter_high\(15) & ((\inst1|counter_high[14]~52\) # (GND)))
-- \inst1|counter_high[15]~54\ = CARRY((!\inst1|counter_high[14]~52\) # (!\inst1|counter_high\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(15),
	datad => VCC,
	cin => \inst1|counter_high[14]~52\,
	combout => \inst1|counter_high[15]~53_combout\,
	cout => \inst1|counter_high[15]~54\);

-- Location: FF_X43_Y24_N11
\inst1|counter_high[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[15]~53_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(15));

-- Location: LCCOMB_X43_Y24_N12
\inst1|counter_high[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[16]~55_combout\ = (\inst1|counter_high\(16) & (\inst1|counter_high[15]~54\ $ (GND))) # (!\inst1|counter_high\(16) & (!\inst1|counter_high[15]~54\ & VCC))
-- \inst1|counter_high[16]~56\ = CARRY((\inst1|counter_high\(16) & !\inst1|counter_high[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(16),
	datad => VCC,
	cin => \inst1|counter_high[15]~54\,
	combout => \inst1|counter_high[16]~55_combout\,
	cout => \inst1|counter_high[16]~56\);

-- Location: FF_X43_Y24_N13
\inst1|counter_high[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[16]~55_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(16));

-- Location: LCCOMB_X43_Y24_N14
\inst1|counter_high[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[17]~57_combout\ = (\inst1|counter_high\(17) & (!\inst1|counter_high[16]~56\)) # (!\inst1|counter_high\(17) & ((\inst1|counter_high[16]~56\) # (GND)))
-- \inst1|counter_high[17]~58\ = CARRY((!\inst1|counter_high[16]~56\) # (!\inst1|counter_high\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(17),
	datad => VCC,
	cin => \inst1|counter_high[16]~56\,
	combout => \inst1|counter_high[17]~57_combout\,
	cout => \inst1|counter_high[17]~58\);

-- Location: FF_X43_Y24_N15
\inst1|counter_high[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[17]~57_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(17));

-- Location: LCCOMB_X43_Y24_N16
\inst1|counter_high[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[18]~59_combout\ = (\inst1|counter_high\(18) & (\inst1|counter_high[17]~58\ $ (GND))) # (!\inst1|counter_high\(18) & (!\inst1|counter_high[17]~58\ & VCC))
-- \inst1|counter_high[18]~60\ = CARRY((\inst1|counter_high\(18) & !\inst1|counter_high[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(18),
	datad => VCC,
	cin => \inst1|counter_high[17]~58\,
	combout => \inst1|counter_high[18]~59_combout\,
	cout => \inst1|counter_high[18]~60\);

-- Location: FF_X43_Y24_N17
\inst1|counter_high[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[18]~59_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(18));

-- Location: LCCOMB_X43_Y24_N18
\inst1|counter_high[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[19]~61_combout\ = (\inst1|counter_high\(19) & (!\inst1|counter_high[18]~60\)) # (!\inst1|counter_high\(19) & ((\inst1|counter_high[18]~60\) # (GND)))
-- \inst1|counter_high[19]~62\ = CARRY((!\inst1|counter_high[18]~60\) # (!\inst1|counter_high\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(19),
	datad => VCC,
	cin => \inst1|counter_high[18]~60\,
	combout => \inst1|counter_high[19]~61_combout\,
	cout => \inst1|counter_high[19]~62\);

-- Location: FF_X43_Y24_N19
\inst1|counter_high[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[19]~61_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(19));

-- Location: LCCOMB_X43_Y24_N20
\inst1|counter_high[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|counter_high[20]~63_combout\ = \inst1|counter_high[19]~62\ $ (!\inst1|counter_high\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|counter_high\(20),
	cin => \inst1|counter_high[19]~62\,
	combout => \inst1|counter_high[20]~63_combout\);

-- Location: FF_X43_Y24_N21
\inst1|counter_high[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|counter_high[20]~63_combout\,
	sclr => \inst1|counter_high[20]~45_combout\,
	ena => \inst1|counter_high[20]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|counter_high\(20));

-- Location: LCCOMB_X43_Y24_N28
\inst1|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~5_combout\ = (\inst1|counter_high\(16)) # ((\inst1|counter_high\(18)) # ((\inst1|counter_high\(17)) # (\inst1|counter_high\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(16),
	datab => \inst1|counter_high\(18),
	datac => \inst1|counter_high\(17),
	datad => \inst1|counter_high\(19),
	combout => \inst1|LessThan2~5_combout\);

-- Location: LCCOMB_X43_Y24_N26
\inst1|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~4_combout\ = (\inst1|counter_high\(13)) # ((\inst1|counter_high\(14)) # ((\inst1|counter_high\(12)) # (\inst1|counter_high\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(13),
	datab => \inst1|counter_high\(14),
	datac => \inst1|counter_high\(12),
	datad => \inst1|counter_high\(15),
	combout => \inst1|LessThan2~4_combout\);

-- Location: LCCOMB_X43_Y25_N8
\inst1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = (\inst1|counter_high\(3)) # ((\inst1|counter_high\(2) & ((\inst1|counter_high\(0)) # (\inst1|counter_high\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(0),
	datab => \inst1|counter_high\(2),
	datac => \inst1|counter_high\(1),
	datad => \inst1|counter_high\(3),
	combout => \inst1|LessThan2~0_combout\);

-- Location: LCCOMB_X43_Y25_N10
\inst1|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_combout\ = (\inst1|counter_high\(6) & ((\inst1|counter_high\(5)) # ((\inst1|counter_high\(4) & \inst1|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(5),
	datab => \inst1|counter_high\(4),
	datac => \inst1|LessThan2~0_combout\,
	datad => \inst1|counter_high\(6),
	combout => \inst1|LessThan2~1_combout\);

-- Location: LCCOMB_X43_Y25_N0
\inst1|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~2_combout\ = (\inst1|counter_high\(9) & (\inst1|counter_high\(8) & ((\inst1|counter_high\(7)) # (\inst1|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(9),
	datab => \inst1|counter_high\(8),
	datac => \inst1|counter_high\(7),
	datad => \inst1|LessThan2~1_combout\,
	combout => \inst1|LessThan2~2_combout\);

-- Location: LCCOMB_X43_Y25_N6
\inst1|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~3_combout\ = (\inst1|counter_high\(11) & ((\inst1|counter_high\(10)) # (\inst1|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter_high\(10),
	datac => \inst1|counter_high\(11),
	datad => \inst1|LessThan2~2_combout\,
	combout => \inst1|LessThan2~3_combout\);

-- Location: LCCOMB_X43_Y25_N4
\inst1|LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~6_combout\ = (\inst1|counter_high\(20)) # ((\inst1|LessThan2~5_combout\) # ((\inst1|LessThan2~4_combout\) # (\inst1|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter_high\(20),
	datab => \inst1|LessThan2~5_combout\,
	datac => \inst1|LessThan2~4_combout\,
	datad => \inst1|LessThan2~3_combout\,
	combout => \inst1|LessThan2~6_combout\);

-- Location: LCCOMB_X43_Y23_N30
\inst1|distance_counter[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[3]~18_combout\ = (\us_1~input_o\ & ((\inst1|ctrl_state.STATE_WAIT~q\) # ((\inst1|LessThan2~6_combout\ & \inst1|ctrl_state.STATE_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan2~6_combout\,
	datab => \inst1|ctrl_state.STATE_WAIT~q\,
	datac => \us_1~input_o\,
	datad => \inst1|ctrl_state.STATE_COUNT~q\,
	combout => \inst1|distance_counter[3]~18_combout\);

-- Location: FF_X43_Y23_N9
\inst1|distance_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[0]~8_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(0));

-- Location: LCCOMB_X43_Y23_N10
\inst1|distance_counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[1]~10_combout\ = (\inst1|distance_counter\(1) & (!\inst1|distance_counter[0]~9\)) # (!\inst1|distance_counter\(1) & ((\inst1|distance_counter[0]~9\) # (GND)))
-- \inst1|distance_counter[1]~11\ = CARRY((!\inst1|distance_counter[0]~9\) # (!\inst1|distance_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|distance_counter\(1),
	datad => VCC,
	cin => \inst1|distance_counter[0]~9\,
	combout => \inst1|distance_counter[1]~10_combout\,
	cout => \inst1|distance_counter[1]~11\);

-- Location: FF_X43_Y23_N11
\inst1|distance_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[1]~10_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(1));

-- Location: LCCOMB_X43_Y23_N12
\inst1|distance_counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[2]~12_combout\ = (\inst1|distance_counter\(2) & (\inst1|distance_counter[1]~11\ $ (GND))) # (!\inst1|distance_counter\(2) & (!\inst1|distance_counter[1]~11\ & VCC))
-- \inst1|distance_counter[2]~13\ = CARRY((\inst1|distance_counter\(2) & !\inst1|distance_counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|distance_counter\(2),
	datad => VCC,
	cin => \inst1|distance_counter[1]~11\,
	combout => \inst1|distance_counter[2]~12_combout\,
	cout => \inst1|distance_counter[2]~13\);

-- Location: FF_X43_Y23_N13
\inst1|distance_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[2]~12_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(2));

-- Location: LCCOMB_X43_Y27_N12
\inst1|distance[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[2]~feeder_combout\ = \inst1|distance_counter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(2),
	combout => \inst1|distance[2]~feeder_combout\);

-- Location: FF_X43_Y27_N13
\inst1|distance[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[2]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(2));

-- Location: LCCOMB_X38_Y27_N22
\inst4|data_1_storage~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~9_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(2))))) # (!\inst4|state.update~q\ & (\inst4|Add3~2_combout\ & ((\inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~2_combout\,
	datab => \inst1|distance\(2),
	datac => \inst4|state.update~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~9_combout\);

-- Location: LCCOMB_X39_Y29_N26
\inst4|lcd_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~132_combout\ = (\inst4|charCount\(1) & \inst4|charCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~132_combout\);

-- Location: LCCOMB_X38_Y25_N14
\inst4|data_3_storage~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~7_combout\ = (!\inst4|charCount[3]~15_combout\ & (\inst4|counter[5]~41_combout\ & ((\inst4|lcd_data~132_combout\) # (!\inst4|Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal23~0_combout\,
	datab => \inst4|lcd_data~132_combout\,
	datac => \inst4|charCount[3]~15_combout\,
	datad => \inst4|counter[5]~41_combout\,
	combout => \inst4|data_3_storage~7_combout\);

-- Location: LCCOMB_X38_Y27_N2
\inst4|data_1_storage~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~13_combout\ = (\inst4|state.update~q\ & ((\inst4|process_0~14_combout\) # ((\inst4|lcd_data~38_combout\ & \inst4|data_3_storage~7_combout\)))) # (!\inst4|state.update~q\ & (\inst4|lcd_data~38_combout\ & 
-- (\inst4|data_3_storage~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|lcd_data~38_combout\,
	datac => \inst4|data_3_storage~7_combout\,
	datad => \inst4|process_0~14_combout\,
	combout => \inst4|data_1_storage~13_combout\);

-- Location: FF_X38_Y27_N23
\inst4|data_1_storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~9_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(2));

-- Location: LCCOMB_X38_Y27_N8
\inst4|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~4_combout\ = (\inst4|data_1_storage\(3) & (\inst4|Add3~3\ $ (GND))) # (!\inst4|data_1_storage\(3) & (!\inst4|Add3~3\ & VCC))
-- \inst4|Add3~5\ = CARRY((\inst4|data_1_storage\(3) & !\inst4|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_1_storage\(3),
	datad => VCC,
	cin => \inst4|Add3~3\,
	combout => \inst4|Add3~4_combout\,
	cout => \inst4|Add3~5\);

-- Location: LCCOMB_X43_Y23_N14
\inst1|distance_counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[3]~14_combout\ = (\inst1|distance_counter\(3) & (!\inst1|distance_counter[2]~13\)) # (!\inst1|distance_counter\(3) & ((\inst1|distance_counter[2]~13\) # (GND)))
-- \inst1|distance_counter[3]~15\ = CARRY((!\inst1|distance_counter[2]~13\) # (!\inst1|distance_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|distance_counter\(3),
	datad => VCC,
	cin => \inst1|distance_counter[2]~13\,
	combout => \inst1|distance_counter[3]~14_combout\,
	cout => \inst1|distance_counter[3]~15\);

-- Location: FF_X43_Y23_N15
\inst1|distance_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[3]~14_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(3));

-- Location: FF_X43_Y27_N11
\inst1|distance[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst1|distance_counter\(3),
	sload => VCC,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(3));

-- Location: LCCOMB_X38_Y27_N0
\inst4|data_1_storage~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~8_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(3))))) # (!\inst4|state.update~q\ & (\inst4|LessThan1~0_combout\ & (\inst4|Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|Add3~4_combout\,
	datad => \inst1|distance\(3),
	combout => \inst4|data_1_storage~8_combout\);

-- Location: FF_X38_Y27_N1
\inst4|data_1_storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~8_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(3));

-- Location: LCCOMB_X38_Y27_N10
\inst4|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~6_combout\ = (\inst4|data_1_storage\(4) & (\inst4|Add3~5\ & VCC)) # (!\inst4|data_1_storage\(4) & (!\inst4|Add3~5\))
-- \inst4|Add3~7\ = CARRY((!\inst4|data_1_storage\(4) & !\inst4|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_1_storage\(4),
	datad => VCC,
	cin => \inst4|Add3~5\,
	combout => \inst4|Add3~6_combout\,
	cout => \inst4|Add3~7\);

-- Location: LCCOMB_X43_Y23_N16
\inst1|distance_counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[4]~16_combout\ = (\inst1|distance_counter\(4) & (\inst1|distance_counter[3]~15\ $ (GND))) # (!\inst1|distance_counter\(4) & (!\inst1|distance_counter[3]~15\ & VCC))
-- \inst1|distance_counter[4]~17\ = CARRY((\inst1|distance_counter\(4) & !\inst1|distance_counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|distance_counter\(4),
	datad => VCC,
	cin => \inst1|distance_counter[3]~15\,
	combout => \inst1|distance_counter[4]~16_combout\,
	cout => \inst1|distance_counter[4]~17\);

-- Location: FF_X43_Y23_N17
\inst1|distance_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[4]~16_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(4));

-- Location: LCCOMB_X43_Y23_N28
\inst1|distance[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[4]~feeder_combout\ = \inst1|distance_counter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(4),
	combout => \inst1|distance[4]~feeder_combout\);

-- Location: FF_X43_Y23_N29
\inst1|distance[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[4]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(4));

-- Location: LCCOMB_X38_Y27_N28
\inst4|data_1_storage~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~4_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(4))))) # (!\inst4|state.update~q\ & (\inst4|Add3~6_combout\ & (\inst4|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~6_combout\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst1|distance\(4),
	datad => \inst4|state.update~q\,
	combout => \inst4|data_1_storage~4_combout\);

-- Location: FF_X38_Y27_N29
\inst4|data_1_storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~4_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(4));

-- Location: LCCOMB_X38_Y27_N12
\inst4|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~8_combout\ = (\inst4|data_1_storage\(5) & ((GND) # (!\inst4|Add3~7\))) # (!\inst4|data_1_storage\(5) & (\inst4|Add3~7\ $ (GND)))
-- \inst4|Add3~9\ = CARRY((\inst4|data_1_storage\(5)) # (!\inst4|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(5),
	datad => VCC,
	cin => \inst4|Add3~7\,
	combout => \inst4|Add3~8_combout\,
	cout => \inst4|Add3~9\);

-- Location: LCCOMB_X43_Y23_N18
\inst1|distance_counter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[5]~19_combout\ = (\inst1|distance_counter\(5) & (!\inst1|distance_counter[4]~17\)) # (!\inst1|distance_counter\(5) & ((\inst1|distance_counter[4]~17\) # (GND)))
-- \inst1|distance_counter[5]~20\ = CARRY((!\inst1|distance_counter[4]~17\) # (!\inst1|distance_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|distance_counter\(5),
	datad => VCC,
	cin => \inst1|distance_counter[4]~17\,
	combout => \inst1|distance_counter[5]~19_combout\,
	cout => \inst1|distance_counter[5]~20\);

-- Location: FF_X43_Y23_N19
\inst1|distance_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[5]~19_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(5));

-- Location: LCCOMB_X43_Y23_N26
\inst1|distance[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[5]~feeder_combout\ = \inst1|distance_counter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(5),
	combout => \inst1|distance[5]~feeder_combout\);

-- Location: FF_X43_Y23_N27
\inst1|distance[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[5]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(5));

-- Location: LCCOMB_X38_Y27_N26
\inst4|data_1_storage~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~5_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(5))))) # (!\inst4|state.update~q\ & (\inst4|Add3~8_combout\ & ((\inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~8_combout\,
	datab => \inst1|distance\(5),
	datac => \inst4|state.update~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~5_combout\);

-- Location: FF_X38_Y27_N27
\inst4|data_1_storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~5_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(5));

-- Location: LCCOMB_X38_Y27_N14
\inst4|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~10_combout\ = (\inst4|data_1_storage\(6) & (\inst4|Add3~9\ & VCC)) # (!\inst4|data_1_storage\(6) & (!\inst4|Add3~9\))
-- \inst4|Add3~11\ = CARRY((!\inst4|data_1_storage\(6) & !\inst4|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(6),
	datad => VCC,
	cin => \inst4|Add3~9\,
	combout => \inst4|Add3~10_combout\,
	cout => \inst4|Add3~11\);

-- Location: LCCOMB_X43_Y23_N20
\inst1|distance_counter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[6]~21_combout\ = (\inst1|distance_counter\(6) & (\inst1|distance_counter[5]~20\ $ (GND))) # (!\inst1|distance_counter\(6) & (!\inst1|distance_counter[5]~20\ & VCC))
-- \inst1|distance_counter[6]~22\ = CARRY((\inst1|distance_counter\(6) & !\inst1|distance_counter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|distance_counter\(6),
	datad => VCC,
	cin => \inst1|distance_counter[5]~20\,
	combout => \inst1|distance_counter[6]~21_combout\,
	cout => \inst1|distance_counter[6]~22\);

-- Location: FF_X43_Y23_N21
\inst1|distance_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[6]~21_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(6));

-- Location: LCCOMB_X43_Y23_N4
\inst1|distance[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[6]~feeder_combout\ = \inst1|distance_counter\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(6),
	combout => \inst1|distance[6]~feeder_combout\);

-- Location: FF_X43_Y23_N5
\inst1|distance[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[6]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(6));

-- Location: LCCOMB_X38_Y27_N30
\inst4|data_1_storage~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~6_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(6))))) # (!\inst4|state.update~q\ & (\inst4|LessThan1~0_combout\ & (\inst4|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|Add3~10_combout\,
	datad => \inst1|distance\(6),
	combout => \inst4|data_1_storage~6_combout\);

-- Location: FF_X38_Y27_N31
\inst4|data_1_storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~6_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(6));

-- Location: LCCOMB_X38_Y27_N16
\inst4|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add3~12_combout\ = \inst4|Add3~11\ $ (\inst4|data_1_storage\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|data_1_storage\(7),
	cin => \inst4|Add3~11\,
	combout => \inst4|Add3~12_combout\);

-- Location: LCCOMB_X43_Y23_N22
\inst1|distance_counter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance_counter[7]~23_combout\ = \inst1|distance_counter\(7) $ (\inst1|distance_counter[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|distance_counter\(7),
	cin => \inst1|distance_counter[6]~22\,
	combout => \inst1|distance_counter[7]~23_combout\);

-- Location: FF_X43_Y23_N23
\inst1|distance_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance_counter[7]~23_combout\,
	sclr => \inst1|ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \inst1|distance_counter[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance_counter\(7));

-- Location: LCCOMB_X43_Y27_N16
\inst1|distance[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[7]~feeder_combout\ = \inst1|distance_counter\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(7),
	combout => \inst1|distance[7]~feeder_combout\);

-- Location: FF_X43_Y27_N17
\inst1|distance[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[7]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(7));

-- Location: LCCOMB_X38_Y27_N24
\inst4|data_1_storage~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~7_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(7))))) # (!\inst4|state.update~q\ & (\inst4|Add3~12_combout\ & ((\inst4|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|Add3~12_combout\,
	datac => \inst1|distance\(7),
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|data_1_storage~7_combout\);

-- Location: FF_X38_Y27_N25
\inst4|data_1_storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~7_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(7));

-- Location: LCCOMB_X38_Y27_N18
\inst4|lcd_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~42_combout\ = (!\inst4|data_1_storage\(6) & (!\inst4|data_1_storage\(7) & (!\inst4|data_1_storage\(5) & !\inst4|data_1_storage\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(6),
	datab => \inst4|data_1_storage\(7),
	datac => \inst4|data_1_storage\(5),
	datad => \inst4|data_1_storage\(4),
	combout => \inst4|lcd_data~42_combout\);

-- Location: LCCOMB_X39_Y27_N16
\inst4|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = ((\inst4|data_1_storage\(3) & ((\inst4|data_1_storage\(2)) # (\inst4|data_1_storage\(1))))) # (!\inst4|lcd_data~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(3),
	datab => \inst4|data_1_storage\(2),
	datac => \inst4|data_1_storage\(1),
	datad => \inst4|lcd_data~42_combout\,
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X43_Y23_N6
\inst1|distance[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[1]~feeder_combout\ = \inst1|distance_counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(1),
	combout => \inst1|distance[1]~feeder_combout\);

-- Location: FF_X43_Y23_N7
\inst1|distance[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[1]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(1));

-- Location: LCCOMB_X38_Y27_N20
\inst4|data_1_storage~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~12_combout\ = (\inst4|state.update~q\ & (((\inst1|distance\(1))))) # (!\inst4|state.update~q\ & (\inst4|LessThan1~0_combout\ & (\inst4|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|Add3~0_combout\,
	datad => \inst1|distance\(1),
	combout => \inst4|data_1_storage~12_combout\);

-- Location: FF_X38_Y27_N21
\inst4|data_1_storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage~12_combout\,
	ena => \inst4|data_1_storage~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(1));

-- Location: LCCOMB_X43_Y27_N2
\inst1|distance[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|distance[0]~feeder_combout\ = \inst1|distance_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|distance_counter\(0),
	combout => \inst1|distance[0]~feeder_combout\);

-- Location: FF_X43_Y27_N3
\inst1|distance[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst1|distance[0]~feeder_combout\,
	ena => \inst1|distance[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|distance\(0));

-- Location: LCCOMB_X37_Y25_N0
\inst4|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~9_combout\ = (\inst4|state.update~q\ & \inst4|process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.update~q\,
	datac => \inst4|process_0~14_combout\,
	combout => \inst4|state~9_combout\);

-- Location: LCCOMB_X39_Y27_N18
\inst4|data_1_storage~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage~10_combout\ = (\inst4|state~9_combout\) # ((\inst4|data_3_storage~7_combout\ & (!\inst4|LessThan1~0_combout\ & \inst4|lcd_data~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage~7_combout\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|lcd_data~38_combout\,
	datad => \inst4|state~9_combout\,
	combout => \inst4|data_1_storage~10_combout\);

-- Location: LCCOMB_X39_Y27_N24
\inst4|data_1_storage[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_1_storage[0]~11_combout\ = (\inst4|data_1_storage~10_combout\ & (\inst1|distance\(0) & (\inst4|state.update~q\))) # (!\inst4|data_1_storage~10_combout\ & (((\inst4|data_1_storage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|distance\(0),
	datab => \inst4|state.update~q\,
	datac => \inst4|data_1_storage\(0),
	datad => \inst4|data_1_storage~10_combout\,
	combout => \inst4|data_1_storage[0]~11_combout\);

-- Location: FF_X39_Y27_N25
\inst4|data_1_storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_1_storage[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_1_storage\(0));

-- Location: LCCOMB_X39_Y27_N26
\inst4|lcd_data~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~43_combout\ = (!\inst4|data_1_storage\(1) & (!\inst4|data_1_storage\(2) & (!\inst4|data_1_storage\(3) & !\inst4|data_1_storage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(1),
	datab => \inst4|data_1_storage\(2),
	datac => \inst4|data_1_storage\(3),
	datad => \inst4|data_1_storage\(0),
	combout => \inst4|lcd_data~43_combout\);

-- Location: LCCOMB_X39_Y29_N28
\inst4|lcd_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~44_combout\ = (!\inst4|charCount\(3) & (!\inst4|charCount\(2) & (!\inst4|charCount\(0) & !\inst4|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~44_combout\);

-- Location: LCCOMB_X39_Y29_N30
\inst4|lcd_data~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~41_combout\ = (\inst4|Equal23~0_combout\ & (\inst4|charCount\(1) $ (\inst4|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(1),
	datac => \inst4|Equal23~0_combout\,
	datad => \inst4|charCount\(0),
	combout => \inst4|lcd_data~41_combout\);

-- Location: LCCOMB_X39_Y27_N0
\inst4|lcd_data~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~45_combout\ = (\inst4|lcd_data~41_combout\) # ((\inst4|lcd_data~43_combout\ & (\inst4|lcd_data~42_combout\ & !\inst4|lcd_data~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~43_combout\,
	datab => \inst4|lcd_data~42_combout\,
	datac => \inst4|lcd_data~44_combout\,
	datad => \inst4|lcd_data~41_combout\,
	combout => \inst4|lcd_data~45_combout\);

-- Location: LCCOMB_X40_Y28_N24
\inst4|lcd_data~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~51_combout\ = (!\inst4|charCount\(2) & ((\inst4|charCount\(0) & (!\inst4|charCount\(1) & !\inst4|charCount\(3))) # (!\inst4|charCount\(0) & (\inst4|charCount\(1) & \inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~51_combout\);

-- Location: LCCOMB_X40_Y28_N30
\inst4|lcd_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~52_combout\ = (\inst4|charCount\(4)) # (!\inst4|lcd_data~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~51_combout\,
	combout => \inst4|lcd_data~52_combout\);

-- Location: LCCOMB_X40_Y28_N26
\inst4|lcd_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~46_combout\ = (\inst4|lineCount\(1) & (((\inst4|lineCount\(0)) # (!\inst4|lcd_data~44_combout\)))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data\(5) & (!\inst4|lineCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(5),
	datab => \inst4|lineCount\(1),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~44_combout\,
	combout => \inst4|lcd_data~46_combout\);

-- Location: LCCOMB_X40_Y28_N10
\inst4|lcd_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~48_combout\ = (\inst4|charCount\(1) & ((\inst4|charCount\(3)) # ((!\inst4|charCount\(0))))) # (!\inst4|charCount\(1) & ((\inst4|charCount\(3) & ((!\inst4|charCount\(2)) # (!\inst4|charCount\(0)))) # (!\inst4|charCount\(3) & 
-- ((\inst4|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~48_combout\);

-- Location: LCCOMB_X40_Y28_N4
\inst4|lcd_data~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~47_combout\ = (\inst4|charCount\(3) & ((\inst4|charCount\(1) $ (!\inst4|charCount\(2))) # (!\inst4|charCount\(0)))) # (!\inst4|charCount\(3) & (((\inst4|charCount\(0)) # (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~47_combout\);

-- Location: LCCOMB_X40_Y28_N20
\inst4|lcd_data~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~49_combout\ = \inst4|lcd_data~47_combout\ $ (((\inst4|lcd_data~48_combout\ & !\inst4|lcd_data~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~48_combout\,
	datab => \inst4|lcd_data~47_combout\,
	datac => \inst4|lcd_data~46_combout\,
	combout => \inst4|lcd_data~49_combout\);

-- Location: LCCOMB_X40_Y28_N6
\inst4|lcd_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~50_combout\ = (\inst4|lineCount\(0) & ((\inst4|charCount\(4)) # (\inst4|lcd_data~46_combout\ $ (!\inst4|lcd_data~49_combout\)))) # (!\inst4|lineCount\(0) & (((\inst4|lcd_data~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~46_combout\,
	datad => \inst4|lcd_data~49_combout\,
	combout => \inst4|lcd_data~50_combout\);

-- Location: LCCOMB_X40_Y28_N8
\inst4|lcd_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~53_combout\ = (\inst4|lcd_data~38_combout\ & (\inst4|lcd_data~52_combout\ & (!\inst4|display_state~q\))) # (!\inst4|lcd_data~38_combout\ & (((\inst4|display_state~q\) # (\inst4|lcd_data~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~52_combout\,
	datab => \inst4|lcd_data~38_combout\,
	datac => \inst4|display_state~q\,
	datad => \inst4|lcd_data~50_combout\,
	combout => \inst4|lcd_data~53_combout\);

-- Location: LCCOMB_X40_Y28_N2
\inst4|lcd_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~54_combout\ = (\inst4|lineCount\(1) & (((\inst4|lineCount\(0)) # (\inst4|lcd_data~41_combout\)))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((\inst4|lcd_data~41_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(5),
	datab => \inst4|lineCount\(1),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~41_combout\,
	combout => \inst4|lcd_data~54_combout\);

-- Location: LCCOMB_X38_Y26_N12
\inst4|data_3_storage[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[1]~8_combout\ = \inst4|data_3_storage\(1) $ (VCC)
-- \inst4|data_3_storage[1]~9\ = CARRY(\inst4|data_3_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(1),
	datad => VCC,
	combout => \inst4|data_3_storage[1]~8_combout\,
	cout => \inst4|data_3_storage[1]~9\);

-- Location: LCCOMB_X38_Y26_N14
\inst4|data_3_storage[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[2]~10_combout\ = (\inst4|data_3_storage\(2) & (\inst4|data_3_storage[1]~9\ & VCC)) # (!\inst4|data_3_storage\(2) & (!\inst4|data_3_storage[1]~9\))
-- \inst4|data_3_storage[2]~11\ = CARRY((!\inst4|data_3_storage\(2) & !\inst4|data_3_storage[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(2),
	datad => VCC,
	cin => \inst4|data_3_storage[1]~9\,
	combout => \inst4|data_3_storage[2]~10_combout\,
	cout => \inst4|data_3_storage[2]~11\);

-- Location: LCCOMB_X38_Y26_N10
\inst4|data_3_storage~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage~17_combout\ = (\inst4|state~9_combout\) # ((\inst4|lineCount\(1) & (!\inst4|lineCount\(0) & \inst4|data_3_storage~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lineCount\(0),
	datac => \inst4|state~9_combout\,
	datad => \inst4|data_3_storage~7_combout\,
	combout => \inst4|data_3_storage~17_combout\);

-- Location: FF_X38_Y26_N15
\inst4|data_3_storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[2]~10_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(2));

-- Location: LCCOMB_X38_Y26_N16
\inst4|data_3_storage[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[3]~12_combout\ = (\inst4|data_3_storage\(3) & (\inst4|data_3_storage[2]~11\ $ (GND))) # (!\inst4|data_3_storage\(3) & (!\inst4|data_3_storage[2]~11\ & VCC))
-- \inst4|data_3_storage[3]~13\ = CARRY((\inst4|data_3_storage\(3) & !\inst4|data_3_storage[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(3),
	datad => VCC,
	cin => \inst4|data_3_storage[2]~11\,
	combout => \inst4|data_3_storage[3]~12_combout\,
	cout => \inst4|data_3_storage[3]~13\);

-- Location: FF_X38_Y26_N17
\inst4|data_3_storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[3]~12_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(3));

-- Location: LCCOMB_X38_Y26_N18
\inst4|data_3_storage[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[4]~14_combout\ = (\inst4|data_3_storage\(4) & (\inst4|data_3_storage[3]~13\ & VCC)) # (!\inst4|data_3_storage\(4) & (!\inst4|data_3_storage[3]~13\))
-- \inst4|data_3_storage[4]~15\ = CARRY((!\inst4|data_3_storage\(4) & !\inst4|data_3_storage[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(4),
	datad => VCC,
	cin => \inst4|data_3_storage[3]~13\,
	combout => \inst4|data_3_storage[4]~14_combout\,
	cout => \inst4|data_3_storage[4]~15\);

-- Location: FF_X38_Y26_N19
\inst4|data_3_storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[4]~14_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(4));

-- Location: LCCOMB_X38_Y26_N20
\inst4|data_3_storage[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[5]~18_combout\ = (\inst4|data_3_storage\(5) & ((GND) # (!\inst4|data_3_storage[4]~15\))) # (!\inst4|data_3_storage\(5) & (\inst4|data_3_storage[4]~15\ $ (GND)))
-- \inst4|data_3_storage[5]~19\ = CARRY((\inst4|data_3_storage\(5)) # (!\inst4|data_3_storage[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_3_storage\(5),
	datad => VCC,
	cin => \inst4|data_3_storage[4]~15\,
	combout => \inst4|data_3_storage[5]~18_combout\,
	cout => \inst4|data_3_storage[5]~19\);

-- Location: FF_X38_Y26_N21
\inst4|data_3_storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[5]~18_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(5));

-- Location: LCCOMB_X38_Y26_N22
\inst4|data_3_storage[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[6]~20_combout\ = (\inst4|data_3_storage\(6) & (\inst4|data_3_storage[5]~19\ & VCC)) # (!\inst4|data_3_storage\(6) & (!\inst4|data_3_storage[5]~19\))
-- \inst4|data_3_storage[6]~21\ = CARRY((!\inst4|data_3_storage\(6) & !\inst4|data_3_storage[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(6),
	datad => VCC,
	cin => \inst4|data_3_storage[5]~19\,
	combout => \inst4|data_3_storage[6]~20_combout\,
	cout => \inst4|data_3_storage[6]~21\);

-- Location: FF_X38_Y26_N23
\inst4|data_3_storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[6]~20_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(6));

-- Location: LCCOMB_X38_Y26_N24
\inst4|data_3_storage[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[7]~22_combout\ = \inst4|data_3_storage[6]~21\ $ (\inst4|data_3_storage\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|data_3_storage\(7),
	cin => \inst4|data_3_storage[6]~21\,
	combout => \inst4|data_3_storage[7]~22_combout\);

-- Location: FF_X38_Y26_N25
\inst4|data_3_storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[7]~22_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(7));

-- Location: LCCOMB_X38_Y26_N28
\inst4|lcd_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~56_combout\ = (!\inst4|data_3_storage\(5) & (!\inst4|data_3_storage\(4) & (!\inst4|data_3_storage\(6) & !\inst4|data_3_storage\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(5),
	datab => \inst4|data_3_storage\(4),
	datac => \inst4|data_3_storage\(6),
	datad => \inst4|data_3_storage\(7),
	combout => \inst4|lcd_data~56_combout\);

-- Location: LCCOMB_X38_Y26_N26
\inst4|lcd_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~98_combout\ = (\inst4|lcd_data~56_combout\ & (((!\inst4|data_3_storage\(1) & !\inst4|data_3_storage\(2))) # (!\inst4|data_3_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(1),
	datab => \inst4|data_3_storage\(3),
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|lcd_data~56_combout\,
	combout => \inst4|lcd_data~98_combout\);

-- Location: LCCOMB_X38_Y26_N4
\inst4|data_3_storage[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_3_storage[1]~16_combout\ = (\inst4|lcd_data~98_combout\) # (\inst4|state.update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~98_combout\,
	datac => \inst4|state.update~q\,
	combout => \inst4|data_3_storage[1]~16_combout\);

-- Location: FF_X38_Y26_N13
\inst4|data_3_storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_3_storage[1]~8_combout\,
	sclr => \inst4|data_3_storage[1]~16_combout\,
	ena => \inst4|data_3_storage~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_3_storage\(1));

-- Location: LCCOMB_X38_Y26_N6
\inst4|lcd_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~57_combout\ = (!\inst4|data_3_storage\(1) & (!\inst4|data_3_storage\(2) & (\inst4|lineCount\(1) & !\inst4|data_3_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(1),
	datab => \inst4|data_3_storage\(2),
	datac => \inst4|lineCount\(1),
	datad => \inst4|data_3_storage\(3),
	combout => \inst4|lcd_data~57_combout\);

-- Location: LCCOMB_X37_Y26_N10
\inst4|data_2_storage[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[1]~7_combout\ = \inst4|data_2_storage\(1) $ (VCC)
-- \inst4|data_2_storage[1]~8\ = CARRY(\inst4|data_2_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(1),
	datad => VCC,
	combout => \inst4|data_2_storage[1]~7_combout\,
	cout => \inst4|data_2_storage[1]~8\);

-- Location: LCCOMB_X37_Y26_N24
\inst4|lcd_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~99_combout\ = (\inst4|lcd_data~55_combout\ & (((!\inst4|data_2_storage\(1) & !\inst4|data_2_storage\(2))) # (!\inst4|data_2_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(1),
	datab => \inst4|lcd_data~55_combout\,
	datac => \inst4|data_2_storage\(3),
	datad => \inst4|data_2_storage\(2),
	combout => \inst4|lcd_data~99_combout\);

-- Location: LCCOMB_X37_Y26_N2
\inst4|data_2_storage[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[4]~15_combout\ = (\inst4|state.update~q\) # (\inst4|lcd_data~99_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.update~q\,
	datad => \inst4|lcd_data~99_combout\,
	combout => \inst4|data_2_storage[4]~15_combout\);

-- Location: LCCOMB_X37_Y26_N4
\inst4|data_2_storage~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage~16_combout\ = (\inst4|state~9_combout\) # ((!\inst4|lineCount\(1) & (\inst4|lineCount\(0) & \inst4|data_3_storage~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|state~9_combout\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|data_3_storage~7_combout\,
	combout => \inst4|data_2_storage~16_combout\);

-- Location: FF_X37_Y26_N11
\inst4|data_2_storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[1]~7_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(1));

-- Location: LCCOMB_X37_Y26_N12
\inst4|data_2_storage[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[2]~9_combout\ = (\inst4|data_2_storage\(2) & (\inst4|data_2_storage[1]~8\ & VCC)) # (!\inst4|data_2_storage\(2) & (!\inst4|data_2_storage[1]~8\))
-- \inst4|data_2_storage[2]~10\ = CARRY((!\inst4|data_2_storage\(2) & !\inst4|data_2_storage[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datad => VCC,
	cin => \inst4|data_2_storage[1]~8\,
	combout => \inst4|data_2_storage[2]~9_combout\,
	cout => \inst4|data_2_storage[2]~10\);

-- Location: FF_X37_Y26_N13
\inst4|data_2_storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[2]~9_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(2));

-- Location: LCCOMB_X37_Y26_N14
\inst4|data_2_storage[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[3]~11_combout\ = (\inst4|data_2_storage\(3) & (\inst4|data_2_storage[2]~10\ $ (GND))) # (!\inst4|data_2_storage\(3) & (!\inst4|data_2_storage[2]~10\ & VCC))
-- \inst4|data_2_storage[3]~12\ = CARRY((\inst4|data_2_storage\(3) & !\inst4|data_2_storage[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(3),
	datad => VCC,
	cin => \inst4|data_2_storage[2]~10\,
	combout => \inst4|data_2_storage[3]~11_combout\,
	cout => \inst4|data_2_storage[3]~12\);

-- Location: FF_X37_Y26_N15
\inst4|data_2_storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[3]~11_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(3));

-- Location: LCCOMB_X37_Y26_N16
\inst4|data_2_storage[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[4]~13_combout\ = (\inst4|data_2_storage\(4) & (\inst4|data_2_storage[3]~12\ & VCC)) # (!\inst4|data_2_storage\(4) & (!\inst4|data_2_storage[3]~12\))
-- \inst4|data_2_storage[4]~14\ = CARRY((!\inst4|data_2_storage\(4) & !\inst4|data_2_storage[3]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(4),
	datad => VCC,
	cin => \inst4|data_2_storage[3]~12\,
	combout => \inst4|data_2_storage[4]~13_combout\,
	cout => \inst4|data_2_storage[4]~14\);

-- Location: FF_X37_Y26_N17
\inst4|data_2_storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[4]~13_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(4));

-- Location: LCCOMB_X37_Y26_N18
\inst4|data_2_storage[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[5]~17_combout\ = (\inst4|data_2_storage\(5) & ((GND) # (!\inst4|data_2_storage[4]~14\))) # (!\inst4|data_2_storage\(5) & (\inst4|data_2_storage[4]~14\ $ (GND)))
-- \inst4|data_2_storage[5]~18\ = CARRY((\inst4|data_2_storage\(5)) # (!\inst4|data_2_storage[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(5),
	datad => VCC,
	cin => \inst4|data_2_storage[4]~14\,
	combout => \inst4|data_2_storage[5]~17_combout\,
	cout => \inst4|data_2_storage[5]~18\);

-- Location: FF_X37_Y26_N19
\inst4|data_2_storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[5]~17_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(5));

-- Location: LCCOMB_X37_Y26_N20
\inst4|data_2_storage[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[6]~19_combout\ = (\inst4|data_2_storage\(6) & (\inst4|data_2_storage[5]~18\ & VCC)) # (!\inst4|data_2_storage\(6) & (!\inst4|data_2_storage[5]~18\))
-- \inst4|data_2_storage[6]~20\ = CARRY((!\inst4|data_2_storage\(6) & !\inst4|data_2_storage[5]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_2_storage\(6),
	datad => VCC,
	cin => \inst4|data_2_storage[5]~18\,
	combout => \inst4|data_2_storage[6]~19_combout\,
	cout => \inst4|data_2_storage[6]~20\);

-- Location: FF_X37_Y26_N21
\inst4|data_2_storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[6]~19_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(6));

-- Location: LCCOMB_X37_Y26_N22
\inst4|data_2_storage[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|data_2_storage[7]~21_combout\ = \inst4|data_2_storage\(7) $ (\inst4|data_2_storage[6]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(7),
	cin => \inst4|data_2_storage[6]~20\,
	combout => \inst4|data_2_storage[7]~21_combout\);

-- Location: FF_X37_Y26_N23
\inst4|data_2_storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|data_2_storage[7]~21_combout\,
	sclr => \inst4|data_2_storage[4]~15_combout\,
	ena => \inst4|data_2_storage~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|data_2_storage\(7));

-- Location: LCCOMB_X37_Y26_N28
\inst4|lcd_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~55_combout\ = (!\inst4|data_2_storage\(7) & (!\inst4|data_2_storage\(6) & (!\inst4|data_2_storage\(5) & !\inst4|data_2_storage\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(7),
	datab => \inst4|data_2_storage\(6),
	datac => \inst4|data_2_storage\(5),
	datad => \inst4|data_2_storage\(4),
	combout => \inst4|lcd_data~55_combout\);

-- Location: LCCOMB_X37_Y26_N6
\inst4|lcd_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~58_combout\ = (!\inst4|data_2_storage\(2) & (!\inst4|data_2_storage\(3) & (\inst4|lineCount\(0) & !\inst4|data_2_storage\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datab => \inst4|data_2_storage\(3),
	datac => \inst4|lineCount\(0),
	datad => \inst4|data_2_storage\(1),
	combout => \inst4|lcd_data~58_combout\);

-- Location: LCCOMB_X38_Y26_N8
\inst4|lcd_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~59_combout\ = (\inst4|lcd_data~57_combout\ & ((\inst4|lcd_data~56_combout\) # ((\inst4|lcd_data~55_combout\ & \inst4|lcd_data~58_combout\)))) # (!\inst4|lcd_data~57_combout\ & (\inst4|lcd_data~55_combout\ & (\inst4|lcd_data~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~57_combout\,
	datab => \inst4|lcd_data~55_combout\,
	datac => \inst4|lcd_data~58_combout\,
	datad => \inst4|lcd_data~56_combout\,
	combout => \inst4|lcd_data~59_combout\);

-- Location: LCCOMB_X40_Y29_N2
\inst4|lcd_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~60_combout\ = (!\inst4|charCount\(1) & (!\inst4|charCount\(2) & (!\inst4|charCount\(4) & !\inst4|charCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~60_combout\);

-- Location: LCCOMB_X39_Y28_N18
\inst4|lcd_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~61_combout\ = (\inst4|lcd_data~54_combout\) # ((\inst4|lcd_data~59_combout\ & !\inst4|lcd_data~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~54_combout\,
	datac => \inst4|lcd_data~59_combout\,
	datad => \inst4|lcd_data~60_combout\,
	combout => \inst4|lcd_data~61_combout\);

-- Location: LCCOMB_X39_Y28_N16
\inst4|lcd_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~62_combout\ = (\inst4|display_state~q\ & ((\inst4|lcd_data~53_combout\ & ((\inst4|lcd_data~61_combout\))) # (!\inst4|lcd_data~53_combout\ & (\inst4|lcd_data~45_combout\)))) # (!\inst4|display_state~q\ & (((\inst4|lcd_data~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|display_state~q\,
	datab => \inst4|lcd_data~45_combout\,
	datac => \inst4|lcd_data~53_combout\,
	datad => \inst4|lcd_data~61_combout\,
	combout => \inst4|lcd_data~62_combout\);

-- Location: FF_X39_Y28_N17
\inst4|lcd_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(5));

-- Location: LCCOMB_X36_Y27_N8
\inst5|dataStorage[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[5]~1_combout\ = !\inst4|lcd_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_data\(5),
	combout => \inst5|dataStorage[5]~1_combout\);

-- Location: FF_X36_Y27_N9
\inst5|dataStorage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[5]~1_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(5));

-- Location: LCCOMB_X36_Y27_N20
\inst5|dataOut[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~11_combout\ = (\inst5|state.sendingAddress~q\ & (\inst5|addressStorage\(5))) # (!\inst5|state.sendingAddress~q\ & (((!\inst5|dataStorage\(5) & \inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|addressStorage\(5),
	datac => \inst5|dataStorage\(5),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[5]~11_combout\);

-- Location: LCCOMB_X36_Y31_N18
\inst5|dataOut[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~12_combout\ = (!\inst5|state.init5~q\ & (!\inst5|state.init6~q\ & !\inst5|state.init7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init5~q\,
	datab => \inst5|state.init6~q\,
	datad => \inst5|state.init7~q\,
	combout => \inst5|dataOut[5]~12_combout\);

-- Location: LCCOMB_X36_Y31_N20
\inst5|dataOut[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~13_combout\ = ((\inst5|Equal8~10_combout\ & (\inst5|dataOut[5]~12_combout\ & \inst5|state.createChar5~q\))) # (!\inst5|dataOut[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~10_combout\,
	datab => \inst5|dataOut[5]~12_combout\,
	datac => \inst5|dataOut[7]~2_combout\,
	datad => \inst5|state.createChar5~q\,
	combout => \inst5|dataOut[5]~13_combout\);

-- Location: LCCOMB_X36_Y31_N2
\inst5|dataOut[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[5]~14_combout\ = (\inst5|dataOut[1]~7_combout\ & (\inst5|dataOut[5]~11_combout\)) # (!\inst5|dataOut[1]~7_combout\ & (((\inst5|dataOut[5]~13_combout\ & \inst5|state.init0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[5]~11_combout\,
	datab => \inst5|dataOut[5]~13_combout\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[5]~14_combout\);

-- Location: LCCOMB_X36_Y27_N4
\inst5|addressStorage~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~1_combout\ = \inst4|lcd_posX\(4) $ (((\inst4|lcd_posY\(1) & ((!\inst4|lcd_posX\(2)) # (!\inst4|lcd_posX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_posX\(3),
	datab => \inst4|lcd_posY\(1),
	datac => \inst4|lcd_posX\(4),
	datad => \inst4|lcd_posX\(2),
	combout => \inst5|addressStorage~1_combout\);

-- Location: FF_X36_Y27_N5
\inst5|addressStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~1_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(4));

-- Location: LCCOMB_X38_Y29_N20
\inst4|lcd_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~73_combout\ = (\inst4|display_state~q\ & ((!\inst4|lineCount\(0)) # (!\inst4|lineCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lineCount\(0),
	datac => \inst4|display_state~q\,
	combout => \inst4|lcd_data~73_combout\);

-- Location: LCCOMB_X40_Y29_N12
\inst4|lcd_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~9_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(3) & (\inst4|charCount\(0) & !\inst4|charCount\(2)))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(0) & (\inst4|charCount\(3) $ (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~9_combout\);

-- Location: LCCOMB_X40_Y29_N10
\inst4|lcd_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~145_combout\ = (!\inst4|charCount\(4) & \inst4|lcd_data~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(4),
	datad => \inst4|lcd_data~9_combout\,
	combout => \inst4|lcd_data~145_combout\);

-- Location: LCCOMB_X40_Y29_N28
\inst4|lcd_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~66_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(3) & (\inst4|charCount\(0) $ (!\inst4|charCount\(2))))) # (!\inst4|charCount\(1) & (\inst4|charCount\(3) & (!\inst4|charCount\(0) & \inst4|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~66_combout\);

-- Location: LCCOMB_X40_Y29_N18
\inst4|lcd_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~67_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(4) & ((\inst4|lcd_data~66_combout\)))) # (!\inst4|charCount\(1) & ((\inst4|Equal17~0_combout\) # ((!\inst4|charCount\(4) & \inst4|lcd_data~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(4),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~66_combout\,
	combout => \inst4|lcd_data~67_combout\);

-- Location: LCCOMB_X40_Y29_N4
\inst4|lcd_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~68_combout\ = (\inst4|lineCount\(0) & ((\inst4|lineCount\(1)) # ((\inst4|lcd_data~67_combout\)))) # (!\inst4|lineCount\(0) & (!\inst4|lineCount\(1) & (\inst4|lcd_data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data\(4),
	datad => \inst4|lcd_data~67_combout\,
	combout => \inst4|lcd_data~68_combout\);

-- Location: LCCOMB_X41_Y29_N16
\inst4|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal15~1_combout\ = (!\inst4|charCount\(0) & \inst4|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|Equal15~1_combout\);

-- Location: LCCOMB_X41_Y29_N10
\inst4|lcd_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~69_combout\ = (\inst4|charCount\(3) & ((\inst4|charCount\(1)) # ((\inst4|charCount\(2))))) # (!\inst4|charCount\(3) & ((\inst4|charCount\(0) & ((\inst4|charCount\(1)) # (!\inst4|charCount\(2)))) # (!\inst4|charCount\(0) & 
-- ((\inst4|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~69_combout\);

-- Location: LCCOMB_X41_Y29_N4
\inst4|lcd_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~70_combout\ = (\inst4|charCount\(4) & (\inst4|Equal15~1_combout\ & (\inst4|Equal17~0_combout\))) # (!\inst4|charCount\(4) & (((\inst4|Equal15~1_combout\ & \inst4|Equal17~0_combout\)) # (!\inst4|lcd_data~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|Equal15~1_combout\,
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~69_combout\,
	combout => \inst4|lcd_data~70_combout\);

-- Location: LCCOMB_X40_Y29_N22
\inst4|lcd_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~71_combout\ = (\inst4|lineCount\(1) & ((\inst4|lcd_data~68_combout\ & ((\inst4|lcd_data~70_combout\))) # (!\inst4|lcd_data~68_combout\ & (\inst4|lcd_data~145_combout\)))) # (!\inst4|lineCount\(1) & (((\inst4|lcd_data~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~145_combout\,
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data~68_combout\,
	datad => \inst4|lcd_data~70_combout\,
	combout => \inst4|lcd_data~71_combout\);

-- Location: LCCOMB_X41_Y29_N0
\inst4|lcd_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~152_combout\ = (\inst4|charCount\(1) & (((!\inst4|charCount\(4))))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(3) & (\inst4|charCount\(4) $ (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~152_combout\);

-- Location: LCCOMB_X41_Y29_N26
\inst4|lcd_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~153_combout\ = (\inst4|lcd_data~152_combout\ & ((\inst4|charCount\(3) & ((!\inst4|charCount\(0)) # (!\inst4|charCount\(2)))) # (!\inst4|charCount\(3) & ((\inst4|charCount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|lcd_data~152_combout\,
	combout => \inst4|lcd_data~153_combout\);

-- Location: LCCOMB_X38_Y29_N14
\inst4|lcd_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~72_combout\ = (!\inst4|display_state~q\ & ((\inst4|lcd_data~38_combout\ & ((\inst4|lcd_data~153_combout\))) # (!\inst4|lcd_data~38_combout\ & (\inst4|lcd_data~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~71_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~38_combout\,
	datad => \inst4|lcd_data~153_combout\,
	combout => \inst4|lcd_data~72_combout\);

-- Location: LCCOMB_X38_Y29_N16
\inst4|lcd_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~74_combout\ = (\inst4|lcd_data~72_combout\) # ((\inst4|lcd_data~73_combout\ & ((\inst4|lcd_data~41_combout\) # (\inst4|Equal23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~41_combout\,
	datab => \inst4|lcd_data~73_combout\,
	datac => \inst4|lcd_data~72_combout\,
	datad => \inst4|Equal23~1_combout\,
	combout => \inst4|lcd_data~74_combout\);

-- Location: FF_X38_Y29_N17
\inst4|lcd_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(4));

-- Location: FF_X36_Y27_N15
\inst5|dataStorage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_data\(4),
	sload => VCC,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(4));

-- Location: LCCOMB_X36_Y27_N14
\inst5|dataOut[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~15_combout\ = (\inst5|state.sendingAddress~q\ & (\inst5|addressStorage\(4))) # (!\inst5|state.sendingAddress~q\ & (((\inst5|dataStorage\(4) & \inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|addressStorage\(4),
	datac => \inst5|dataStorage\(4),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[4]~15_combout\);

-- Location: LCCOMB_X37_Y31_N24
\inst5|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~16_combout\ = (\inst5|state.init7~q\) # ((\inst5|Equal8~10_combout\ & ((\inst5|state.createChar5~q\) # (!\inst5|dataOut[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~10_combout\,
	datab => \inst5|state.createChar5~q\,
	datac => \inst5|dataOut[4]~0_combout\,
	datad => \inst5|state.init7~q\,
	combout => \inst5|dataOut[4]~16_combout\);

-- Location: LCCOMB_X36_Y31_N28
\inst5|dataOut[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~17_combout\ = ((!\inst5|state.init5~q\ & (\inst5|state.init6~q\ $ (!\inst5|dataOut[4]~16_combout\)))) # (!\inst5|dataOut[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init5~q\,
	datab => \inst5|dataOut[7]~2_combout\,
	datac => \inst5|state.init6~q\,
	datad => \inst5|dataOut[4]~16_combout\,
	combout => \inst5|dataOut[4]~17_combout\);

-- Location: LCCOMB_X36_Y31_N30
\inst5|dataOut[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[4]~18_combout\ = (\inst5|dataOut[1]~7_combout\ & (\inst5|dataOut[4]~15_combout\)) # (!\inst5|dataOut[1]~7_combout\ & (((\inst5|dataOut[4]~17_combout\ & \inst5|state.init0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[4]~15_combout\,
	datab => \inst5|dataOut[4]~17_combout\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[4]~18_combout\);

-- Location: LCCOMB_X36_Y31_N12
\inst5|dataOut[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~20_combout\ = (!\inst5|state.init6~q\ & (((!\inst5|state.createChar3~q\ & !\inst5|state.createChar5~q\)) # (!\inst5|Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~10_combout\,
	datab => \inst5|state.init6~q\,
	datac => \inst5|state.createChar3~q\,
	datad => \inst5|state.createChar5~q\,
	combout => \inst5|dataOut[3]~20_combout\);

-- Location: LCCOMB_X36_Y31_N26
\inst5|dataOut[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~21_combout\ = ((\inst5|state.init5~q\) # ((\inst5|dataOut[3]~20_combout\ & \inst5|dataOut[7]~1_combout\))) # (!\inst5|dataOut[7]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[3]~20_combout\,
	datab => \inst5|dataOut[7]~2_combout\,
	datac => \inst5|state.init5~q\,
	datad => \inst5|dataOut[7]~1_combout\,
	combout => \inst5|dataOut[3]~21_combout\);

-- Location: LCCOMB_X36_Y27_N28
\inst5|addressStorage~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~2_combout\ = \inst4|lcd_posX\(3) $ (((\inst4|lcd_posY\(1) & \inst4|lcd_posX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_posX\(3),
	datab => \inst4|lcd_posY\(1),
	datad => \inst4|lcd_posX\(2),
	combout => \inst5|addressStorage~2_combout\);

-- Location: FF_X36_Y27_N29
\inst5|addressStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~2_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(3));

-- Location: LCCOMB_X36_Y29_N16
\inst4|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal15~0_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(2) & !\inst4|charCount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(4),
	combout => \inst4|Equal15~0_combout\);

-- Location: LCCOMB_X36_Y29_N12
\inst4|lcd_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~75_combout\ = (\inst4|charCount\(0) & (\inst4|Equal15~0_combout\)) # (!\inst4|charCount\(0) & ((\inst4|Equal17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal15~0_combout\,
	datac => \inst4|charCount\(0),
	datad => \inst4|Equal17~0_combout\,
	combout => \inst4|lcd_data~75_combout\);

-- Location: LCCOMB_X37_Y29_N14
\inst4|lcd_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~146_combout\ = (!\inst4|charCount\(1) & (!\inst4|charCount\(2) & (\inst4|charCount\(0) & !\inst4|charCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~146_combout\);

-- Location: LCCOMB_X37_Y29_N28
\inst4|lcd_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~64_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(2) & ((\inst4|charCount\(1)) # (\inst4|charCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~64_combout\);

-- Location: LCCOMB_X37_Y29_N8
\inst4|lcd_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~76_combout\ = (\inst4|lcd_data~146_combout\) # ((\inst4|lcd_data~75_combout\ & ((\inst4|charCount\(4)) # (\inst4|lcd_data~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~75_combout\,
	datab => \inst4|charCount\(4),
	datac => \inst4|lcd_data~146_combout\,
	datad => \inst4|lcd_data~64_combout\,
	combout => \inst4|lcd_data~76_combout\);

-- Location: LCCOMB_X37_Y29_N20
\inst4|lcd_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~150_combout\ = (\inst4|charCount\(0) & (!\inst4|charCount\(3) & (!\inst4|charCount\(2) & !\inst4|charCount\(4)))) # (!\inst4|charCount\(0) & (\inst4|charCount\(4) $ (((\inst4|charCount\(3)) # (\inst4|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~150_combout\);

-- Location: LCCOMB_X37_Y29_N26
\inst4|lcd_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~151_combout\ = (\inst4|lcd_data~150_combout\ & (\inst4|charCount\(1) $ (((\inst4|charCount\(2)) # (!\inst4|charCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|lcd_data~150_combout\,
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~151_combout\);

-- Location: LCCOMB_X37_Y29_N10
\inst4|lcd_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~77_combout\ = (\inst4|charCount\(3) & ((\inst4|charCount\(1) & ((!\inst4|charCount\(0)))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(2))))) # (!\inst4|charCount\(3) & (((\inst4|charCount\(0) & !\inst4|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~77_combout\);

-- Location: LCCOMB_X37_Y29_N16
\inst4|lcd_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~78_combout\ = (\inst4|lcd_data~77_combout\ & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~77_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~78_combout\);

-- Location: LCCOMB_X37_Y29_N30
\inst4|lcd_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~79_combout\ = (\inst4|charCount\(1) & (!\inst4|charCount\(0) & (\inst4|charCount\(3) $ (\inst4|charCount\(2))))) # (!\inst4|charCount\(1) & (!\inst4|charCount\(3) & ((!\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~79_combout\);

-- Location: LCCOMB_X37_Y29_N24
\inst4|lcd_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~80_combout\ = (\inst4|lcd_data~79_combout\ & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data~79_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~80_combout\);

-- Location: LCCOMB_X37_Y29_N6
\inst4|lcd_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~81_combout\ = (\inst4|lineCount\(0) & (((\inst4|lineCount\(1))))) # (!\inst4|lineCount\(0) & ((\inst4|lineCount\(1) & ((\inst4|lcd_data~80_combout\))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(3),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lineCount\(1),
	datad => \inst4|lcd_data~80_combout\,
	combout => \inst4|lcd_data~81_combout\);

-- Location: LCCOMB_X37_Y29_N12
\inst4|lcd_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~82_combout\ = (\inst4|lineCount\(0) & ((\inst4|lcd_data~81_combout\ & (\inst4|lcd_data~151_combout\)) # (!\inst4|lcd_data~81_combout\ & ((\inst4|lcd_data~78_combout\))))) # (!\inst4|lineCount\(0) & (((\inst4|lcd_data~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~151_combout\,
	datab => \inst4|lcd_data~78_combout\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~81_combout\,
	combout => \inst4|lcd_data~82_combout\);

-- Location: LCCOMB_X38_Y29_N22
\inst4|lcd_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~83_combout\ = (!\inst4|display_state~q\ & ((\inst4|lcd_data~38_combout\ & (\inst4|lcd_data~76_combout\)) # (!\inst4|lcd_data~38_combout\ & ((\inst4|lcd_data~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~76_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~38_combout\,
	datad => \inst4|lcd_data~82_combout\,
	combout => \inst4|lcd_data~83_combout\);

-- Location: LCCOMB_X38_Y29_N2
\inst4|lcd_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~84_combout\ = (\inst4|lcd_data~83_combout\) # ((\inst4|Equal15~1_combout\ & (\inst4|Equal23~0_combout\ & \inst4|lcd_data~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~83_combout\,
	datab => \inst4|Equal15~1_combout\,
	datac => \inst4|Equal23~0_combout\,
	datad => \inst4|lcd_data~73_combout\,
	combout => \inst4|lcd_data~84_combout\);

-- Location: FF_X38_Y29_N3
\inst4|lcd_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(3));

-- Location: FF_X36_Y27_N3
\inst5|dataStorage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_data\(3),
	sload => VCC,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(3));

-- Location: LCCOMB_X36_Y27_N2
\inst5|dataOut[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~19_combout\ = (\inst5|state.sendingAddress~q\ & (\inst5|addressStorage\(3))) # (!\inst5|state.sendingAddress~q\ & (((\inst5|dataStorage\(3) & \inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|addressStorage\(3),
	datac => \inst5|dataStorage\(3),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[3]~19_combout\);

-- Location: LCCOMB_X36_Y31_N8
\inst5|dataOut[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[3]~22_combout\ = (\inst5|dataOut[1]~7_combout\ & (((\inst5|dataOut[3]~19_combout\)))) # (!\inst5|dataOut[1]~7_combout\ & (\inst5|dataOut[3]~21_combout\ & ((\inst5|state.init0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[3]~21_combout\,
	datab => \inst5|dataOut[3]~19_combout\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[3]~22_combout\);

-- Location: LCCOMB_X37_Y29_N22
\inst4|lcd_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~65_combout\ = \inst4|charCount\(0) $ (\inst4|charCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~65_combout\);

-- Location: LCCOMB_X40_Y29_N16
\inst4|lcd_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~95_combout\ = (\inst4|charCount\(1) & (\inst4|charCount\(3) & (!\inst4|charCount\(0) & \inst4|charCount\(2)))) # (!\inst4|charCount\(1) & (\inst4|charCount\(3) $ (((\inst4|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~95_combout\);

-- Location: LCCOMB_X39_Y29_N6
\inst4|lcd_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~96_combout\ = (\inst4|lcd_data~65_combout\ & ((\inst4|Equal17~0_combout\) # ((!\inst4|charCount\(4) & \inst4|lcd_data~95_combout\)))) # (!\inst4|lcd_data~65_combout\ & (!\inst4|charCount\(4) & ((\inst4|lcd_data~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~65_combout\,
	datab => \inst4|charCount\(4),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~95_combout\,
	combout => \inst4|lcd_data~96_combout\);

-- Location: LCCOMB_X37_Y29_N18
\inst4|lcd_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~88_combout\ = (!\inst4|charCount\(2) & (\inst4|charCount\(0) $ (((\inst4|charCount\(3) & \inst4|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~88_combout\);

-- Location: LCCOMB_X36_Y29_N22
\inst4|lcd_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~63_combout\ = (\inst4|charCount\(1) & (\inst4|Equal15~0_combout\ & (!\inst4|charCount\(0)))) # (!\inst4|charCount\(1) & (((\inst4|charCount\(0) & \inst4|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|Equal15~0_combout\,
	datac => \inst4|charCount\(0),
	datad => \inst4|Equal17~0_combout\,
	combout => \inst4|lcd_data~63_combout\);

-- Location: LCCOMB_X37_Y29_N4
\inst4|lcd_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~94_combout\ = (\inst4|charCount\(2) & (\inst4|charCount\(3) $ ((!\inst4|charCount\(0))))) # (!\inst4|charCount\(2) & (\inst4|charCount\(1) $ (((\inst4|charCount\(3) & !\inst4|charCount\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~94_combout\);

-- Location: LCCOMB_X40_Y29_N6
\inst4|lcd_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~90_combout\ = (\inst4|charCount\(0) & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~90_combout\);

-- Location: LCCOMB_X40_Y29_N8
\inst4|lcd_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~89_combout\ = (!\inst4|charCount\(0) & (!\inst4|charCount\(2) & (\inst4|charCount\(4) $ (\inst4|charCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(2),
	datac => \inst4|charCount\(4),
	datad => \inst4|charCount\(3),
	combout => \inst4|lcd_data~89_combout\);

-- Location: LCCOMB_X40_Y29_N24
\inst4|lcd_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~91_combout\ = (!\inst4|charCount\(1)) # (!\inst4|charCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(3),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~91_combout\);

-- Location: LCCOMB_X40_Y29_N14
\inst4|lcd_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~92_combout\ = (\inst4|lcd_data~89_combout\) # ((\inst4|lcd_data~90_combout\ & (\inst4|charCount\(2) $ (!\inst4|lcd_data~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~90_combout\,
	datab => \inst4|charCount\(2),
	datac => \inst4|lcd_data~89_combout\,
	datad => \inst4|lcd_data~91_combout\,
	combout => \inst4|lcd_data~92_combout\);

-- Location: LCCOMB_X38_Y29_N10
\inst4|lcd_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~93_combout\ = (\inst4|lineCount\(1) & (((\inst4|lineCount\(0))))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((\inst4|lcd_data~92_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data\(2),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~92_combout\,
	combout => \inst4|lcd_data~93_combout\);

-- Location: LCCOMB_X38_Y29_N4
\inst4|lcd_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~148_combout\ = (\inst4|charCount\(4) & (\inst4|lcd_data~63_combout\ & ((\inst4|lcd_data~93_combout\)))) # (!\inst4|charCount\(4) & (((!\inst4|lcd_data~93_combout\) # (!\inst4|lcd_data~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~63_combout\,
	datab => \inst4|charCount\(4),
	datac => \inst4|lcd_data~94_combout\,
	datad => \inst4|lcd_data~93_combout\,
	combout => \inst4|lcd_data~148_combout\);

-- Location: LCCOMB_X38_Y29_N6
\inst4|lcd_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~149_combout\ = (\inst4|lineCount\(1) & (\inst4|lcd_data~148_combout\ & ((\inst4|lcd_data~88_combout\) # (\inst4|lcd_data~93_combout\)))) # (!\inst4|lineCount\(1) & (((\inst4|lcd_data~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~88_combout\,
	datac => \inst4|lcd_data~148_combout\,
	datad => \inst4|lcd_data~93_combout\,
	combout => \inst4|lcd_data~149_combout\);

-- Location: LCCOMB_X38_Y29_N12
\inst4|lcd_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~97_combout\ = (\inst4|display_state~q\ & (((!\inst4|lcd_data~38_combout\)))) # (!\inst4|display_state~q\ & ((\inst4|lcd_data~38_combout\ & (\inst4|lcd_data~96_combout\)) # (!\inst4|lcd_data~38_combout\ & ((\inst4|lcd_data~149_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~96_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~38_combout\,
	datad => \inst4|lcd_data~149_combout\,
	combout => \inst4|lcd_data~97_combout\);

-- Location: LCCOMB_X38_Y29_N26
\inst4|lcd_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~100_combout\ = (\inst4|lcd_data~41_combout\) # ((\inst4|lineCount\(0) & \inst4|lcd_data~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~41_combout\,
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~99_combout\,
	combout => \inst4|lcd_data~100_combout\);

-- Location: LCCOMB_X38_Y29_N24
\inst4|lcd_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~101_combout\ = (!\inst4|Equal23~1_combout\ & ((\inst4|lcd_data~100_combout\) # ((\inst4|lcd_data~98_combout\ & !\inst4|lineCount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~100_combout\,
	datab => \inst4|lcd_data~98_combout\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|Equal23~1_combout\,
	combout => \inst4|lcd_data~101_combout\);

-- Location: LCCOMB_X38_Y29_N30
\inst4|lcd_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~102_combout\ = (\inst4|lineCount\(1) & (((!\inst4|lineCount\(0) & !\inst4|lcd_data~101_combout\)))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((!\inst4|lcd_data~101_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data\(2),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~101_combout\,
	combout => \inst4|lcd_data~102_combout\);

-- Location: LCCOMB_X39_Y27_N30
\inst4|lcd_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~85_combout\ = (!\inst4|data_1_storage\(0) & !\inst4|data_1_storage\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|data_1_storage\(0),
	datad => \inst4|data_1_storage\(1),
	combout => \inst4|lcd_data~85_combout\);

-- Location: LCCOMB_X39_Y27_N4
\inst4|lcd_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~86_combout\ = (\inst4|lcd_data~42_combout\ & (((!\inst4|data_1_storage\(2) & \inst4|lcd_data~85_combout\)) # (!\inst4|data_1_storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(3),
	datab => \inst4|data_1_storage\(2),
	datac => \inst4|lcd_data~85_combout\,
	datad => \inst4|lcd_data~42_combout\,
	combout => \inst4|lcd_data~86_combout\);

-- Location: LCCOMB_X38_Y29_N28
\inst4|lcd_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~87_combout\ = (\inst4|Equal23~1_combout\) # ((!\inst4|lcd_data~86_combout\ & !\inst4|lcd_data~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~86_combout\,
	datab => \inst4|Equal23~1_combout\,
	datac => \inst4|lcd_data~41_combout\,
	combout => \inst4|lcd_data~87_combout\);

-- Location: LCCOMB_X38_Y29_N0
\inst4|lcd_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~103_combout\ = (\inst4|lcd_data~97_combout\ & (((\inst4|lcd_data~102_combout\)) # (!\inst4|display_state~q\))) # (!\inst4|lcd_data~97_combout\ & (\inst4|display_state~q\ & ((\inst4|lcd_data~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~97_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~102_combout\,
	datad => \inst4|lcd_data~87_combout\,
	combout => \inst4|lcd_data~103_combout\);

-- Location: FF_X38_Y29_N1
\inst4|lcd_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(2));

-- Location: LCCOMB_X36_Y27_N12
\inst5|dataStorage[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[2]~2_combout\ = !\inst4|lcd_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data\(2),
	combout => \inst5|dataStorage[2]~2_combout\);

-- Location: FF_X36_Y27_N13
\inst5|dataStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[2]~2_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(2));

-- Location: LCCOMB_X36_Y27_N26
\inst5|addressStorage~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage~3_combout\ = \inst4|lcd_posX\(2) $ (\inst4|lcd_posY\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|lcd_posX\(2),
	datad => \inst4|lcd_posY\(1),
	combout => \inst5|addressStorage~3_combout\);

-- Location: FF_X36_Y27_N27
\inst5|addressStorage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage~3_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(2));

-- Location: LCCOMB_X36_Y27_N30
\inst5|dataOut[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~23_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(2))))) # (!\inst5|state.sendingAddress~q\ & (!\inst5|dataStorage\(2) & ((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|dataStorage\(2),
	datac => \inst5|addressStorage\(2),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[2]~23_combout\);

-- Location: LCCOMB_X36_Y29_N6
\inst5|dataOut[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~24_combout\ = ((!\inst5|state.createChar3~q\ & (!\inst5|state.createChar4~q\ & !\inst5|state.createChar5~q\))) # (!\inst5|Equal8~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~10_combout\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|state.createChar4~q\,
	datad => \inst5|state.createChar5~q\,
	combout => \inst5|dataOut[2]~24_combout\);

-- Location: LCCOMB_X36_Y29_N24
\inst5|dataOut[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~25_combout\ = (!\inst5|state.init6~q\ & ((\inst5|state.init7~q\) # ((\inst5|dataOut[2]~24_combout\ & \inst5|dataOut[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[2]~24_combout\,
	datab => \inst5|state.init7~q\,
	datac => \inst5|dataOut[4]~0_combout\,
	datad => \inst5|state.init6~q\,
	combout => \inst5|dataOut[2]~25_combout\);

-- Location: LCCOMB_X35_Y31_N28
\inst5|dataOut[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~26_combout\ = (\inst5|state.init5~q\) # ((\inst5|dataOut[2]~25_combout\) # (!\inst5|dataOut[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|state.init5~q\,
	datac => \inst5|dataOut[7]~2_combout\,
	datad => \inst5|dataOut[2]~25_combout\,
	combout => \inst5|dataOut[2]~26_combout\);

-- Location: LCCOMB_X35_Y31_N6
\inst5|dataOut[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[2]~27_combout\ = (\inst5|dataOut[1]~7_combout\ & (\inst5|dataOut[2]~23_combout\)) # (!\inst5|dataOut[1]~7_combout\ & (((\inst5|dataOut[2]~26_combout\ & \inst5|state.init0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[2]~23_combout\,
	datab => \inst5|dataOut[2]~26_combout\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[2]~27_combout\);

-- Location: LCCOMB_X37_Y28_N30
\inst5|dataOut[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~29_combout\ = (!\inst5|state.createChar3~q\ & (((!\inst5|state.createChar5~q\ & !\inst5|state.createChar4~q\)) # (!\inst5|Equal8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal8~10_combout\,
	datab => \inst5|state.createChar3~q\,
	datac => \inst5|state.createChar5~q\,
	datad => \inst5|state.createChar4~q\,
	combout => \inst5|dataOut[1]~29_combout\);

-- Location: LCCOMB_X35_Y31_N20
\inst5|dataOut[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~30_combout\ = (!\inst5|state.init6~q\ & (\inst5|state.init0~q\ & !\inst5|state.init5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.init6~q\,
	datac => \inst5|state.init0~q\,
	datad => \inst5|state.init5~q\,
	combout => \inst5|dataOut[1]~30_combout\);

-- Location: LCCOMB_X36_Y31_N10
\inst5|dataOut[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~31_combout\ = (\inst5|dataOut[1]~30_combout\ & ((\inst5|state.init7~q\) # ((\inst5|dataOut[1]~29_combout\ & \inst5|dataOut[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~29_combout\,
	datab => \inst5|dataOut[1]~30_combout\,
	datac => \inst5|dataOut[4]~0_combout\,
	datad => \inst5|state.init7~q\,
	combout => \inst5|dataOut[1]~31_combout\);

-- Location: LCCOMB_X39_Y27_N22
\inst4|lcd_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~104_combout\ = (!\inst4|lcd_data~60_combout\ & ((\inst4|data_1_storage\(3)) # ((!\inst4|lcd_data~85_combout\ & \inst4|data_1_storage\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~85_combout\,
	datab => \inst4|data_1_storage\(2),
	datac => \inst4|data_1_storage\(3),
	datad => \inst4|lcd_data~60_combout\,
	combout => \inst4|lcd_data~104_combout\);

-- Location: LCCOMB_X39_Y27_N8
\inst4|lcd_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~105_combout\ = (\inst4|lcd_data~104_combout\ & ((\inst4|lcd_data~86_combout\) # ((\inst4|Equal15~1_combout\ & \inst4|Equal23~0_combout\)))) # (!\inst4|lcd_data~104_combout\ & (((\inst4|Equal15~1_combout\ & \inst4|Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~104_combout\,
	datab => \inst4|lcd_data~86_combout\,
	datac => \inst4|Equal15~1_combout\,
	datad => \inst4|Equal23~0_combout\,
	combout => \inst4|lcd_data~105_combout\);

-- Location: LCCOMB_X37_Y26_N30
\inst4|lcd_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~116_combout\ = (\inst4|data_2_storage\(3)) # ((\inst4|data_2_storage\(2) & \inst4|data_2_storage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datac => \inst4|data_2_storage\(3),
	datad => \inst4|data_2_storage\(1),
	combout => \inst4|lcd_data~116_combout\);

-- Location: LCCOMB_X37_Y26_N8
\inst4|lcd_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~117_combout\ = (\inst4|lcd_data~116_combout\ & (\inst4|lcd_data~99_combout\ & (\inst4|lineCount\(0) & !\inst4|lineCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~116_combout\,
	datab => \inst4|lcd_data~99_combout\,
	datac => \inst4|lineCount\(0),
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~117_combout\);

-- Location: LCCOMB_X38_Y26_N0
\inst4|lcd_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~118_combout\ = (\inst4|data_3_storage\(3)) # ((\inst4|data_3_storage\(1) & \inst4|data_3_storage\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(1),
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|data_3_storage\(3),
	combout => \inst4|lcd_data~118_combout\);

-- Location: LCCOMB_X38_Y26_N30
\inst4|lcd_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~119_combout\ = (\inst4|lcd_data~98_combout\ & (!\inst4|lineCount\(0) & (\inst4|lineCount\(1) & \inst4|lcd_data~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~98_combout\,
	datab => \inst4|lineCount\(0),
	datac => \inst4|lineCount\(1),
	datad => \inst4|lcd_data~118_combout\,
	combout => \inst4|lcd_data~119_combout\);

-- Location: LCCOMB_X40_Y27_N28
\inst4|lcd_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~115_combout\ = (\inst4|lineCount\(1) & (((!\inst4|lineCount\(0) & \inst4|lcd_data~41_combout\)))) # (!\inst4|lineCount\(1) & ((\inst4|lineCount\(0) & ((\inst4|lcd_data~41_combout\))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data\(1),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~41_combout\,
	combout => \inst4|lcd_data~115_combout\);

-- Location: LCCOMB_X40_Y27_N22
\inst4|lcd_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~120_combout\ = (\inst4|lcd_data~115_combout\) # ((!\inst4|lcd_data~44_combout\ & ((\inst4|lcd_data~117_combout\) # (\inst4|lcd_data~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~44_combout\,
	datab => \inst4|lcd_data~117_combout\,
	datac => \inst4|lcd_data~119_combout\,
	datad => \inst4|lcd_data~115_combout\,
	combout => \inst4|lcd_data~120_combout\);

-- Location: LCCOMB_X41_Y29_N18
\inst4|lcd_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~144_combout\ = (\inst4|lcd_data~90_combout\ & ((\inst4|charCount\(1) & ((!\inst4|charCount\(2)) # (!\inst4|charCount\(3)))) # (!\inst4|charCount\(1) & ((\inst4|charCount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|lcd_data~90_combout\,
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~144_combout\);

-- Location: LCCOMB_X41_Y29_N14
\inst4|lcd_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~113_combout\ = (\inst4|lcd_data~144_combout\) # ((\inst4|Equal17~0_combout\ & (!\inst4|charCount\(1) & !\inst4|charCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal17~0_combout\,
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|lcd_data~144_combout\,
	combout => \inst4|lcd_data~113_combout\);

-- Location: LCCOMB_X39_Y29_N12
\inst4|lcd_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~106_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(1) $ ((!\inst4|charCount\(0))))) # (!\inst4|charCount\(3) & (\inst4|charCount\(1) & (!\inst4|charCount\(0) & !\inst4|charCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(0),
	datac => \inst4|charCount\(3),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~106_combout\);

-- Location: LCCOMB_X39_Y29_N14
\inst4|lcd_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~107_combout\ = (\inst4|lcd_data~106_combout\ & (((\inst4|Equal17~0_combout\ & \inst4|lcd_data~65_combout\)) # (!\inst4|charCount\(4)))) # (!\inst4|lcd_data~106_combout\ & (\inst4|Equal17~0_combout\ & (\inst4|lcd_data~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~106_combout\,
	datab => \inst4|Equal17~0_combout\,
	datac => \inst4|lcd_data~65_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~107_combout\);

-- Location: LCCOMB_X36_Y29_N30
\inst4|lcd_data~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~28_combout\ = (\inst4|charCount\(3) & (!\inst4|charCount\(0) & (!\inst4|charCount\(2) & !\inst4|charCount\(1)))) # (!\inst4|charCount\(3) & (((!\inst4|charCount\(0) & !\inst4|charCount\(2))) # (!\inst4|charCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~28_combout\);

-- Location: LCCOMB_X36_Y29_N28
\inst4|lcd_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~147_combout\ = (\inst4|lcd_data~28_combout\ & !\inst4|charCount\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|lcd_data~28_combout\,
	datad => \inst4|charCount\(4),
	combout => \inst4|lcd_data~147_combout\);

-- Location: LCCOMB_X40_Y27_N30
\inst4|lcd_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~108_combout\ = (\inst4|lineCount\(0) & (((\inst4|lineCount\(1))))) # (!\inst4|lineCount\(0) & ((\inst4|lineCount\(1) & ((\inst4|lcd_data~147_combout\))) # (!\inst4|lineCount\(1) & (\inst4|lcd_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lcd_data\(1),
	datac => \inst4|lcd_data~147_combout\,
	datad => \inst4|lineCount\(1),
	combout => \inst4|lcd_data~108_combout\);

-- Location: LCCOMB_X36_Y29_N26
\inst4|lcd_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~109_combout\ = (\inst4|charCount\(0) & ((\inst4|charCount\(3) & ((\inst4|charCount\(2)) # (\inst4|charCount\(1)))) # (!\inst4|charCount\(3) & (!\inst4|charCount\(2))))) # (!\inst4|charCount\(0) & (\inst4|charCount\(3) $ 
-- (((\inst4|charCount\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(2),
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_data~109_combout\);

-- Location: LCCOMB_X36_Y29_N20
\inst4|lcd_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~110_combout\ = (\inst4|charCount\(4) & ((\inst4|lcd_data~75_combout\))) # (!\inst4|charCount\(4) & (\inst4|lcd_data~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|charCount\(4),
	datac => \inst4|lcd_data~109_combout\,
	datad => \inst4|lcd_data~75_combout\,
	combout => \inst4|lcd_data~110_combout\);

-- Location: LCCOMB_X40_Y27_N24
\inst4|lcd_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~111_combout\ = (\inst4|lineCount\(0) & ((\inst4|lcd_data~108_combout\ & ((\inst4|lcd_data~110_combout\))) # (!\inst4|lcd_data~108_combout\ & (\inst4|lcd_data~107_combout\)))) # (!\inst4|lineCount\(0) & (((\inst4|lcd_data~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(0),
	datab => \inst4|lcd_data~107_combout\,
	datac => \inst4|lcd_data~108_combout\,
	datad => \inst4|lcd_data~110_combout\,
	combout => \inst4|lcd_data~111_combout\);

-- Location: LCCOMB_X40_Y27_N6
\inst4|lcd_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~114_combout\ = (\inst4|lcd_data~38_combout\ & (!\inst4|display_state~q\ & (\inst4|lcd_data~113_combout\))) # (!\inst4|lcd_data~38_combout\ & ((\inst4|display_state~q\) # ((\inst4|lcd_data~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~38_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~113_combout\,
	datad => \inst4|lcd_data~111_combout\,
	combout => \inst4|lcd_data~114_combout\);

-- Location: LCCOMB_X40_Y27_N20
\inst4|lcd_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~121_combout\ = (\inst4|display_state~q\ & ((\inst4|lcd_data~114_combout\ & ((\inst4|lcd_data~120_combout\))) # (!\inst4|lcd_data~114_combout\ & (\inst4|lcd_data~105_combout\)))) # (!\inst4|display_state~q\ & 
-- (((\inst4|lcd_data~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~105_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~120_combout\,
	datad => \inst4|lcd_data~114_combout\,
	combout => \inst4|lcd_data~121_combout\);

-- Location: FF_X40_Y27_N21
\inst4|lcd_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~121_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(1));

-- Location: LCCOMB_X36_Y27_N24
\inst5|dataStorage[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataStorage[1]~3_combout\ = !\inst4|lcd_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_data\(1),
	combout => \inst5|dataStorage[1]~3_combout\);

-- Location: FF_X36_Y27_N25
\inst5|dataStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|dataStorage[1]~3_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(1));

-- Location: LCCOMB_X36_Y27_N22
\inst4|lcd_posX[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_posX[1]~feeder_combout\ = \inst4|charCount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|charCount\(1),
	combout => \inst4|lcd_posX[1]~feeder_combout\);

-- Location: FF_X36_Y27_N23
\inst4|lcd_posX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_posX[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(1));

-- Location: FF_X36_Y27_N17
\inst5|addressStorage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_posX\(1),
	sload => VCC,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(1));

-- Location: LCCOMB_X36_Y27_N16
\inst5|dataOut[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~28_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(1))))) # (!\inst5|state.sendingAddress~q\ & (!\inst5|dataStorage\(1) & ((\inst5|state.sendingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|dataStorage\(1),
	datac => \inst5|addressStorage\(1),
	datad => \inst5|state.sendingData~q\,
	combout => \inst5|dataOut[1]~28_combout\);

-- Location: LCCOMB_X36_Y31_N16
\inst5|dataOut[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[1]~32_combout\ = (\inst5|dataOut[1]~7_combout\ & (((\inst5|dataOut[1]~28_combout\)))) # (!\inst5|dataOut[1]~7_combout\ & (\inst5|dataOut[1]~31_combout\ & (\inst5|dataOut[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[1]~31_combout\,
	datab => \inst5|dataOut[1]~7_combout\,
	datac => \inst5|dataOut[7]~2_combout\,
	datad => \inst5|dataOut[1]~28_combout\,
	combout => \inst5|dataOut[1]~32_combout\);

-- Location: LCCOMB_X41_Y29_N12
\inst4|lcd_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~126_combout\ = (\inst4|charCount\(3) & (\inst4|charCount\(1) & ((\inst4|charCount\(2))))) # (!\inst4|charCount\(3) & ((\inst4|charCount\(2) & ((\inst4|charCount\(0)))) # (!\inst4|charCount\(2) & (\inst4|charCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~126_combout\);

-- Location: LCCOMB_X41_Y29_N6
\inst4|lcd_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~127_combout\ = (\inst4|charCount\(4) & (!\inst4|charCount\(1) & (\inst4|Equal17~0_combout\))) # (!\inst4|charCount\(4) & ((\inst4|lcd_data~126_combout\) # ((!\inst4|charCount\(1) & \inst4|Equal17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(1),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~126_combout\,
	combout => \inst4|lcd_data~127_combout\);

-- Location: LCCOMB_X41_Y29_N28
\inst4|lcd_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~124_combout\ = (\inst4|charCount\(0) & (!\inst4|charCount\(4) & ((\inst4|lcd_data~91_combout\)))) # (!\inst4|charCount\(0) & ((\inst4|Equal17~0_combout\) # ((!\inst4|charCount\(4) & !\inst4|lcd_data~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(4),
	datab => \inst4|charCount\(0),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~91_combout\,
	combout => \inst4|lcd_data~124_combout\);

-- Location: LCCOMB_X41_Y29_N30
\inst4|lcd_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~125_combout\ = (\inst4|lineCount\(0) & (((\inst4|lineCount\(1)) # (\inst4|lcd_data~124_combout\)))) # (!\inst4|lineCount\(0) & (\inst4|lcd_data\(0) & (!\inst4|lineCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data\(0),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lineCount\(1),
	datad => \inst4|lcd_data~124_combout\,
	combout => \inst4|lcd_data~125_combout\);

-- Location: LCCOMB_X41_Y29_N24
\inst4|lcd_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~122_combout\ = (!\inst4|charCount\(3) & (\inst4|charCount\(0) & ((\inst4|charCount\(1)) # (\inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(3),
	datab => \inst4|charCount\(1),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~122_combout\);

-- Location: LCCOMB_X41_Y29_N2
\inst4|lcd_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~123_combout\ = (!\inst4|charCount\(4) & \inst4|lcd_data~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|charCount\(4),
	datad => \inst4|lcd_data~122_combout\,
	combout => \inst4|lcd_data~123_combout\);

-- Location: LCCOMB_X41_Y29_N8
\inst4|lcd_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~128_combout\ = (\inst4|lineCount\(1) & ((\inst4|lcd_data~125_combout\ & (\inst4|lcd_data~127_combout\)) # (!\inst4|lcd_data~125_combout\ & ((\inst4|lcd_data~123_combout\))))) # (!\inst4|lineCount\(1) & (((\inst4|lcd_data~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~127_combout\,
	datab => \inst4|lineCount\(1),
	datac => \inst4|lcd_data~125_combout\,
	datad => \inst4|lcd_data~123_combout\,
	combout => \inst4|lcd_data~128_combout\);

-- Location: LCCOMB_X37_Y26_N0
\inst4|lcd_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~138_combout\ = (\inst4|data_2_storage\(3)) # ((\inst4|data_2_storage\(2) & !\inst4|data_2_storage\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_2_storage\(2),
	datac => \inst4|data_2_storage\(3),
	datad => \inst4|data_2_storage\(1),
	combout => \inst4|lcd_data~138_combout\);

-- Location: LCCOMB_X39_Y27_N28
\inst4|lcd_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~139_combout\ = (\inst4|lcd_data~99_combout\ & (((\inst4|charCount\(0) & \inst4|charCount\(1))) # (!\inst4|Equal23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(0),
	datab => \inst4|charCount\(1),
	datac => \inst4|lcd_data~99_combout\,
	datad => \inst4|Equal23~0_combout\,
	combout => \inst4|lcd_data~139_combout\);

-- Location: LCCOMB_X39_Y27_N6
\inst4|lcd_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~140_combout\ = (\inst4|lcd_data~44_combout\ & (((\inst4|lcd_data~138_combout\ & \inst4|lcd_data~139_combout\)) # (!\inst4|charCount\(1)))) # (!\inst4|lcd_data~44_combout\ & (((\inst4|lcd_data~138_combout\ & \inst4|lcd_data~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~44_combout\,
	datab => \inst4|charCount\(1),
	datac => \inst4|lcd_data~138_combout\,
	datad => \inst4|lcd_data~139_combout\,
	combout => \inst4|lcd_data~140_combout\);

-- Location: LCCOMB_X38_Y26_N2
\inst4|lcd_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~135_combout\ = (!\inst4|lcd_data~44_combout\ & ((\inst4|data_3_storage\(3)) # ((!\inst4|data_3_storage\(1) & \inst4|data_3_storage\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_3_storage\(1),
	datab => \inst4|data_3_storage\(3),
	datac => \inst4|data_3_storage\(2),
	datad => \inst4|lcd_data~44_combout\,
	combout => \inst4|lcd_data~135_combout\);

-- Location: LCCOMB_X39_Y27_N10
\inst4|lcd_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~136_combout\ = (\inst4|lineCount\(1) & ((\inst4|lcd_data~60_combout\) # ((\inst4|lcd_data~98_combout\ & \inst4|lcd_data~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data~98_combout\,
	datac => \inst4|lcd_data~135_combout\,
	datad => \inst4|lcd_data~60_combout\,
	combout => \inst4|lcd_data~136_combout\);

-- Location: LCCOMB_X40_Y27_N18
\inst4|lcd_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~137_combout\ = (!\inst4|lineCount\(0) & ((\inst4|lcd_data~136_combout\) # ((!\inst4|lineCount\(1) & \inst4|lcd_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lcd_data\(0),
	datac => \inst4|lineCount\(0),
	datad => \inst4|lcd_data~136_combout\,
	combout => \inst4|lcd_data~137_combout\);

-- Location: LCCOMB_X40_Y27_N8
\inst4|lcd_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~141_combout\ = (\inst4|lcd_data~137_combout\) # ((!\inst4|lineCount\(1) & (\inst4|lineCount\(0) & \inst4|lcd_data~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lineCount\(1),
	datab => \inst4|lineCount\(0),
	datac => \inst4|lcd_data~140_combout\,
	datad => \inst4|lcd_data~137_combout\,
	combout => \inst4|lcd_data~141_combout\);

-- Location: LCCOMB_X40_Y29_N26
\inst4|lcd_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~131_combout\ = (\inst4|charCount\(1) & ((\inst4|charCount\(3) & (\inst4|charCount\(0) & \inst4|charCount\(2))) # (!\inst4|charCount\(3) & (!\inst4|charCount\(0))))) # (!\inst4|charCount\(1) & ((\inst4|charCount\(3)) # 
-- ((\inst4|charCount\(0) & \inst4|charCount\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|charCount\(1),
	datab => \inst4|charCount\(3),
	datac => \inst4|charCount\(0),
	datad => \inst4|charCount\(2),
	combout => \inst4|lcd_data~131_combout\);

-- Location: LCCOMB_X39_Y29_N2
\inst4|lcd_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~133_combout\ = (\inst4|lcd_data~132_combout\ & (!\inst4|charCount\(4) & ((\inst4|lcd_data~131_combout\)))) # (!\inst4|lcd_data~132_combout\ & ((\inst4|Equal17~0_combout\) # ((!\inst4|charCount\(4) & \inst4|lcd_data~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~132_combout\,
	datab => \inst4|charCount\(4),
	datac => \inst4|Equal17~0_combout\,
	datad => \inst4|lcd_data~131_combout\,
	combout => \inst4|lcd_data~133_combout\);

-- Location: LCCOMB_X39_Y27_N14
\inst4|lcd_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~129_combout\ = (\inst4|data_1_storage\(3)) # ((\inst4|data_1_storage\(1) & ((\inst4|data_1_storage\(0)))) # (!\inst4|data_1_storage\(1) & (\inst4|data_1_storage\(2) & !\inst4|data_1_storage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|data_1_storage\(1),
	datab => \inst4|data_1_storage\(2),
	datac => \inst4|data_1_storage\(3),
	datad => \inst4|data_1_storage\(0),
	combout => \inst4|lcd_data~129_combout\);

-- Location: LCCOMB_X39_Y27_N12
\inst4|lcd_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~130_combout\ = (\inst4|lcd_data~60_combout\) # ((\inst4|lcd_data~86_combout\ & (\inst4|lcd_data~129_combout\ & !\inst4|lcd_data~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~60_combout\,
	datab => \inst4|lcd_data~86_combout\,
	datac => \inst4|lcd_data~129_combout\,
	datad => \inst4|lcd_data~44_combout\,
	combout => \inst4|lcd_data~130_combout\);

-- Location: LCCOMB_X40_Y27_N12
\inst4|lcd_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~134_combout\ = (\inst4|lcd_data~38_combout\ & ((\inst4|display_state~q\ & ((\inst4|lcd_data~130_combout\))) # (!\inst4|display_state~q\ & (\inst4|lcd_data~133_combout\)))) # (!\inst4|lcd_data~38_combout\ & (\inst4|display_state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~38_combout\,
	datab => \inst4|display_state~q\,
	datac => \inst4|lcd_data~133_combout\,
	datad => \inst4|lcd_data~130_combout\,
	combout => \inst4|lcd_data~134_combout\);

-- Location: LCCOMB_X40_Y27_N2
\inst4|lcd_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|lcd_data~142_combout\ = (\inst4|lcd_data~38_combout\ & (((\inst4|lcd_data~134_combout\)))) # (!\inst4|lcd_data~38_combout\ & ((\inst4|lcd_data~134_combout\ & ((\inst4|lcd_data~141_combout\))) # (!\inst4|lcd_data~134_combout\ & 
-- (\inst4|lcd_data~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|lcd_data~38_combout\,
	datab => \inst4|lcd_data~128_combout\,
	datac => \inst4|lcd_data~141_combout\,
	datad => \inst4|lcd_data~134_combout\,
	combout => \inst4|lcd_data~142_combout\);

-- Location: FF_X40_Y27_N3
\inst4|lcd_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst4|lcd_data~142_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_data\(0));

-- Location: FF_X35_Y31_N13
\inst5|dataStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|lcd_data\(0),
	sload => VCC,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|dataStorage\(0));

-- Location: FF_X36_Y31_N19
\inst4|lcd_posX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \inst4|charCount\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|lcd_posX\(0));

-- Location: LCCOMB_X35_Y31_N26
\inst5|addressStorage[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|addressStorage[0]~feeder_combout\ = \inst4|lcd_posX\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|lcd_posX\(0),
	combout => \inst5|addressStorage[0]~feeder_combout\);

-- Location: FF_X35_Y31_N27
\inst5|addressStorage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \inst5|addressStorage[0]~feeder_combout\,
	ena => \inst5|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|addressStorage\(0));

-- Location: LCCOMB_X35_Y31_N12
\inst5|dataOut[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~34_combout\ = (\inst5|state.sendingAddress~q\ & (((\inst5|addressStorage\(0))))) # (!\inst5|state.sendingAddress~q\ & (\inst5|state.sendingData~q\ & (\inst5|dataStorage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.sendingAddress~q\,
	datab => \inst5|state.sendingData~q\,
	datac => \inst5|dataStorage\(0),
	datad => \inst5|addressStorage\(0),
	combout => \inst5|dataOut[0]~34_combout\);

-- Location: LCCOMB_X36_Y31_N22
\inst5|dataOut[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~33_combout\ = (\inst5|state.init6~q\) # ((\inst5|dataOut[0]~6_combout\ & ((!\inst5|Equal8~10_combout\) # (!\inst5|state.createChar5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|state.createChar5~q\,
	datab => \inst5|Equal8~10_combout\,
	datac => \inst5|state.init6~q\,
	datad => \inst5|dataOut[0]~6_combout\,
	combout => \inst5|dataOut[0]~33_combout\);

-- Location: LCCOMB_X36_Y31_N4
\inst5|dataOut[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|dataOut[0]~35_combout\ = (\inst5|dataOut[0]~34_combout\ & ((\inst5|dataOut[1]~7_combout\) # ((\inst5|dataOut[6]~9_combout\ & \inst5|dataOut[0]~33_combout\)))) # (!\inst5|dataOut[0]~34_combout\ & (\inst5|dataOut[6]~9_combout\ & 
-- (\inst5|dataOut[0]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dataOut[0]~34_combout\,
	datab => \inst5|dataOut[6]~9_combout\,
	datac => \inst5|dataOut[0]~33_combout\,
	datad => \inst5|dataOut[1]~7_combout\,
	combout => \inst5|dataOut[0]~35_combout\);

ww_lcd_rs <= \lcd_rs~output_o\;

ww_lcd_rw <= \lcd_rw~output_o\;

ww_lcd_e <= \lcd_e~output_o\;

ww_lcd_data(7) <= \lcd_data[7]~output_o\;

ww_lcd_data(6) <= \lcd_data[6]~output_o\;

ww_lcd_data(5) <= \lcd_data[5]~output_o\;

ww_lcd_data(4) <= \lcd_data[4]~output_o\;

ww_lcd_data(3) <= \lcd_data[3]~output_o\;

ww_lcd_data(2) <= \lcd_data[2]~output_o\;

ww_lcd_data(1) <= \lcd_data[1]~output_o\;

ww_lcd_data(0) <= \lcd_data[0]~output_o\;

us_1 <= \us_1~output_o\;
END structure;


