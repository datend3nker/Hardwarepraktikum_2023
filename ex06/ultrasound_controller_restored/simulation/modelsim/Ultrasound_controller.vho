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

-- DATE "06/08/2023 18:59:58"

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

ENTITY 	ultrasound_controller IS
    PORT (
	clk_50 : IN std_logic;
	enable : IN std_logic;
	trigger : BUFFER std_logic;
	finished : BUFFER std_logic;
	distance : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END ultrasound_controller;

-- Design Ports Information
-- finished	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ultrasound_controller IS
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
SIGNAL ww_enable : std_logic;
SIGNAL ww_trigger : std_logic;
SIGNAL ww_finished : std_logic;
SIGNAL ww_distance : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \trigger~input_o\ : std_logic;
SIGNAL \trigger~output_o\ : std_logic;
SIGNAL \finished~output_o\ : std_logic;
SIGNAL \distance[0]~output_o\ : std_logic;
SIGNAL \distance[1]~output_o\ : std_logic;
SIGNAL \distance[2]~output_o\ : std_logic;
SIGNAL \distance[3]~output_o\ : std_logic;
SIGNAL \distance[4]~output_o\ : std_logic;
SIGNAL \distance[5]~output_o\ : std_logic;
SIGNAL \distance[6]~output_o\ : std_logic;
SIGNAL \distance[7]~output_o\ : std_logic;
SIGNAL \clk_50~input_o\ : std_logic;
SIGNAL \clk_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \timeout_counter[0]~21_combout\ : std_logic;
SIGNAL \trigger_counter[0]~19_combout\ : std_logic;
SIGNAL \current_state~16_combout\ : std_logic;
SIGNAL \current_state~17_combout\ : std_logic;
SIGNAL \current_state.trigger_pulse~q\ : std_logic;
SIGNAL \trigger_counter[1]~22\ : std_logic;
SIGNAL \trigger_counter[2]~23_combout\ : std_logic;
SIGNAL \trigger_counter[2]~24\ : std_logic;
SIGNAL \trigger_counter[3]~25_combout\ : std_logic;
SIGNAL \trigger_counter[3]~26\ : std_logic;
SIGNAL \trigger_counter[4]~27_combout\ : std_logic;
SIGNAL \trigger_counter[4]~28\ : std_logic;
SIGNAL \trigger_counter[5]~31_combout\ : std_logic;
SIGNAL \trigger_counter[5]~32\ : std_logic;
SIGNAL \trigger_counter[6]~33_combout\ : std_logic;
SIGNAL \trigger_counter[6]~34\ : std_logic;
SIGNAL \trigger_counter[7]~35_combout\ : std_logic;
SIGNAL \trigger_counter[7]~36\ : std_logic;
SIGNAL \trigger_counter[8]~37_combout\ : std_logic;
SIGNAL \trigger_counter[8]~38\ : std_logic;
SIGNAL \trigger_counter[9]~39_combout\ : std_logic;
SIGNAL \trigger_counter[9]~40\ : std_logic;
SIGNAL \trigger_counter[10]~41_combout\ : std_logic;
SIGNAL \trigger_counter[10]~42\ : std_logic;
SIGNAL \trigger_counter[11]~43_combout\ : std_logic;
SIGNAL \trigger_counter[11]~44\ : std_logic;
SIGNAL \trigger_counter[12]~45_combout\ : std_logic;
SIGNAL \trigger_counter[12]~46\ : std_logic;
SIGNAL \trigger_counter[13]~47_combout\ : std_logic;
SIGNAL \trigger_counter[13]~48\ : std_logic;
SIGNAL \trigger_counter[14]~49_combout\ : std_logic;
SIGNAL \trigger_counter[14]~50\ : std_logic;
SIGNAL \trigger_counter[15]~51_combout\ : std_logic;
SIGNAL \trigger_counter[15]~52\ : std_logic;
SIGNAL \trigger_counter[16]~53_combout\ : std_logic;
SIGNAL \trigger_counter[16]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \trigger_counter[0]~29_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \trigger_counter[4]~30_combout\ : std_logic;
SIGNAL \trigger_counter[0]~55_combout\ : std_logic;
SIGNAL \trigger_counter[0]~20\ : std_logic;
SIGNAL \trigger_counter[1]~21_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \current_state~12_combout\ : std_logic;
SIGNAL \current_state~13_combout\ : std_logic;
SIGNAL \current_state~18_combout\ : std_logic;
SIGNAL \current_state.wait_for_response~q\ : std_logic;
SIGNAL \current_state~15_combout\ : std_logic;
SIGNAL \current_state.timeout~q\ : std_logic;
SIGNAL \timeout_counter[0]~23_combout\ : std_logic;
SIGNAL \timeout_counter[0]~22\ : std_logic;
SIGNAL \timeout_counter[1]~24_combout\ : std_logic;
SIGNAL \timeout_counter[1]~25\ : std_logic;
SIGNAL \timeout_counter[2]~26_combout\ : std_logic;
SIGNAL \timeout_counter[2]~27\ : std_logic;
SIGNAL \timeout_counter[3]~28_combout\ : std_logic;
SIGNAL \timeout_counter[3]~29\ : std_logic;
SIGNAL \timeout_counter[4]~30_combout\ : std_logic;
SIGNAL \timeout_counter[4]~31\ : std_logic;
SIGNAL \timeout_counter[5]~32_combout\ : std_logic;
SIGNAL \timeout_counter[5]~33\ : std_logic;
SIGNAL \timeout_counter[6]~34_combout\ : std_logic;
SIGNAL \timeout_counter[6]~35\ : std_logic;
SIGNAL \timeout_counter[7]~36_combout\ : std_logic;
SIGNAL \timeout_counter[7]~37\ : std_logic;
SIGNAL \timeout_counter[8]~38_combout\ : std_logic;
SIGNAL \timeout_counter[8]~39\ : std_logic;
SIGNAL \timeout_counter[9]~40_combout\ : std_logic;
SIGNAL \timeout_counter[9]~41\ : std_logic;
SIGNAL \timeout_counter[10]~42_combout\ : std_logic;
SIGNAL \timeout_counter[10]~43\ : std_logic;
SIGNAL \timeout_counter[11]~44_combout\ : std_logic;
SIGNAL \timeout_counter[11]~45\ : std_logic;
SIGNAL \timeout_counter[12]~46_combout\ : std_logic;
SIGNAL \timeout_counter[12]~47\ : std_logic;
SIGNAL \timeout_counter[13]~48_combout\ : std_logic;
SIGNAL \timeout_counter[13]~49\ : std_logic;
SIGNAL \timeout_counter[14]~50_combout\ : std_logic;
SIGNAL \timeout_counter[14]~51\ : std_logic;
SIGNAL \timeout_counter[15]~52_combout\ : std_logic;
SIGNAL \timeout_counter[15]~53\ : std_logic;
SIGNAL \timeout_counter[16]~54_combout\ : std_logic;
SIGNAL \timeout_counter[16]~55\ : std_logic;
SIGNAL \timeout_counter[17]~56_combout\ : std_logic;
SIGNAL \timeout_counter[17]~57\ : std_logic;
SIGNAL \timeout_counter[18]~58_combout\ : std_logic;
SIGNAL \timeout_counter[18]~59\ : std_logic;
SIGNAL \timeout_counter[19]~60_combout\ : std_logic;
SIGNAL \Selector51~5_combout\ : std_logic;
SIGNAL \timeout_counter[19]~61\ : std_logic;
SIGNAL \timeout_counter[20]~62_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \Selector51~3_combout\ : std_logic;
SIGNAL \Selector51~4_combout\ : std_logic;
SIGNAL \Selector51~6_combout\ : std_logic;
SIGNAL \current_state~14_combout\ : std_logic;
SIGNAL \current_state.initial_state~q\ : std_logic;
SIGNAL \trigger~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \trigger~reg0_q\ : std_logic;
SIGNAL \Selector51~7_combout\ : std_logic;
SIGNAL \finished~reg0_q\ : std_logic;
SIGNAL trigger_counter : std_logic_vector(16 DOWNTO 0);
SIGNAL timeout_counter : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_enable~input_o\ : std_logic;
SIGNAL \ALT_INV_current_state.trigger_pulse~q\ : std_logic;
SIGNAL \ALT_INV_current_state.timeout~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50 <= clk_50;
ww_enable <= enable;
trigger <= ww_trigger;
finished <= ww_finished;
distance <= ww_distance;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50~input_o\);
\ALT_INV_enable~input_o\ <= NOT \enable~input_o\;
\ALT_INV_current_state.trigger_pulse~q\ <= NOT \current_state.trigger_pulse~q\;
\ALT_INV_current_state.timeout~q\ <= NOT \current_state.timeout~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y16_N9
\trigger~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trigger~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \trigger~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\finished~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finished~reg0_q\,
	devoe => ww_devoe,
	o => \finished~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\distance[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\distance[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\distance[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\distance[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\distance[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[4]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\distance[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\distance[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[6]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\distance[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \distance[7]~output_o\);

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

-- Location: IOIBUF_X53_Y17_N8
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X48_Y16_N12
\timeout_counter[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[0]~21_combout\ = timeout_counter(0) $ (VCC)
-- \timeout_counter[0]~22\ = CARRY(timeout_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(0),
	datad => VCC,
	combout => \timeout_counter[0]~21_combout\,
	cout => \timeout_counter[0]~22\);

-- Location: LCCOMB_X50_Y16_N16
\trigger_counter[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[0]~19_combout\ = trigger_counter(0) $ (VCC)
-- \trigger_counter[0]~20\ = CARRY(trigger_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(0),
	datad => VCC,
	combout => \trigger_counter[0]~19_combout\,
	cout => \trigger_counter[0]~20\);

-- Location: LCCOMB_X49_Y16_N12
\current_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~16_combout\ = (!\current_state.wait_for_response~q\ & (!\Selector51~6_combout\ & \current_state~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.wait_for_response~q\,
	datac => \Selector51~6_combout\,
	datad => \current_state~12_combout\,
	combout => \current_state~16_combout\);

-- Location: LCCOMB_X49_Y16_N30
\current_state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~17_combout\ = (\enable~input_o\ & (\current_state~16_combout\ & ((\current_state.trigger_pulse~q\) # (!\current_state.initial_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \current_state.initial_state~q\,
	datac => \current_state.trigger_pulse~q\,
	datad => \current_state~16_combout\,
	combout => \current_state~17_combout\);

-- Location: FF_X49_Y16_N31
\current_state.trigger_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \current_state~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.trigger_pulse~q\);

-- Location: LCCOMB_X50_Y16_N18
\trigger_counter[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[1]~21_combout\ = (trigger_counter(1) & (!\trigger_counter[0]~20\)) # (!trigger_counter(1) & ((\trigger_counter[0]~20\) # (GND)))
-- \trigger_counter[1]~22\ = CARRY((!\trigger_counter[0]~20\) # (!trigger_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(1),
	datad => VCC,
	cin => \trigger_counter[0]~20\,
	combout => \trigger_counter[1]~21_combout\,
	cout => \trigger_counter[1]~22\);

-- Location: LCCOMB_X50_Y16_N20
\trigger_counter[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[2]~23_combout\ = (trigger_counter(2) & (\trigger_counter[1]~22\ $ (GND))) # (!trigger_counter(2) & (!\trigger_counter[1]~22\ & VCC))
-- \trigger_counter[2]~24\ = CARRY((trigger_counter(2) & !\trigger_counter[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(2),
	datad => VCC,
	cin => \trigger_counter[1]~22\,
	combout => \trigger_counter[2]~23_combout\,
	cout => \trigger_counter[2]~24\);

-- Location: FF_X50_Y16_N21
\trigger_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[2]~23_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(2));

-- Location: LCCOMB_X50_Y16_N22
\trigger_counter[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[3]~25_combout\ = (trigger_counter(3) & (!\trigger_counter[2]~24\)) # (!trigger_counter(3) & ((\trigger_counter[2]~24\) # (GND)))
-- \trigger_counter[3]~26\ = CARRY((!\trigger_counter[2]~24\) # (!trigger_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(3),
	datad => VCC,
	cin => \trigger_counter[2]~24\,
	combout => \trigger_counter[3]~25_combout\,
	cout => \trigger_counter[3]~26\);

-- Location: FF_X50_Y16_N23
\trigger_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[3]~25_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(3));

-- Location: LCCOMB_X50_Y16_N24
\trigger_counter[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[4]~27_combout\ = (trigger_counter(4) & (\trigger_counter[3]~26\ $ (GND))) # (!trigger_counter(4) & (!\trigger_counter[3]~26\ & VCC))
-- \trigger_counter[4]~28\ = CARRY((trigger_counter(4) & !\trigger_counter[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(4),
	datad => VCC,
	cin => \trigger_counter[3]~26\,
	combout => \trigger_counter[4]~27_combout\,
	cout => \trigger_counter[4]~28\);

-- Location: FF_X50_Y16_N25
\trigger_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[4]~27_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(4));

-- Location: LCCOMB_X50_Y16_N26
\trigger_counter[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[5]~31_combout\ = (trigger_counter(5) & (!\trigger_counter[4]~28\)) # (!trigger_counter(5) & ((\trigger_counter[4]~28\) # (GND)))
-- \trigger_counter[5]~32\ = CARRY((!\trigger_counter[4]~28\) # (!trigger_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(5),
	datad => VCC,
	cin => \trigger_counter[4]~28\,
	combout => \trigger_counter[5]~31_combout\,
	cout => \trigger_counter[5]~32\);

-- Location: FF_X50_Y16_N27
\trigger_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[5]~31_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(5));

-- Location: LCCOMB_X50_Y16_N28
\trigger_counter[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[6]~33_combout\ = (trigger_counter(6) & (\trigger_counter[5]~32\ $ (GND))) # (!trigger_counter(6) & (!\trigger_counter[5]~32\ & VCC))
-- \trigger_counter[6]~34\ = CARRY((trigger_counter(6) & !\trigger_counter[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(6),
	datad => VCC,
	cin => \trigger_counter[5]~32\,
	combout => \trigger_counter[6]~33_combout\,
	cout => \trigger_counter[6]~34\);

-- Location: FF_X50_Y16_N29
\trigger_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[6]~33_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(6));

-- Location: LCCOMB_X50_Y16_N30
\trigger_counter[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[7]~35_combout\ = (trigger_counter(7) & (!\trigger_counter[6]~34\)) # (!trigger_counter(7) & ((\trigger_counter[6]~34\) # (GND)))
-- \trigger_counter[7]~36\ = CARRY((!\trigger_counter[6]~34\) # (!trigger_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(7),
	datad => VCC,
	cin => \trigger_counter[6]~34\,
	combout => \trigger_counter[7]~35_combout\,
	cout => \trigger_counter[7]~36\);

-- Location: FF_X50_Y16_N31
\trigger_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[7]~35_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(7));

-- Location: LCCOMB_X50_Y15_N0
\trigger_counter[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[8]~37_combout\ = (trigger_counter(8) & (\trigger_counter[7]~36\ $ (GND))) # (!trigger_counter(8) & (!\trigger_counter[7]~36\ & VCC))
-- \trigger_counter[8]~38\ = CARRY((trigger_counter(8) & !\trigger_counter[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(8),
	datad => VCC,
	cin => \trigger_counter[7]~36\,
	combout => \trigger_counter[8]~37_combout\,
	cout => \trigger_counter[8]~38\);

-- Location: FF_X50_Y15_N1
\trigger_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[8]~37_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(8));

-- Location: LCCOMB_X50_Y15_N2
\trigger_counter[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[9]~39_combout\ = (trigger_counter(9) & (!\trigger_counter[8]~38\)) # (!trigger_counter(9) & ((\trigger_counter[8]~38\) # (GND)))
-- \trigger_counter[9]~40\ = CARRY((!\trigger_counter[8]~38\) # (!trigger_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(9),
	datad => VCC,
	cin => \trigger_counter[8]~38\,
	combout => \trigger_counter[9]~39_combout\,
	cout => \trigger_counter[9]~40\);

-- Location: FF_X50_Y15_N3
\trigger_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[9]~39_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(9));

-- Location: LCCOMB_X50_Y15_N4
\trigger_counter[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[10]~41_combout\ = (trigger_counter(10) & (\trigger_counter[9]~40\ $ (GND))) # (!trigger_counter(10) & (!\trigger_counter[9]~40\ & VCC))
-- \trigger_counter[10]~42\ = CARRY((trigger_counter(10) & !\trigger_counter[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(10),
	datad => VCC,
	cin => \trigger_counter[9]~40\,
	combout => \trigger_counter[10]~41_combout\,
	cout => \trigger_counter[10]~42\);

-- Location: FF_X50_Y15_N5
\trigger_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[10]~41_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(10));

-- Location: LCCOMB_X50_Y15_N6
\trigger_counter[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[11]~43_combout\ = (trigger_counter(11) & (!\trigger_counter[10]~42\)) # (!trigger_counter(11) & ((\trigger_counter[10]~42\) # (GND)))
-- \trigger_counter[11]~44\ = CARRY((!\trigger_counter[10]~42\) # (!trigger_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(11),
	datad => VCC,
	cin => \trigger_counter[10]~42\,
	combout => \trigger_counter[11]~43_combout\,
	cout => \trigger_counter[11]~44\);

-- Location: FF_X50_Y15_N7
\trigger_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[11]~43_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(11));

-- Location: LCCOMB_X50_Y15_N8
\trigger_counter[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[12]~45_combout\ = (trigger_counter(12) & (\trigger_counter[11]~44\ $ (GND))) # (!trigger_counter(12) & (!\trigger_counter[11]~44\ & VCC))
-- \trigger_counter[12]~46\ = CARRY((trigger_counter(12) & !\trigger_counter[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(12),
	datad => VCC,
	cin => \trigger_counter[11]~44\,
	combout => \trigger_counter[12]~45_combout\,
	cout => \trigger_counter[12]~46\);

-- Location: FF_X50_Y15_N9
\trigger_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[12]~45_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(12));

-- Location: LCCOMB_X50_Y15_N10
\trigger_counter[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[13]~47_combout\ = (trigger_counter(13) & (!\trigger_counter[12]~46\)) # (!trigger_counter(13) & ((\trigger_counter[12]~46\) # (GND)))
-- \trigger_counter[13]~48\ = CARRY((!\trigger_counter[12]~46\) # (!trigger_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(13),
	datad => VCC,
	cin => \trigger_counter[12]~46\,
	combout => \trigger_counter[13]~47_combout\,
	cout => \trigger_counter[13]~48\);

-- Location: FF_X50_Y15_N11
\trigger_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[13]~47_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(13));

-- Location: LCCOMB_X50_Y15_N12
\trigger_counter[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[14]~49_combout\ = (trigger_counter(14) & (\trigger_counter[13]~48\ $ (GND))) # (!trigger_counter(14) & (!\trigger_counter[13]~48\ & VCC))
-- \trigger_counter[14]~50\ = CARRY((trigger_counter(14) & !\trigger_counter[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(14),
	datad => VCC,
	cin => \trigger_counter[13]~48\,
	combout => \trigger_counter[14]~49_combout\,
	cout => \trigger_counter[14]~50\);

-- Location: FF_X50_Y15_N13
\trigger_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[14]~49_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(14));

-- Location: LCCOMB_X50_Y15_N14
\trigger_counter[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[15]~51_combout\ = (trigger_counter(15) & (!\trigger_counter[14]~50\)) # (!trigger_counter(15) & ((\trigger_counter[14]~50\) # (GND)))
-- \trigger_counter[15]~52\ = CARRY((!\trigger_counter[14]~50\) # (!trigger_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(15),
	datad => VCC,
	cin => \trigger_counter[14]~50\,
	combout => \trigger_counter[15]~51_combout\,
	cout => \trigger_counter[15]~52\);

-- Location: FF_X50_Y15_N15
\trigger_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[15]~51_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(15));

-- Location: LCCOMB_X50_Y15_N16
\trigger_counter[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[16]~53_combout\ = \trigger_counter[15]~52\ $ (!trigger_counter(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => trigger_counter(16),
	cin => \trigger_counter[15]~52\,
	combout => \trigger_counter[16]~53_combout\);

-- Location: LCCOMB_X50_Y16_N8
\trigger_counter[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[16]~feeder_combout\ = \trigger_counter[16]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \trigger_counter[16]~53_combout\,
	combout => \trigger_counter[16]~feeder_combout\);

-- Location: FF_X50_Y16_N9
\trigger_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[16]~feeder_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(16));

-- Location: LCCOMB_X50_Y16_N14
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!trigger_counter(5) & (!trigger_counter(4) & (!trigger_counter(7) & !trigger_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(5),
	datab => trigger_counter(4),
	datac => trigger_counter(7),
	datad => trigger_counter(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X50_Y15_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!trigger_counter(11) & (!trigger_counter(8) & (!trigger_counter(10) & !trigger_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(11),
	datab => trigger_counter(8),
	datac => trigger_counter(10),
	datad => trigger_counter(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X50_Y15_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!trigger_counter(14) & (!trigger_counter(15) & (!trigger_counter(12) & !trigger_counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(14),
	datab => trigger_counter(15),
	datac => trigger_counter(12),
	datad => trigger_counter(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X50_Y16_N12
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!trigger_counter(16) & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(16),
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X49_Y16_N4
\trigger_counter[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[0]~29_combout\ = (\enable~input_o\ & ((\current_state.trigger_pulse~q\) # (!\current_state.initial_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \current_state.trigger_pulse~q\,
	datad => \current_state.initial_state~q\,
	combout => \trigger_counter[0]~29_combout\);

-- Location: LCCOMB_X50_Y16_N4
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (trigger_counter(1) & (!trigger_counter(0) & (trigger_counter(3) & !trigger_counter(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => trigger_counter(1),
	datab => trigger_counter(0),
	datac => trigger_counter(3),
	datad => trigger_counter(2),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X50_Y16_N10
\trigger_counter[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[4]~30_combout\ = (\current_state.initial_state~q\ & ((!\Equal0~3_combout\) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.initial_state~q\,
	datac => \LessThan0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \trigger_counter[4]~30_combout\);

-- Location: LCCOMB_X50_Y16_N0
\trigger_counter[0]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger_counter[0]~55_combout\ = (\trigger_counter[0]~29_combout\ & (((\Equal0~3_combout\ & \Equal0~4_combout\)) # (!\trigger_counter[4]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \trigger_counter[0]~29_combout\,
	datac => \Equal0~4_combout\,
	datad => \trigger_counter[4]~30_combout\,
	combout => \trigger_counter[0]~55_combout\);

-- Location: FF_X50_Y16_N17
\trigger_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[0]~19_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(0));

-- Location: FF_X50_Y16_N19
\trigger_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger_counter[1]~21_combout\,
	sclr => \ALT_INV_current_state.trigger_pulse~q\,
	ena => \trigger_counter[0]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => trigger_counter(1));

-- Location: LCCOMB_X50_Y16_N2
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!trigger_counter(1) & !trigger_counter(2))) # (!trigger_counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => trigger_counter(1),
	datac => trigger_counter(3),
	datad => trigger_counter(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y16_N0
\current_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~12_combout\ = ((\Equal0~3_combout\ & ((\LessThan0~0_combout\) # (\Equal0~4_combout\)))) # (!\current_state.trigger_pulse~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \current_state.trigger_pulse~q\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~3_combout\,
	combout => \current_state~12_combout\);

-- Location: LCCOMB_X49_Y16_N16
\current_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~13_combout\ = (\current_state.initial_state~q\ & (!\current_state.wait_for_response~q\ & (!\Selector51~6_combout\ & \current_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.initial_state~q\,
	datab => \current_state.wait_for_response~q\,
	datac => \Selector51~6_combout\,
	datad => \current_state~12_combout\,
	combout => \current_state~13_combout\);

-- Location: LCCOMB_X49_Y16_N14
\current_state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~18_combout\ = (!\current_state~12_combout\ & (\enable~input_o\ & !\current_state~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state~12_combout\,
	datac => \enable~input_o\,
	datad => \current_state~13_combout\,
	combout => \current_state~18_combout\);

-- Location: FF_X49_Y16_N15
\current_state.wait_for_response\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \current_state~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.wait_for_response~q\);

-- Location: LCCOMB_X49_Y16_N2
\current_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~15_combout\ = (\enable~input_o\ & ((\current_state~13_combout\ & ((\current_state.timeout~q\))) # (!\current_state~13_combout\ & (\current_state.wait_for_response~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \current_state.wait_for_response~q\,
	datac => \current_state.timeout~q\,
	datad => \current_state~13_combout\,
	combout => \current_state~15_combout\);

-- Location: FF_X49_Y16_N3
\current_state.timeout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \current_state~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.timeout~q\);

-- Location: LCCOMB_X49_Y16_N26
\timeout_counter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[0]~23_combout\ = (\enable~input_o\ & ((\current_state.timeout~q\) # (!\current_state.initial_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.timeout~q\,
	datac => \enable~input_o\,
	datad => \current_state.initial_state~q\,
	combout => \timeout_counter[0]~23_combout\);

-- Location: FF_X48_Y16_N13
\timeout_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[0]~21_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(0));

-- Location: LCCOMB_X48_Y16_N14
\timeout_counter[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[1]~24_combout\ = (timeout_counter(1) & (!\timeout_counter[0]~22\)) # (!timeout_counter(1) & ((\timeout_counter[0]~22\) # (GND)))
-- \timeout_counter[1]~25\ = CARRY((!\timeout_counter[0]~22\) # (!timeout_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(1),
	datad => VCC,
	cin => \timeout_counter[0]~22\,
	combout => \timeout_counter[1]~24_combout\,
	cout => \timeout_counter[1]~25\);

-- Location: FF_X48_Y16_N15
\timeout_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[1]~24_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(1));

-- Location: LCCOMB_X48_Y16_N16
\timeout_counter[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[2]~26_combout\ = (timeout_counter(2) & (\timeout_counter[1]~25\ $ (GND))) # (!timeout_counter(2) & (!\timeout_counter[1]~25\ & VCC))
-- \timeout_counter[2]~27\ = CARRY((timeout_counter(2) & !\timeout_counter[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(2),
	datad => VCC,
	cin => \timeout_counter[1]~25\,
	combout => \timeout_counter[2]~26_combout\,
	cout => \timeout_counter[2]~27\);

-- Location: FF_X48_Y16_N17
\timeout_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[2]~26_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(2));

-- Location: LCCOMB_X48_Y16_N18
\timeout_counter[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[3]~28_combout\ = (timeout_counter(3) & (!\timeout_counter[2]~27\)) # (!timeout_counter(3) & ((\timeout_counter[2]~27\) # (GND)))
-- \timeout_counter[3]~29\ = CARRY((!\timeout_counter[2]~27\) # (!timeout_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(3),
	datad => VCC,
	cin => \timeout_counter[2]~27\,
	combout => \timeout_counter[3]~28_combout\,
	cout => \timeout_counter[3]~29\);

-- Location: FF_X48_Y16_N19
\timeout_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[3]~28_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(3));

-- Location: LCCOMB_X48_Y16_N20
\timeout_counter[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[4]~30_combout\ = (timeout_counter(4) & (\timeout_counter[3]~29\ $ (GND))) # (!timeout_counter(4) & (!\timeout_counter[3]~29\ & VCC))
-- \timeout_counter[4]~31\ = CARRY((timeout_counter(4) & !\timeout_counter[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(4),
	datad => VCC,
	cin => \timeout_counter[3]~29\,
	combout => \timeout_counter[4]~30_combout\,
	cout => \timeout_counter[4]~31\);

-- Location: FF_X48_Y16_N21
\timeout_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[4]~30_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(4));

-- Location: LCCOMB_X48_Y16_N22
\timeout_counter[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[5]~32_combout\ = (timeout_counter(5) & (!\timeout_counter[4]~31\)) # (!timeout_counter(5) & ((\timeout_counter[4]~31\) # (GND)))
-- \timeout_counter[5]~33\ = CARRY((!\timeout_counter[4]~31\) # (!timeout_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(5),
	datad => VCC,
	cin => \timeout_counter[4]~31\,
	combout => \timeout_counter[5]~32_combout\,
	cout => \timeout_counter[5]~33\);

-- Location: FF_X48_Y16_N23
\timeout_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[5]~32_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(5));

-- Location: LCCOMB_X48_Y16_N24
\timeout_counter[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[6]~34_combout\ = (timeout_counter(6) & (\timeout_counter[5]~33\ $ (GND))) # (!timeout_counter(6) & (!\timeout_counter[5]~33\ & VCC))
-- \timeout_counter[6]~35\ = CARRY((timeout_counter(6) & !\timeout_counter[5]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(6),
	datad => VCC,
	cin => \timeout_counter[5]~33\,
	combout => \timeout_counter[6]~34_combout\,
	cout => \timeout_counter[6]~35\);

-- Location: FF_X48_Y16_N25
\timeout_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[6]~34_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(6));

-- Location: LCCOMB_X48_Y16_N26
\timeout_counter[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[7]~36_combout\ = (timeout_counter(7) & (!\timeout_counter[6]~35\)) # (!timeout_counter(7) & ((\timeout_counter[6]~35\) # (GND)))
-- \timeout_counter[7]~37\ = CARRY((!\timeout_counter[6]~35\) # (!timeout_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(7),
	datad => VCC,
	cin => \timeout_counter[6]~35\,
	combout => \timeout_counter[7]~36_combout\,
	cout => \timeout_counter[7]~37\);

-- Location: FF_X48_Y16_N27
\timeout_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[7]~36_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(7));

-- Location: LCCOMB_X48_Y16_N28
\timeout_counter[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[8]~38_combout\ = (timeout_counter(8) & (\timeout_counter[7]~37\ $ (GND))) # (!timeout_counter(8) & (!\timeout_counter[7]~37\ & VCC))
-- \timeout_counter[8]~39\ = CARRY((timeout_counter(8) & !\timeout_counter[7]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(8),
	datad => VCC,
	cin => \timeout_counter[7]~37\,
	combout => \timeout_counter[8]~38_combout\,
	cout => \timeout_counter[8]~39\);

-- Location: FF_X48_Y16_N29
\timeout_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[8]~38_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(8));

-- Location: LCCOMB_X48_Y16_N30
\timeout_counter[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[9]~40_combout\ = (timeout_counter(9) & (!\timeout_counter[8]~39\)) # (!timeout_counter(9) & ((\timeout_counter[8]~39\) # (GND)))
-- \timeout_counter[9]~41\ = CARRY((!\timeout_counter[8]~39\) # (!timeout_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(9),
	datad => VCC,
	cin => \timeout_counter[8]~39\,
	combout => \timeout_counter[9]~40_combout\,
	cout => \timeout_counter[9]~41\);

-- Location: FF_X48_Y16_N31
\timeout_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[9]~40_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(9));

-- Location: LCCOMB_X48_Y15_N0
\timeout_counter[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[10]~42_combout\ = (timeout_counter(10) & (\timeout_counter[9]~41\ $ (GND))) # (!timeout_counter(10) & (!\timeout_counter[9]~41\ & VCC))
-- \timeout_counter[10]~43\ = CARRY((timeout_counter(10) & !\timeout_counter[9]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(10),
	datad => VCC,
	cin => \timeout_counter[9]~41\,
	combout => \timeout_counter[10]~42_combout\,
	cout => \timeout_counter[10]~43\);

-- Location: FF_X48_Y15_N1
\timeout_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[10]~42_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(10));

-- Location: LCCOMB_X48_Y15_N2
\timeout_counter[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[11]~44_combout\ = (timeout_counter(11) & (!\timeout_counter[10]~43\)) # (!timeout_counter(11) & ((\timeout_counter[10]~43\) # (GND)))
-- \timeout_counter[11]~45\ = CARRY((!\timeout_counter[10]~43\) # (!timeout_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(11),
	datad => VCC,
	cin => \timeout_counter[10]~43\,
	combout => \timeout_counter[11]~44_combout\,
	cout => \timeout_counter[11]~45\);

-- Location: FF_X48_Y15_N3
\timeout_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[11]~44_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(11));

-- Location: LCCOMB_X48_Y15_N4
\timeout_counter[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[12]~46_combout\ = (timeout_counter(12) & (\timeout_counter[11]~45\ $ (GND))) # (!timeout_counter(12) & (!\timeout_counter[11]~45\ & VCC))
-- \timeout_counter[12]~47\ = CARRY((timeout_counter(12) & !\timeout_counter[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(12),
	datad => VCC,
	cin => \timeout_counter[11]~45\,
	combout => \timeout_counter[12]~46_combout\,
	cout => \timeout_counter[12]~47\);

-- Location: FF_X48_Y15_N5
\timeout_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[12]~46_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(12));

-- Location: LCCOMB_X48_Y15_N6
\timeout_counter[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[13]~48_combout\ = (timeout_counter(13) & (!\timeout_counter[12]~47\)) # (!timeout_counter(13) & ((\timeout_counter[12]~47\) # (GND)))
-- \timeout_counter[13]~49\ = CARRY((!\timeout_counter[12]~47\) # (!timeout_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(13),
	datad => VCC,
	cin => \timeout_counter[12]~47\,
	combout => \timeout_counter[13]~48_combout\,
	cout => \timeout_counter[13]~49\);

-- Location: FF_X48_Y15_N7
\timeout_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[13]~48_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(13));

-- Location: LCCOMB_X48_Y15_N8
\timeout_counter[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[14]~50_combout\ = (timeout_counter(14) & (\timeout_counter[13]~49\ $ (GND))) # (!timeout_counter(14) & (!\timeout_counter[13]~49\ & VCC))
-- \timeout_counter[14]~51\ = CARRY((timeout_counter(14) & !\timeout_counter[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(14),
	datad => VCC,
	cin => \timeout_counter[13]~49\,
	combout => \timeout_counter[14]~50_combout\,
	cout => \timeout_counter[14]~51\);

-- Location: FF_X48_Y15_N9
\timeout_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[14]~50_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(14));

-- Location: LCCOMB_X48_Y15_N10
\timeout_counter[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[15]~52_combout\ = (timeout_counter(15) & (!\timeout_counter[14]~51\)) # (!timeout_counter(15) & ((\timeout_counter[14]~51\) # (GND)))
-- \timeout_counter[15]~53\ = CARRY((!\timeout_counter[14]~51\) # (!timeout_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(15),
	datad => VCC,
	cin => \timeout_counter[14]~51\,
	combout => \timeout_counter[15]~52_combout\,
	cout => \timeout_counter[15]~53\);

-- Location: FF_X48_Y15_N11
\timeout_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[15]~52_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(15));

-- Location: LCCOMB_X48_Y15_N12
\timeout_counter[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[16]~54_combout\ = (timeout_counter(16) & (\timeout_counter[15]~53\ $ (GND))) # (!timeout_counter(16) & (!\timeout_counter[15]~53\ & VCC))
-- \timeout_counter[16]~55\ = CARRY((timeout_counter(16) & !\timeout_counter[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(16),
	datad => VCC,
	cin => \timeout_counter[15]~53\,
	combout => \timeout_counter[16]~54_combout\,
	cout => \timeout_counter[16]~55\);

-- Location: FF_X48_Y15_N13
\timeout_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[16]~54_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(16));

-- Location: LCCOMB_X48_Y15_N14
\timeout_counter[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[17]~56_combout\ = (timeout_counter(17) & (!\timeout_counter[16]~55\)) # (!timeout_counter(17) & ((\timeout_counter[16]~55\) # (GND)))
-- \timeout_counter[17]~57\ = CARRY((!\timeout_counter[16]~55\) # (!timeout_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(17),
	datad => VCC,
	cin => \timeout_counter[16]~55\,
	combout => \timeout_counter[17]~56_combout\,
	cout => \timeout_counter[17]~57\);

-- Location: FF_X48_Y15_N15
\timeout_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[17]~56_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(17));

-- Location: LCCOMB_X48_Y15_N16
\timeout_counter[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[18]~58_combout\ = (timeout_counter(18) & (\timeout_counter[17]~57\ $ (GND))) # (!timeout_counter(18) & (!\timeout_counter[17]~57\ & VCC))
-- \timeout_counter[18]~59\ = CARRY((timeout_counter(18) & !\timeout_counter[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(18),
	datad => VCC,
	cin => \timeout_counter[17]~57\,
	combout => \timeout_counter[18]~58_combout\,
	cout => \timeout_counter[18]~59\);

-- Location: FF_X48_Y15_N17
\timeout_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[18]~58_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(18));

-- Location: LCCOMB_X48_Y15_N18
\timeout_counter[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[19]~60_combout\ = (timeout_counter(19) & (!\timeout_counter[18]~59\)) # (!timeout_counter(19) & ((\timeout_counter[18]~59\) # (GND)))
-- \timeout_counter[19]~61\ = CARRY((!\timeout_counter[18]~59\) # (!timeout_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeout_counter(19),
	datad => VCC,
	cin => \timeout_counter[18]~59\,
	combout => \timeout_counter[19]~60_combout\,
	cout => \timeout_counter[19]~61\);

-- Location: FF_X48_Y15_N19
\timeout_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[19]~60_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(19));

-- Location: LCCOMB_X48_Y15_N28
\Selector51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~5_combout\ = (!timeout_counter(16) & (timeout_counter(18) & (timeout_counter(17) & timeout_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(16),
	datab => timeout_counter(18),
	datac => timeout_counter(17),
	datad => timeout_counter(15),
	combout => \Selector51~5_combout\);

-- Location: LCCOMB_X48_Y15_N20
\timeout_counter[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeout_counter[20]~62_combout\ = \timeout_counter[19]~61\ $ (!timeout_counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timeout_counter(20),
	cin => \timeout_counter[19]~61\,
	combout => \timeout_counter[20]~62_combout\);

-- Location: FF_X48_Y15_N21
\timeout_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \timeout_counter[20]~62_combout\,
	sclr => \ALT_INV_current_state.timeout~q\,
	ena => \timeout_counter[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeout_counter(20));

-- Location: LCCOMB_X48_Y16_N0
\Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (!timeout_counter(5) & (timeout_counter(4) & (timeout_counter(6) & timeout_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(5),
	datab => timeout_counter(4),
	datac => timeout_counter(6),
	datad => timeout_counter(3),
	combout => \Selector51~1_combout\);

-- Location: LCCOMB_X49_Y16_N28
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (timeout_counter(1) & (\current_state.timeout~q\ & (timeout_counter(2) & timeout_counter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(1),
	datab => \current_state.timeout~q\,
	datac => timeout_counter(2),
	datad => timeout_counter(0),
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X48_Y16_N6
\Selector51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = (timeout_counter(9) & (!timeout_counter(10) & (!timeout_counter(7) & timeout_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(9),
	datab => timeout_counter(10),
	datac => timeout_counter(7),
	datad => timeout_counter(8),
	combout => \Selector51~2_combout\);

-- Location: LCCOMB_X48_Y15_N22
\Selector51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~3_combout\ = (timeout_counter(13) & (timeout_counter(14) & (!timeout_counter(12) & !timeout_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(13),
	datab => timeout_counter(14),
	datac => timeout_counter(12),
	datad => timeout_counter(11),
	combout => \Selector51~3_combout\);

-- Location: LCCOMB_X49_Y16_N18
\Selector51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~4_combout\ = (\Selector51~1_combout\ & (\Selector51~0_combout\ & (\Selector51~2_combout\ & \Selector51~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~1_combout\,
	datab => \Selector51~0_combout\,
	datac => \Selector51~2_combout\,
	datad => \Selector51~3_combout\,
	combout => \Selector51~4_combout\);

-- Location: LCCOMB_X49_Y16_N8
\Selector51~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~6_combout\ = (!timeout_counter(19) & (\Selector51~5_combout\ & (timeout_counter(20) & \Selector51~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeout_counter(19),
	datab => \Selector51~5_combout\,
	datac => timeout_counter(20),
	datad => \Selector51~4_combout\,
	combout => \Selector51~6_combout\);

-- Location: LCCOMB_X49_Y16_N24
\current_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \current_state~14_combout\ = (\enable~input_o\ & ((\current_state~13_combout\) # (!\Selector51~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datac => \Selector51~6_combout\,
	datad => \current_state~13_combout\,
	combout => \current_state~14_combout\);

-- Location: FF_X49_Y16_N25
\current_state.initial_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \current_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.initial_state~q\);

-- Location: LCCOMB_X49_Y16_N6
\trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger~2_combout\ = (\current_state.initial_state~q\ & ((\current_state.trigger_pulse~q\))) # (!\current_state.initial_state~q\ & (\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \current_state.initial_state~q\,
	datac => \current_state.trigger_pulse~q\,
	combout => \trigger~2_combout\);

-- Location: LCCOMB_X49_Y16_N10
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~4_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X49_Y16_N22
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\trigger~2_combout\ & (\trigger_counter[4]~30_combout\ & ((\trigger~reg0_q\) # (\Equal0~5_combout\)))) # (!\trigger~2_combout\ & (((\trigger~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trigger~2_combout\,
	datab => \trigger_counter[4]~30_combout\,
	datac => \trigger~reg0_q\,
	datad => \Equal0~5_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X49_Y16_N23
\trigger~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	asdata => \trigger~reg0_q\,
	sload => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trigger~reg0_q\);

-- Location: LCCOMB_X49_Y16_N20
\Selector51~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~7_combout\ = (\finished~reg0_q\ & (((\current_state.initial_state~q\)) # (!\enable~input_o\))) # (!\finished~reg0_q\ & (((\Selector51~6_combout\ & \current_state.initial_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \Selector51~6_combout\,
	datac => \finished~reg0_q\,
	datad => \current_state.initial_state~q\,
	combout => \Selector51~7_combout\);

-- Location: FF_X49_Y16_N21
\finished~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector51~7_combout\,
	asdata => VCC,
	sload => \ALT_INV_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finished~reg0_q\);

-- Location: IOIBUF_X53_Y16_N8
\trigger~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger,
	o => \trigger~input_o\);

ww_finished <= \finished~output_o\;

ww_distance(0) <= \distance[0]~output_o\;

ww_distance(1) <= \distance[1]~output_o\;

ww_distance(2) <= \distance[2]~output_o\;

ww_distance(3) <= \distance[3]~output_o\;

ww_distance(4) <= \distance[4]~output_o\;

ww_distance(5) <= \distance[5]~output_o\;

ww_distance(6) <= \distance[6]~output_o\;

ww_distance(7) <= \distance[7]~output_o\;

ww_trigger <= \trigger~output_o\;
END structure;


