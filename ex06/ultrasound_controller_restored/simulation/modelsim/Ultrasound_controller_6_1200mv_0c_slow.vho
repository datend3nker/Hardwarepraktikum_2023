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

-- DATE "06/14/2023 21:48:47"

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

ENTITY 	motor_controller IS
    PORT (
	clk_50 : IN std_logic;
	speed : IN std_logic_vector(9 DOWNTO 0);
	direction : IN std_logic;
	motor_signal1 : BUFFER std_logic;
	motor_signal2 : BUFFER std_logic
	);
END motor_controller;

-- Design Ports Information
-- motor_signal1	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- motor_signal2	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- direction	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[8]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- speed[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF motor_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50 : std_logic;
SIGNAL ww_speed : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_direction : std_logic;
SIGNAL ww_motor_signal1 : std_logic;
SIGNAL ww_motor_signal2 : std_logic;
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \motor_signal1~output_o\ : std_logic;
SIGNAL \motor_signal2~output_o\ : std_logic;
SIGNAL \direction~input_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~31_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \counter[9]~50\ : std_logic;
SIGNAL \counter[10]~51_combout\ : std_logic;
SIGNAL \counter[10]~52\ : std_logic;
SIGNAL \counter[11]~53_combout\ : std_logic;
SIGNAL \counter[11]~54\ : std_logic;
SIGNAL \counter[12]~55_combout\ : std_logic;
SIGNAL \counter[12]~56\ : std_logic;
SIGNAL \counter[13]~57_combout\ : std_logic;
SIGNAL \counter[13]~58\ : std_logic;
SIGNAL \counter[14]~59_combout\ : std_logic;
SIGNAL \counter[14]~60\ : std_logic;
SIGNAL \counter[15]~61_combout\ : std_logic;
SIGNAL \counter[15]~62\ : std_logic;
SIGNAL \counter[16]~63_combout\ : std_logic;
SIGNAL \counter[16]~64\ : std_logic;
SIGNAL \counter[17]~65_combout\ : std_logic;
SIGNAL \counter[17]~66\ : std_logic;
SIGNAL \counter[18]~67_combout\ : std_logic;
SIGNAL \counter[18]~68\ : std_logic;
SIGNAL \counter[19]~69_combout\ : std_logic;
SIGNAL \counter[19]~70\ : std_logic;
SIGNAL \counter[20]~71_combout\ : std_logic;
SIGNAL \counter[20]~72\ : std_logic;
SIGNAL \counter[21]~73_combout\ : std_logic;
SIGNAL \counter[21]~74\ : std_logic;
SIGNAL \counter[22]~75_combout\ : std_logic;
SIGNAL \counter[22]~76\ : std_logic;
SIGNAL \counter[23]~77_combout\ : std_logic;
SIGNAL \counter[23]~78\ : std_logic;
SIGNAL \counter[24]~79_combout\ : std_logic;
SIGNAL \counter[24]~80\ : std_logic;
SIGNAL \counter[25]~81_combout\ : std_logic;
SIGNAL \counter[25]~82\ : std_logic;
SIGNAL \counter[26]~83_combout\ : std_logic;
SIGNAL \counter[26]~84\ : std_logic;
SIGNAL \counter[27]~85_combout\ : std_logic;
SIGNAL \counter[27]~86\ : std_logic;
SIGNAL \counter[28]~87_combout\ : std_logic;
SIGNAL \counter[28]~88\ : std_logic;
SIGNAL \counter[29]~89_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \counter[29]~90\ : std_logic;
SIGNAL \counter[30]~91_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \counter[0]~32\ : std_logic;
SIGNAL \counter[1]~33_combout\ : std_logic;
SIGNAL \counter[1]~34\ : std_logic;
SIGNAL \counter[2]~35_combout\ : std_logic;
SIGNAL \counter[2]~36\ : std_logic;
SIGNAL \counter[3]~37_combout\ : std_logic;
SIGNAL \counter[3]~38\ : std_logic;
SIGNAL \counter[4]~39_combout\ : std_logic;
SIGNAL \counter[4]~40\ : std_logic;
SIGNAL \counter[5]~41_combout\ : std_logic;
SIGNAL \counter[5]~42\ : std_logic;
SIGNAL \counter[6]~43_combout\ : std_logic;
SIGNAL \counter[6]~44\ : std_logic;
SIGNAL \counter[7]~45_combout\ : std_logic;
SIGNAL \counter[7]~46\ : std_logic;
SIGNAL \counter[8]~47_combout\ : std_logic;
SIGNAL \counter[8]~48\ : std_logic;
SIGNAL \counter[9]~49_combout\ : std_logic;
SIGNAL \speed[9]~input_o\ : std_logic;
SIGNAL \speed[8]~input_o\ : std_logic;
SIGNAL \speed[7]~input_o\ : std_logic;
SIGNAL \speed[6]~input_o\ : std_logic;
SIGNAL \speed[5]~input_o\ : std_logic;
SIGNAL \speed[4]~input_o\ : std_logic;
SIGNAL \speed[3]~input_o\ : std_logic;
SIGNAL \speed[2]~input_o\ : std_logic;
SIGNAL \speed[1]~input_o\ : std_logic;
SIGNAL \speed[0]~input_o\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~17_cout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \LessThan1~20_combout\ : std_logic;
SIGNAL \motor_signal1~0_combout\ : std_logic;
SIGNAL \motor_signal2~0_combout\ : std_logic;
SIGNAL counter : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_speed <= speed;
ww_direction <= direction;
motor_signal1 <= ww_motor_signal1;
motor_signal2 <= ww_motor_signal2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y30_N2
\motor_signal1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_signal1~0_combout\,
	devoe => ww_devoe,
	o => \motor_signal1~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\motor_signal2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_signal2~0_combout\,
	devoe => ww_devoe,
	o => \motor_signal2~output_o\);

-- Location: IOIBUF_X53_Y17_N8
\direction~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_direction,
	o => \direction~input_o\);

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

-- Location: LCCOMB_X48_Y31_N2
\counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~31_combout\ = counter(0) $ (VCC)
-- \counter[0]~32\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~31_combout\,
	cout => \counter[0]~32\);

-- Location: LCCOMB_X49_Y30_N14
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (((!counter(2)) # (!counter(9))) # (!counter(1))) # (!counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(1),
	datac => counter(9),
	datad => counter(2),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X49_Y30_N8
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((!counter(5)) # (!counter(4))) # (!counter(7))) # (!counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => counter(4),
	datad => counter(5),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X48_Y31_N20
\counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~49_combout\ = (counter(9) & (!\counter[8]~48\)) # (!counter(9) & ((\counter[8]~48\) # (GND)))
-- \counter[9]~50\ = CARRY((!\counter[8]~48\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~48\,
	combout => \counter[9]~49_combout\,
	cout => \counter[9]~50\);

-- Location: LCCOMB_X48_Y31_N22
\counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~51_combout\ = (counter(10) & (\counter[9]~50\ $ (GND))) # (!counter(10) & (!\counter[9]~50\ & VCC))
-- \counter[10]~52\ = CARRY((counter(10) & !\counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~50\,
	combout => \counter[10]~51_combout\,
	cout => \counter[10]~52\);

-- Location: FF_X48_Y31_N23
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[10]~51_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X48_Y31_N24
\counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~53_combout\ = (counter(11) & (!\counter[10]~52\)) # (!counter(11) & ((\counter[10]~52\) # (GND)))
-- \counter[11]~54\ = CARRY((!\counter[10]~52\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~52\,
	combout => \counter[11]~53_combout\,
	cout => \counter[11]~54\);

-- Location: FF_X48_Y31_N25
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[11]~53_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X48_Y31_N26
\counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~55_combout\ = (counter(12) & (\counter[11]~54\ $ (GND))) # (!counter(12) & (!\counter[11]~54\ & VCC))
-- \counter[12]~56\ = CARRY((counter(12) & !\counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~54\,
	combout => \counter[12]~55_combout\,
	cout => \counter[12]~56\);

-- Location: FF_X48_Y31_N27
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[12]~55_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X48_Y31_N28
\counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~57_combout\ = (counter(13) & (!\counter[12]~56\)) # (!counter(13) & ((\counter[12]~56\) # (GND)))
-- \counter[13]~58\ = CARRY((!\counter[12]~56\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~56\,
	combout => \counter[13]~57_combout\,
	cout => \counter[13]~58\);

-- Location: FF_X48_Y31_N29
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[13]~57_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X48_Y31_N30
\counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~59_combout\ = (counter(14) & (\counter[13]~58\ $ (GND))) # (!counter(14) & (!\counter[13]~58\ & VCC))
-- \counter[14]~60\ = CARRY((counter(14) & !\counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~58\,
	combout => \counter[14]~59_combout\,
	cout => \counter[14]~60\);

-- Location: FF_X49_Y30_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \counter[14]~59_combout\,
	sclr => \LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X48_Y30_N0
\counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~61_combout\ = (counter(15) & (!\counter[14]~60\)) # (!counter(15) & ((\counter[14]~60\) # (GND)))
-- \counter[15]~62\ = CARRY((!\counter[14]~60\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~60\,
	combout => \counter[15]~61_combout\,
	cout => \counter[15]~62\);

-- Location: FF_X48_Y30_N1
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[15]~61_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X48_Y30_N2
\counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~63_combout\ = (counter(16) & (\counter[15]~62\ $ (GND))) # (!counter(16) & (!\counter[15]~62\ & VCC))
-- \counter[16]~64\ = CARRY((counter(16) & !\counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~62\,
	combout => \counter[16]~63_combout\,
	cout => \counter[16]~64\);

-- Location: FF_X48_Y30_N3
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[16]~63_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X48_Y30_N4
\counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~65_combout\ = (counter(17) & (!\counter[16]~64\)) # (!counter(17) & ((\counter[16]~64\) # (GND)))
-- \counter[17]~66\ = CARRY((!\counter[16]~64\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~64\,
	combout => \counter[17]~65_combout\,
	cout => \counter[17]~66\);

-- Location: FF_X48_Y30_N5
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[17]~65_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X48_Y30_N6
\counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~67_combout\ = (counter(18) & (\counter[17]~66\ $ (GND))) # (!counter(18) & (!\counter[17]~66\ & VCC))
-- \counter[18]~68\ = CARRY((counter(18) & !\counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~66\,
	combout => \counter[18]~67_combout\,
	cout => \counter[18]~68\);

-- Location: FF_X48_Y30_N7
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[18]~67_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X48_Y30_N8
\counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~69_combout\ = (counter(19) & (!\counter[18]~68\)) # (!counter(19) & ((\counter[18]~68\) # (GND)))
-- \counter[19]~70\ = CARRY((!\counter[18]~68\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~68\,
	combout => \counter[19]~69_combout\,
	cout => \counter[19]~70\);

-- Location: FF_X48_Y30_N9
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[19]~69_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X48_Y30_N10
\counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~71_combout\ = (counter(20) & (\counter[19]~70\ $ (GND))) # (!counter(20) & (!\counter[19]~70\ & VCC))
-- \counter[20]~72\ = CARRY((counter(20) & !\counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~70\,
	combout => \counter[20]~71_combout\,
	cout => \counter[20]~72\);

-- Location: FF_X48_Y30_N11
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[20]~71_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X48_Y30_N12
\counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~73_combout\ = (counter(21) & (!\counter[20]~72\)) # (!counter(21) & ((\counter[20]~72\) # (GND)))
-- \counter[21]~74\ = CARRY((!\counter[20]~72\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~72\,
	combout => \counter[21]~73_combout\,
	cout => \counter[21]~74\);

-- Location: FF_X48_Y30_N13
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[21]~73_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X48_Y30_N14
\counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~75_combout\ = (counter(22) & (\counter[21]~74\ $ (GND))) # (!counter(22) & (!\counter[21]~74\ & VCC))
-- \counter[22]~76\ = CARRY((counter(22) & !\counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~74\,
	combout => \counter[22]~75_combout\,
	cout => \counter[22]~76\);

-- Location: FF_X48_Y30_N15
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[22]~75_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X48_Y30_N16
\counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~77_combout\ = (counter(23) & (!\counter[22]~76\)) # (!counter(23) & ((\counter[22]~76\) # (GND)))
-- \counter[23]~78\ = CARRY((!\counter[22]~76\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~76\,
	combout => \counter[23]~77_combout\,
	cout => \counter[23]~78\);

-- Location: FF_X48_Y30_N17
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[23]~77_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X48_Y30_N18
\counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~79_combout\ = (counter(24) & (\counter[23]~78\ $ (GND))) # (!counter(24) & (!\counter[23]~78\ & VCC))
-- \counter[24]~80\ = CARRY((counter(24) & !\counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~78\,
	combout => \counter[24]~79_combout\,
	cout => \counter[24]~80\);

-- Location: FF_X48_Y30_N19
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[24]~79_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X48_Y30_N20
\counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[25]~81_combout\ = (counter(25) & (!\counter[24]~80\)) # (!counter(25) & ((\counter[24]~80\) # (GND)))
-- \counter[25]~82\ = CARRY((!\counter[24]~80\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~80\,
	combout => \counter[25]~81_combout\,
	cout => \counter[25]~82\);

-- Location: FF_X48_Y30_N21
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[25]~81_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X48_Y30_N22
\counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[26]~83_combout\ = (counter(26) & (\counter[25]~82\ $ (GND))) # (!counter(26) & (!\counter[25]~82\ & VCC))
-- \counter[26]~84\ = CARRY((counter(26) & !\counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datad => VCC,
	cin => \counter[25]~82\,
	combout => \counter[26]~83_combout\,
	cout => \counter[26]~84\);

-- Location: FF_X48_Y30_N23
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[26]~83_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X48_Y30_N24
\counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[27]~85_combout\ = (counter(27) & (!\counter[26]~84\)) # (!counter(27) & ((\counter[26]~84\) # (GND)))
-- \counter[27]~86\ = CARRY((!\counter[26]~84\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \counter[26]~84\,
	combout => \counter[27]~85_combout\,
	cout => \counter[27]~86\);

-- Location: FF_X48_Y30_N25
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[27]~85_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X48_Y30_N26
\counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[28]~87_combout\ = (counter(28) & (\counter[27]~86\ $ (GND))) # (!counter(28) & (!\counter[27]~86\ & VCC))
-- \counter[28]~88\ = CARRY((counter(28) & !\counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \counter[27]~86\,
	combout => \counter[28]~87_combout\,
	cout => \counter[28]~88\);

-- Location: FF_X48_Y30_N27
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[28]~87_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X48_Y30_N28
\counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[29]~89_combout\ = (counter(29) & (!\counter[28]~88\)) # (!counter(29) & ((\counter[28]~88\) # (GND)))
-- \counter[29]~90\ = CARRY((!\counter[28]~88\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \counter[28]~88\,
	combout => \counter[29]~89_combout\,
	cout => \counter[29]~90\);

-- Location: FF_X48_Y30_N29
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[29]~89_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X49_Y30_N10
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!counter(28) & (!counter(27) & (!counter(29) & !counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datab => counter(27),
	datac => counter(29),
	datad => counter(26),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X48_Y30_N30
\counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[30]~91_combout\ = counter(30) $ (!\counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(30),
	cin => \counter[29]~90\,
	combout => \counter[30]~91_combout\);

-- Location: FF_X48_Y30_N31
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[30]~91_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X49_Y30_N22
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!counter(15) & (!counter(14) & (!counter(17) & !counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(14),
	datac => counter(17),
	datad => counter(16),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y30_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter(20) & (!counter(18) & (!counter(21) & !counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(18),
	datac => counter(21),
	datad => counter(19),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y30_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counter(22) & (!counter(24) & (!counter(23) & !counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(24),
	datac => counter(23),
	datad => counter(25),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y31_N0
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(12) & (!counter(13) & (!counter(10) & !counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(13),
	datac => counter(10),
	datad => counter(11),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y30_N24
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & (\LessThan0~3_combout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y30_N20
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\ & (!counter(30) & \LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datac => counter(30),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y30_N2
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ((counter(8) & (!\LessThan0~7_combout\ & !\LessThan0~8_combout\))) # (!\LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~8_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~9_combout\);

-- Location: FF_X48_Y31_N3
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[0]~31_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X48_Y31_N4
\counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~33_combout\ = (counter(1) & (!\counter[0]~32\)) # (!counter(1) & ((\counter[0]~32\) # (GND)))
-- \counter[1]~34\ = CARRY((!\counter[0]~32\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~32\,
	combout => \counter[1]~33_combout\,
	cout => \counter[1]~34\);

-- Location: FF_X48_Y31_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[1]~33_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X48_Y31_N6
\counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~35_combout\ = (counter(2) & (\counter[1]~34\ $ (GND))) # (!counter(2) & (!\counter[1]~34\ & VCC))
-- \counter[2]~36\ = CARRY((counter(2) & !\counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~34\,
	combout => \counter[2]~35_combout\,
	cout => \counter[2]~36\);

-- Location: FF_X48_Y31_N7
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[2]~35_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X48_Y31_N8
\counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~37_combout\ = (counter(3) & (!\counter[2]~36\)) # (!counter(3) & ((\counter[2]~36\) # (GND)))
-- \counter[3]~38\ = CARRY((!\counter[2]~36\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~36\,
	combout => \counter[3]~37_combout\,
	cout => \counter[3]~38\);

-- Location: FF_X48_Y31_N9
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[3]~37_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X48_Y31_N10
\counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~39_combout\ = (counter(4) & (\counter[3]~38\ $ (GND))) # (!counter(4) & (!\counter[3]~38\ & VCC))
-- \counter[4]~40\ = CARRY((counter(4) & !\counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~38\,
	combout => \counter[4]~39_combout\,
	cout => \counter[4]~40\);

-- Location: FF_X48_Y31_N11
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[4]~39_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X48_Y31_N12
\counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~41_combout\ = (counter(5) & (!\counter[4]~40\)) # (!counter(5) & ((\counter[4]~40\) # (GND)))
-- \counter[5]~42\ = CARRY((!\counter[4]~40\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~40\,
	combout => \counter[5]~41_combout\,
	cout => \counter[5]~42\);

-- Location: FF_X48_Y31_N13
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[5]~41_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X48_Y31_N14
\counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~43_combout\ = (counter(6) & (\counter[5]~42\ $ (GND))) # (!counter(6) & (!\counter[5]~42\ & VCC))
-- \counter[6]~44\ = CARRY((counter(6) & !\counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~42\,
	combout => \counter[6]~43_combout\,
	cout => \counter[6]~44\);

-- Location: FF_X48_Y31_N15
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[6]~43_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X48_Y31_N16
\counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~45_combout\ = (counter(7) & (!\counter[6]~44\)) # (!counter(7) & ((\counter[6]~44\) # (GND)))
-- \counter[7]~46\ = CARRY((!\counter[6]~44\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~44\,
	combout => \counter[7]~45_combout\,
	cout => \counter[7]~46\);

-- Location: FF_X48_Y31_N17
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[7]~45_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X48_Y31_N18
\counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~47_combout\ = (counter(8) & (\counter[7]~46\ $ (GND))) # (!counter(8) & (!\counter[7]~46\ & VCC))
-- \counter[8]~48\ = CARRY((counter(8) & !\counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~46\,
	combout => \counter[8]~47_combout\,
	cout => \counter[8]~48\);

-- Location: FF_X48_Y31_N19
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[8]~47_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: FF_X48_Y31_N21
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[9]~49_combout\,
	sclr => \LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: IOIBUF_X53_Y17_N1
\speed[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(9),
	o => \speed[9]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\speed[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(8),
	o => \speed[8]~input_o\);

-- Location: IOIBUF_X49_Y34_N1
\speed[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(7),
	o => \speed[7]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\speed[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(6),
	o => \speed[6]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\speed[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(5),
	o => \speed[5]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\speed[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(4),
	o => \speed[4]~input_o\);

-- Location: IOIBUF_X51_Y34_N15
\speed[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(3),
	o => \speed[3]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\speed[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(2),
	o => \speed[2]~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\speed[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(1),
	o => \speed[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\speed[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speed(0),
	o => \speed[0]~input_o\);

-- Location: LCCOMB_X49_Y31_N4
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!counter(0) & \speed[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \speed[0]~input_o\,
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X49_Y31_N6
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\speed[1]~input_o\ & (counter(1) & !\LessThan1~1_cout\)) # (!\speed[1]~input_o\ & ((counter(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[1]~input_o\,
	datab => counter(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X49_Y31_N8
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\speed[2]~input_o\ & ((!\LessThan1~3_cout\) # (!counter(2)))) # (!\speed[2]~input_o\ & (!counter(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[2]~input_o\,
	datab => counter(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X49_Y31_N10
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((counter(3) & ((!\LessThan1~5_cout\) # (!\speed[3]~input_o\))) # (!counter(3) & (!\speed[3]~input_o\ & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \speed[3]~input_o\,
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X49_Y31_N12
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((counter(4) & (\speed[4]~input_o\ & !\LessThan1~7_cout\)) # (!counter(4) & ((\speed[4]~input_o\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => \speed[4]~input_o\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X49_Y31_N14
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((counter(5) & ((!\LessThan1~9_cout\) # (!\speed[5]~input_o\))) # (!counter(5) & (!\speed[5]~input_o\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => \speed[5]~input_o\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X49_Y31_N16
\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((counter(6) & (\speed[6]~input_o\ & !\LessThan1~11_cout\)) # (!counter(6) & ((\speed[6]~input_o\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => \speed[6]~input_o\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X49_Y31_N18
\LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((counter(7) & ((!\LessThan1~13_cout\) # (!\speed[7]~input_o\))) # (!counter(7) & (!\speed[7]~input_o\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \speed[7]~input_o\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X49_Y31_N20
\LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~17_cout\ = CARRY((\speed[8]~input_o\ & ((!\LessThan1~15_cout\) # (!counter(8)))) # (!\speed[8]~input_o\ & (!counter(8) & !\LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \speed[8]~input_o\,
	datab => counter(8),
	datad => VCC,
	cin => \LessThan1~15_cout\,
	cout => \LessThan1~17_cout\);

-- Location: LCCOMB_X49_Y31_N22
\LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (counter(9) & (\LessThan1~17_cout\ & \speed[9]~input_o\)) # (!counter(9) & ((\LessThan1~17_cout\) # (\speed[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => \speed[9]~input_o\,
	cin => \LessThan1~17_cout\,
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X49_Y30_N16
\LessThan1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~20_combout\ = (\LessThan1~18_combout\ & (\LessThan0~4_combout\ & (!counter(30) & \LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~18_combout\,
	datab => \LessThan0~4_combout\,
	datac => counter(30),
	datad => \LessThan0~5_combout\,
	combout => \LessThan1~20_combout\);

-- Location: LCCOMB_X49_Y30_N26
\motor_signal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \motor_signal1~0_combout\ = (\direction~input_o\ & \LessThan1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \direction~input_o\,
	datad => \LessThan1~20_combout\,
	combout => \motor_signal1~0_combout\);

-- Location: LCCOMB_X49_Y30_N28
\motor_signal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \motor_signal2~0_combout\ = (!\direction~input_o\ & \LessThan1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~input_o\,
	datad => \LessThan1~20_combout\,
	combout => \motor_signal2~0_combout\);

ww_motor_signal1 <= \motor_signal1~output_o\;

ww_motor_signal2 <= \motor_signal2~output_o\;
END structure;


