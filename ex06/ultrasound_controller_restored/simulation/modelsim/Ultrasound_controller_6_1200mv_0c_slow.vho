-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/13/2023 10:32:24"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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
-- finished	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[0]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[2]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[3]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[4]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- distance[7]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- trigger	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \trigger~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_SEND_HIGH~q\ : std_logic;
SIGNAL \ctrl_state.STATE_SEND_FIN~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \counter[20]~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \Selector28~13_combout\ : std_logic;
SIGNAL \Selector28~14_combout\ : std_logic;
SIGNAL \Selector28~12_combout\ : std_logic;
SIGNAL \last_enable~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_FIN~2_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_FIN~q\ : std_logic;
SIGNAL \counter[20]~1_combout\ : std_logic;
SIGNAL \counter[20]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \counter[20]~3_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \counter[20]~4_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \Selector28~10_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_INIT~q\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_WAIT~q\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_COUNT~q\ : std_logic;
SIGNAL \Selector28~11_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \ctrl_state.STATE_SEND_START~q\ : std_logic;
SIGNAL \trigger~reg0feeder_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \trigger~reg0_q\ : std_logic;
SIGNAL \trigger~2_combout\ : std_logic;
SIGNAL \trigger~en_q\ : std_logic;
SIGNAL \distance_counter[0]~10_combout\ : std_logic;
SIGNAL \counter_high[0]~21_combout\ : std_logic;
SIGNAL \counter_high[6]~47_combout\ : std_logic;
SIGNAL \counter_high[6]~48_combout\ : std_logic;
SIGNAL \counter_high[0]~22\ : std_logic;
SIGNAL \counter_high[1]~23_combout\ : std_logic;
SIGNAL \counter_high[1]~24\ : std_logic;
SIGNAL \counter_high[2]~25_combout\ : std_logic;
SIGNAL \counter_high[2]~26\ : std_logic;
SIGNAL \counter_high[3]~27_combout\ : std_logic;
SIGNAL \counter_high[3]~28\ : std_logic;
SIGNAL \counter_high[4]~29_combout\ : std_logic;
SIGNAL \counter_high[4]~30\ : std_logic;
SIGNAL \counter_high[5]~31_combout\ : std_logic;
SIGNAL \counter_high[5]~32\ : std_logic;
SIGNAL \counter_high[6]~33_combout\ : std_logic;
SIGNAL \counter_high[6]~34\ : std_logic;
SIGNAL \counter_high[7]~35_combout\ : std_logic;
SIGNAL \counter_high[7]~36\ : std_logic;
SIGNAL \counter_high[8]~37_combout\ : std_logic;
SIGNAL \counter_high[8]~38\ : std_logic;
SIGNAL \counter_high[9]~39_combout\ : std_logic;
SIGNAL \counter_high[9]~40\ : std_logic;
SIGNAL \counter_high[10]~41_combout\ : std_logic;
SIGNAL \counter_high[10]~42\ : std_logic;
SIGNAL \counter_high[11]~43_combout\ : std_logic;
SIGNAL \counter_high[11]~44\ : std_logic;
SIGNAL \counter_high[12]~45_combout\ : std_logic;
SIGNAL \counter_high[12]~46\ : std_logic;
SIGNAL \counter_high[13]~49_combout\ : std_logic;
SIGNAL \counter_high[13]~50\ : std_logic;
SIGNAL \counter_high[14]~51_combout\ : std_logic;
SIGNAL \counter_high[14]~52\ : std_logic;
SIGNAL \counter_high[15]~53_combout\ : std_logic;
SIGNAL \counter_high[15]~54\ : std_logic;
SIGNAL \counter_high[16]~55_combout\ : std_logic;
SIGNAL \counter_high[16]~56\ : std_logic;
SIGNAL \counter_high[17]~57_combout\ : std_logic;
SIGNAL \counter_high[17]~58\ : std_logic;
SIGNAL \counter_high[18]~59_combout\ : std_logic;
SIGNAL \counter_high[18]~60\ : std_logic;
SIGNAL \counter_high[19]~61_combout\ : std_logic;
SIGNAL \counter_high[19]~62\ : std_logic;
SIGNAL \counter_high[20]~63_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \distance_counter[0]~26_combout\ : std_logic;
SIGNAL \distance[0]~reg0_q\ : std_logic;
SIGNAL \distance_counter[0]~11\ : std_logic;
SIGNAL \distance_counter[1]~12_combout\ : std_logic;
SIGNAL \distance[1]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[1]~reg0_q\ : std_logic;
SIGNAL \distance_counter[1]~13\ : std_logic;
SIGNAL \distance_counter[2]~14_combout\ : std_logic;
SIGNAL \distance[2]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[2]~reg0_q\ : std_logic;
SIGNAL \distance_counter[2]~15\ : std_logic;
SIGNAL \distance_counter[3]~16_combout\ : std_logic;
SIGNAL \distance[3]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[3]~reg0_q\ : std_logic;
SIGNAL \distance_counter[3]~17\ : std_logic;
SIGNAL \distance_counter[4]~18_combout\ : std_logic;
SIGNAL \distance[4]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[4]~reg0_q\ : std_logic;
SIGNAL \distance_counter[4]~19\ : std_logic;
SIGNAL \distance_counter[5]~20_combout\ : std_logic;
SIGNAL \distance[5]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[5]~reg0_q\ : std_logic;
SIGNAL \distance_counter[5]~21\ : std_logic;
SIGNAL \distance_counter[6]~22_combout\ : std_logic;
SIGNAL \distance[6]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[6]~reg0_q\ : std_logic;
SIGNAL \distance_counter[6]~23\ : std_logic;
SIGNAL \distance_counter[7]~24_combout\ : std_logic;
SIGNAL \distance[7]~reg0feeder_combout\ : std_logic;
SIGNAL \distance[7]~reg0_q\ : std_logic;
SIGNAL distance_counter : std_logic_vector(7 DOWNTO 0);
SIGNAL counter_high : std_logic_vector(20 DOWNTO 0);
SIGNAL counter : std_logic_vector(20 DOWNTO 0);
SIGNAL \ALT_INV_ctrl_state.STATE_COUNT~q\ : std_logic;
SIGNAL \ALT_INV_ctrl_state.STATE_INIT~q\ : std_logic;

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
\ALT_INV_ctrl_state.STATE_COUNT~q\ <= NOT \ctrl_state.STATE_COUNT~q\;
\ALT_INV_ctrl_state.STATE_INIT~q\ <= NOT \ctrl_state.STATE_INIT~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y0_N23
\trigger~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \trigger~reg0_q\,
	oe => \trigger~en_q\,
	devoe => ww_devoe,
	o => \trigger~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\finished~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ctrl_state.STATE_INIT~q\,
	devoe => ww_devoe,
	o => \finished~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\distance[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[0]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\distance[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[1]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\distance[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[2]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\distance[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[3]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\distance[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[4]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\distance[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[5]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\distance[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[6]~reg0_q\,
	devoe => ww_devoe,
	o => \distance[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\distance[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \distance[7]~reg0_q\,
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

-- Location: IOIBUF_X11_Y0_N22
\trigger~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_trigger,
	o => \trigger~input_o\);

-- Location: LCCOMB_X9_Y8_N2
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\trigger~input_o\ & \ctrl_state.STATE_WAIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger~input_o\,
	datac => \ctrl_state.STATE_WAIT~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X9_Y8_N31
\ctrl_state.STATE_SEND_HIGH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \ctrl_state.STATE_SEND_START~q\,
	sload => VCC,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_SEND_HIGH~q\);

-- Location: FF_X9_Y8_N21
\ctrl_state.STATE_SEND_FIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \ctrl_state.STATE_SEND_HIGH~q\,
	sload => VCC,
	ena => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_SEND_FIN~q\);

-- Location: LCCOMB_X9_Y8_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\LessThan0~6_combout\ & ((\ctrl_state.STATE_SEND_HIGH~q\) # ((\ctrl_state.STATE_SEND_START~q\) # (\ctrl_state.STATE_SEND_FIN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_SEND_HIGH~q\,
	datab => \ctrl_state.STATE_SEND_START~q\,
	datac => \ctrl_state.STATE_SEND_FIN~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X8_Y8_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (VCC)
-- \Add0~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X6_Y8_N4
\Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~0_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~55_combout\);

-- Location: LCCOMB_X6_Y8_N26
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\ctrl_state.STATE_WAIT~q\ & !\ctrl_state.STATE_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctrl_state.STATE_WAIT~q\,
	datad => \ctrl_state.STATE_COUNT~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X9_Y8_N26
\counter[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~0_combout\ = (\trigger~input_o\ & (!\ctrl_state.STATE_WAIT~q\)) # (!\trigger~input_o\ & ((!\ctrl_state.STATE_COUNT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger~input_o\,
	datac => \ctrl_state.STATE_WAIT~q\,
	datad => \ctrl_state.STATE_COUNT~q\,
	combout => \counter[20]~0_combout\);

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

-- Location: LCCOMB_X9_Y8_N12
\Selector28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~13_combout\ = (\ctrl_state.STATE_COUNT~q\ & (((\LessThan1~6_combout\)))) # (!\ctrl_state.STATE_COUNT~q\ & ((\ctrl_state.STATE_WAIT~q\ & ((\LessThan1~6_combout\))) # (!\ctrl_state.STATE_WAIT~q\ & (!\ctrl_state.STATE_INIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_COUNT~q\,
	datab => \ctrl_state.STATE_INIT~q\,
	datac => \ctrl_state.STATE_WAIT~q\,
	datad => \LessThan1~6_combout\,
	combout => \Selector28~13_combout\);

-- Location: LCCOMB_X9_Y8_N18
\Selector28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~14_combout\ = (\Selector28~13_combout\ & ((\trigger~input_o\ & ((!\ctrl_state.STATE_WAIT~q\))) # (!\trigger~input_o\ & (!\ctrl_state.STATE_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_COUNT~q\,
	datab => \ctrl_state.STATE_WAIT~q\,
	datac => \trigger~input_o\,
	datad => \Selector28~13_combout\,
	combout => \Selector28~14_combout\);

-- Location: LCCOMB_X9_Y8_N6
\Selector28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~12_combout\ = (\enable~input_o\ & ((\Selector28~10_combout\) # ((\last_enable~q\)))) # (!\enable~input_o\ & (((\last_enable~q\ & !\Selector28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~10_combout\,
	datab => \enable~input_o\,
	datac => \last_enable~q\,
	datad => \Selector28~14_combout\,
	combout => \Selector28~12_combout\);

-- Location: FF_X9_Y8_N7
last_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector28~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \last_enable~q\);

-- Location: LCCOMB_X9_Y7_N0
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\ctrl_state.STATE_INIT~q\ & (!\last_enable~q\ & \enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datab => \last_enable~q\,
	datac => \enable~input_o\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X9_Y8_N28
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ((\Selector1~1_combout\) # ((\Selector1~0_combout\) # (\Selector28~10_combout\))) # (!\counter[20]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[20]~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector1~0_combout\,
	datad => \Selector28~10_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X9_Y8_N4
\ctrl_state.STATE_FIN~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ctrl_state.STATE_FIN~2_combout\ = (\ctrl_state.STATE_COUNT~q\ & (((\ctrl_state.STATE_FIN~q\ & !\Selector1~2_combout\)) # (!\trigger~input_o\))) # (!\ctrl_state.STATE_COUNT~q\ & (((\ctrl_state.STATE_FIN~q\ & !\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_COUNT~q\,
	datab => \trigger~input_o\,
	datac => \ctrl_state.STATE_FIN~q\,
	datad => \Selector1~2_combout\,
	combout => \ctrl_state.STATE_FIN~2_combout\);

-- Location: FF_X9_Y8_N5
\ctrl_state.STATE_FIN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \ctrl_state.STATE_FIN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_FIN~q\);

-- Location: LCCOMB_X9_Y8_N22
\counter[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~1_combout\ = (\ctrl_state.STATE_FIN~q\) # ((!\ctrl_state.STATE_INIT~q\ & ((\last_enable~q\) # (!\enable~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \last_enable~q\,
	datab => \enable~input_o\,
	datac => \ctrl_state.STATE_FIN~q\,
	datad => \ctrl_state.STATE_INIT~q\,
	combout => \counter[20]~1_combout\);

-- Location: LCCOMB_X7_Y8_N30
\counter[20]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~2_combout\ = (\counter[20]~0_combout\ & (!\counter[20]~1_combout\ & ((\WideOr2~0_combout\) # (!\LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datab => \counter[20]~0_combout\,
	datac => \counter[20]~1_combout\,
	datad => \LessThan1~6_combout\,
	combout => \counter[20]~2_combout\);

-- Location: FF_X6_Y8_N5
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~55_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X8_Y8_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X8_Y8_N10
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~2_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~2_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~56_combout\);

-- Location: FF_X7_Y8_N23
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => \Add0~56_combout\,
	sload => VCC,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X8_Y8_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X6_Y8_N10
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\ctrl_state.STATE_INIT~q\ & (!\Selector1~0_combout\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Selector1~0_combout\,
	datad => \Add0~4_combout\,
	combout => \Add0~57_combout\);

-- Location: FF_X6_Y8_N11
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~57_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X8_Y8_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X6_Y8_N8
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\ctrl_state.STATE_INIT~q\ & (!\Selector1~0_combout\ & \Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Selector1~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Add0~58_combout\);

-- Location: FF_X6_Y8_N9
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~58_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X8_Y8_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X6_Y8_N22
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\ctrl_state.STATE_INIT~q\ & (!\Selector1~0_combout\ & \Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Selector1~0_combout\,
	datad => \Add0~8_combout\,
	combout => \Add0~54_combout\);

-- Location: FF_X6_Y8_N23
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X8_Y8_N22
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X6_Y8_N30
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~10_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~10_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~52_combout\);

-- Location: FF_X6_Y8_N31
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X8_Y8_N24
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X6_Y8_N28
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~12_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~12_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~53_combout\);

-- Location: FF_X6_Y8_N29
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~53_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X8_Y8_N26
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X6_Y8_N24
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\ctrl_state.STATE_INIT~q\ & (!\Selector1~0_combout\ & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Selector1~0_combout\,
	datad => \Add0~14_combout\,
	combout => \Add0~51_combout\);

-- Location: FF_X6_Y8_N25
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~51_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X8_Y8_N28
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X6_Y8_N6
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~16_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~16_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~50_combout\);

-- Location: FF_X6_Y8_N7
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~50_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X8_Y8_N30
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X6_Y8_N12
\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\ctrl_state.STATE_INIT~q\ & (!\Selector1~0_combout\ & \Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datac => \Selector1~0_combout\,
	datad => \Add0~18_combout\,
	combout => \Add0~49_combout\);

-- Location: FF_X6_Y8_N13
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~49_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X8_Y7_N0
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X7_Y8_N24
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (!\Selector1~0_combout\ & (\ctrl_state.STATE_INIT~q\ & \Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \ctrl_state.STATE_INIT~q\,
	datad => \Add0~20_combout\,
	combout => \Add0~59_combout\);

-- Location: FF_X7_Y8_N25
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~59_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X8_Y7_N2
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X7_Y8_N26
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (!\Selector1~0_combout\ & (\ctrl_state.STATE_INIT~q\ & \Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \ctrl_state.STATE_INIT~q\,
	datad => \Add0~22_combout\,
	combout => \Add0~60_combout\);

-- Location: FF_X7_Y8_N27
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~60_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X8_Y7_N4
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X8_Y7_N26
\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~24_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~24_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~61_combout\);

-- Location: FF_X8_Y7_N27
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~61_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X8_Y7_N6
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X7_Y8_N14
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~26_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~26_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~47_combout\);

-- Location: FF_X7_Y8_N15
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~47_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X8_Y7_N8
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X7_Y8_N12
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~28_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~28_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~48_combout\);

-- Location: FF_X7_Y8_N13
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X8_Y7_N10
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X7_Y8_N4
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\ctrl_state.STATE_INIT~q\ & (\Add0~30_combout\ & !\Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_state.STATE_INIT~q\,
	datac => \Add0~30_combout\,
	datad => \Selector1~0_combout\,
	combout => \Add0~46_combout\);

-- Location: FF_X7_Y8_N5
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X8_Y7_N12
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X7_Y8_N6
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (!\Selector1~0_combout\ & (\ctrl_state.STATE_INIT~q\ & \Add0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \ctrl_state.STATE_INIT~q\,
	datad => \Add0~32_combout\,
	combout => \Add0~45_combout\);

-- Location: FF_X7_Y8_N7
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~45_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X8_Y7_N14
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X7_Y8_N28
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (!\Selector1~0_combout\ & (\ctrl_state.STATE_INIT~q\ & \Add0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \ctrl_state.STATE_INIT~q\,
	datad => \Add0~34_combout\,
	combout => \Add0~36_combout\);

-- Location: FF_X7_Y8_N29
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X8_Y8_N0
\counter[20]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~3_combout\ = (\Selector1~0_combout\) # (!\ctrl_state.STATE_INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_INIT~q\,
	datad => \Selector1~0_combout\,
	combout => \counter[20]~3_combout\);

-- Location: LCCOMB_X8_Y7_N16
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~38\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X7_Y8_N16
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (!\Selector1~0_combout\ & (\ctrl_state.STATE_INIT~q\ & \Add0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \ctrl_state.STATE_INIT~q\,
	datad => \Add0~37_combout\,
	combout => \Add0~44_combout\);

-- Location: FF_X7_Y8_N17
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~44_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X8_Y7_N18
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (counter(19) & (!\Add0~38\)) # (!counter(19) & ((\Add0~38\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~38\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X8_Y7_N20
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \Add0~40\ $ (!counter(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(20),
	cin => \Add0~40\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X8_Y8_N8
\counter[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~4_combout\ = (\counter[20]~2_combout\ & (!\counter[20]~3_combout\ & ((\Add0~41_combout\)))) # (!\counter[20]~2_combout\ & (((counter(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[20]~2_combout\,
	datab => \counter[20]~3_combout\,
	datac => counter(20),
	datad => \Add0~41_combout\,
	combout => \counter[20]~4_combout\);

-- Location: FF_X8_Y8_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter[20]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X7_Y8_N8
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!counter(10) & (!counter(11) & !counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datac => counter(11),
	datad => counter(12),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X6_Y8_N18
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (counter(2)) # ((counter(0)) # ((counter(3)) # (counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(3),
	datad => counter(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y8_N20
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (counter(5) & (counter(6) & ((counter(4)) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(6),
	datac => counter(4),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X6_Y8_N14
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (counter(8) & (counter(9) & ((counter(7)) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(7),
	datac => counter(9),
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X7_Y8_N2
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (counter(14) & (counter(13) & ((\LessThan1~2_combout\) # (!\LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(13),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X7_Y8_N0
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (counter(18) & ((counter(16)) # ((counter(15) & \LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(18),
	datac => counter(15),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X7_Y8_N18
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (counter(20) & ((counter(19)) # ((counter(17) & \LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(17),
	datac => counter(20),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X7_Y8_N20
\Selector28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~10_combout\ = (\LessThan1~6_combout\ & ((\trigger~input_o\ & ((\ctrl_state.STATE_COUNT~q\))) # (!\trigger~input_o\ & (\ctrl_state.STATE_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_WAIT~q\,
	datab => \ctrl_state.STATE_COUNT~q\,
	datac => \trigger~input_o\,
	datad => \LessThan1~6_combout\,
	combout => \Selector28~10_combout\);

-- Location: LCCOMB_X9_Y8_N16
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Selector28~10_combout\ & (\Selector28~11_combout\ & ((\ctrl_state.STATE_INIT~q\) # (\Selector1~2_combout\)))) # (!\Selector28~10_combout\ & (((\ctrl_state.STATE_INIT~q\) # (\Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~10_combout\,
	datab => \Selector28~11_combout\,
	datac => \ctrl_state.STATE_INIT~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X9_Y8_N17
\ctrl_state.STATE_INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_INIT~q\);

-- Location: LCCOMB_X7_Y8_N10
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (!\Selector1~0_combout\ & (\ctrl_state.STATE_INIT~q\ & \Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datac => \ctrl_state.STATE_INIT~q\,
	datad => \Add0~39_combout\,
	combout => \Add0~43_combout\);

-- Location: FF_X7_Y8_N11
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Add0~43_combout\,
	ena => \counter[20]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X8_Y8_N2
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (counter(19)) # ((counter(20)) # ((counter(18)) # (counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datab => counter(20),
	datac => counter(18),
	datad => counter(17),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X8_Y8_N4
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (counter(14)) # ((counter(15)) # ((counter(16)) # (counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => counter(15),
	datac => counter(16),
	datad => counter(13),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X9_Y8_N14
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter(10)) # ((counter(9)) # ((counter(11)) # (counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(9),
	datac => counter(11),
	datad => counter(12),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X6_Y8_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (counter(6) & (counter(5) & counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datac => counter(5),
	datad => counter(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y8_N22
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter(3)) # ((counter(2) & ((counter(0)) # (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X9_Y8_N24
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter(7) & (counter(4) & (\LessThan0~0_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(4),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X9_Y8_N0
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~4_combout\) # ((\LessThan0~3_combout\) # (\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X8_Y8_N6
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\ & (((\LessThan0~6_combout\ & \ctrl_state.STATE_SEND_FIN~q\)) # (!\LessThan1~6_combout\))) # (!\Selector4~0_combout\ & (\LessThan0~6_combout\ & (\ctrl_state.STATE_SEND_FIN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \LessThan0~6_combout\,
	datac => \ctrl_state.STATE_SEND_FIN~q\,
	datad => \LessThan1~6_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X8_Y8_N7
\ctrl_state.STATE_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_WAIT~q\);

-- Location: LCCOMB_X9_Y8_N10
\Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector1~2_combout\ & (\ctrl_state.STATE_WAIT~q\ & (\trigger~input_o\))) # (!\Selector1~2_combout\ & (((\ctrl_state.STATE_COUNT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_WAIT~q\,
	datab => \trigger~input_o\,
	datac => \ctrl_state.STATE_COUNT~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X9_Y8_N11
\ctrl_state.STATE_COUNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_COUNT~q\);

-- Location: LCCOMB_X9_Y8_N30
\Selector28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~11_combout\ = (!\trigger~input_o\ & \ctrl_state.STATE_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger~input_o\,
	datad => \ctrl_state.STATE_COUNT~q\,
	combout => \Selector28~11_combout\);

-- Location: LCCOMB_X9_Y8_N8
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~2_combout\ & (!\Selector28~11_combout\ & (\Selector1~1_combout\))) # (!\Selector1~2_combout\ & (((\ctrl_state.STATE_SEND_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~11_combout\,
	datab => \Selector1~1_combout\,
	datac => \ctrl_state.STATE_SEND_START~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X9_Y8_N9
\ctrl_state.STATE_SEND_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ctrl_state.STATE_SEND_START~q\);

-- Location: LCCOMB_X10_Y8_N8
\trigger~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger~reg0feeder_combout\ = \ctrl_state.STATE_SEND_START~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_state.STATE_SEND_START~q\,
	combout => \trigger~reg0feeder_combout\);

-- Location: LCCOMB_X10_Y8_N16
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\Selector1~0_combout\) # ((\enable~input_o\ & (!\ctrl_state.STATE_INIT~q\ & !\last_enable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \ctrl_state.STATE_INIT~q\,
	datac => \last_enable~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X10_Y8_N9
\trigger~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger~reg0feeder_combout\,
	ena => \Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trigger~reg0_q\);

-- Location: LCCOMB_X10_Y8_N6
\trigger~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \trigger~2_combout\ = !\ctrl_state.STATE_SEND_FIN~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_state.STATE_SEND_FIN~q\,
	combout => \trigger~2_combout\);

-- Location: FF_X10_Y8_N7
\trigger~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \trigger~2_combout\,
	ena => \Selector58~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \trigger~en_q\);

-- Location: LCCOMB_X4_Y7_N0
\distance_counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[0]~10_combout\ = distance_counter(0) $ (VCC)
-- \distance_counter[0]~11\ = CARRY(distance_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => distance_counter(0),
	datad => VCC,
	combout => \distance_counter[0]~10_combout\,
	cout => \distance_counter[0]~11\);

-- Location: LCCOMB_X5_Y8_N12
\counter_high[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[0]~21_combout\ = counter_high(0) $ (VCC)
-- \counter_high[0]~22\ = CARRY(counter_high(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(0),
	datad => VCC,
	combout => \counter_high[0]~21_combout\,
	cout => \counter_high[0]~22\);

-- Location: LCCOMB_X5_Y7_N22
\counter_high[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[6]~47_combout\ = (\LessThan2~7_combout\) # (!\ctrl_state.STATE_COUNT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctrl_state.STATE_COUNT~q\,
	datad => \LessThan2~7_combout\,
	combout => \counter_high[6]~47_combout\);

-- Location: LCCOMB_X5_Y8_N0
\counter_high[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[6]~48_combout\ = (\trigger~input_o\ & ((\ctrl_state.STATE_COUNT~q\) # (\ctrl_state.STATE_WAIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \trigger~input_o\,
	datac => \ctrl_state.STATE_COUNT~q\,
	datad => \ctrl_state.STATE_WAIT~q\,
	combout => \counter_high[6]~48_combout\);

-- Location: FF_X5_Y8_N13
\counter_high[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[0]~21_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(0));

-- Location: LCCOMB_X5_Y8_N14
\counter_high[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[1]~23_combout\ = (counter_high(1) & (!\counter_high[0]~22\)) # (!counter_high(1) & ((\counter_high[0]~22\) # (GND)))
-- \counter_high[1]~24\ = CARRY((!\counter_high[0]~22\) # (!counter_high(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(1),
	datad => VCC,
	cin => \counter_high[0]~22\,
	combout => \counter_high[1]~23_combout\,
	cout => \counter_high[1]~24\);

-- Location: FF_X5_Y8_N15
\counter_high[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[1]~23_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(1));

-- Location: LCCOMB_X5_Y8_N16
\counter_high[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[2]~25_combout\ = (counter_high(2) & (\counter_high[1]~24\ $ (GND))) # (!counter_high(2) & (!\counter_high[1]~24\ & VCC))
-- \counter_high[2]~26\ = CARRY((counter_high(2) & !\counter_high[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(2),
	datad => VCC,
	cin => \counter_high[1]~24\,
	combout => \counter_high[2]~25_combout\,
	cout => \counter_high[2]~26\);

-- Location: FF_X5_Y8_N17
\counter_high[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[2]~25_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(2));

-- Location: LCCOMB_X5_Y8_N18
\counter_high[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[3]~27_combout\ = (counter_high(3) & (!\counter_high[2]~26\)) # (!counter_high(3) & ((\counter_high[2]~26\) # (GND)))
-- \counter_high[3]~28\ = CARRY((!\counter_high[2]~26\) # (!counter_high(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(3),
	datad => VCC,
	cin => \counter_high[2]~26\,
	combout => \counter_high[3]~27_combout\,
	cout => \counter_high[3]~28\);

-- Location: FF_X5_Y8_N19
\counter_high[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[3]~27_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(3));

-- Location: LCCOMB_X5_Y8_N20
\counter_high[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[4]~29_combout\ = (counter_high(4) & (\counter_high[3]~28\ $ (GND))) # (!counter_high(4) & (!\counter_high[3]~28\ & VCC))
-- \counter_high[4]~30\ = CARRY((counter_high(4) & !\counter_high[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(4),
	datad => VCC,
	cin => \counter_high[3]~28\,
	combout => \counter_high[4]~29_combout\,
	cout => \counter_high[4]~30\);

-- Location: FF_X5_Y8_N21
\counter_high[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[4]~29_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(4));

-- Location: LCCOMB_X5_Y8_N22
\counter_high[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[5]~31_combout\ = (counter_high(5) & (!\counter_high[4]~30\)) # (!counter_high(5) & ((\counter_high[4]~30\) # (GND)))
-- \counter_high[5]~32\ = CARRY((!\counter_high[4]~30\) # (!counter_high(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(5),
	datad => VCC,
	cin => \counter_high[4]~30\,
	combout => \counter_high[5]~31_combout\,
	cout => \counter_high[5]~32\);

-- Location: FF_X5_Y8_N23
\counter_high[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[5]~31_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(5));

-- Location: LCCOMB_X5_Y8_N24
\counter_high[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[6]~33_combout\ = (counter_high(6) & (\counter_high[5]~32\ $ (GND))) # (!counter_high(6) & (!\counter_high[5]~32\ & VCC))
-- \counter_high[6]~34\ = CARRY((counter_high(6) & !\counter_high[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(6),
	datad => VCC,
	cin => \counter_high[5]~32\,
	combout => \counter_high[6]~33_combout\,
	cout => \counter_high[6]~34\);

-- Location: FF_X5_Y8_N25
\counter_high[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[6]~33_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(6));

-- Location: LCCOMB_X5_Y8_N26
\counter_high[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[7]~35_combout\ = (counter_high(7) & (!\counter_high[6]~34\)) # (!counter_high(7) & ((\counter_high[6]~34\) # (GND)))
-- \counter_high[7]~36\ = CARRY((!\counter_high[6]~34\) # (!counter_high(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(7),
	datad => VCC,
	cin => \counter_high[6]~34\,
	combout => \counter_high[7]~35_combout\,
	cout => \counter_high[7]~36\);

-- Location: FF_X5_Y8_N27
\counter_high[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[7]~35_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(7));

-- Location: LCCOMB_X5_Y8_N28
\counter_high[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[8]~37_combout\ = (counter_high(8) & (\counter_high[7]~36\ $ (GND))) # (!counter_high(8) & (!\counter_high[7]~36\ & VCC))
-- \counter_high[8]~38\ = CARRY((counter_high(8) & !\counter_high[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(8),
	datad => VCC,
	cin => \counter_high[7]~36\,
	combout => \counter_high[8]~37_combout\,
	cout => \counter_high[8]~38\);

-- Location: FF_X5_Y8_N29
\counter_high[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[8]~37_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(8));

-- Location: LCCOMB_X5_Y8_N30
\counter_high[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[9]~39_combout\ = (counter_high(9) & (!\counter_high[8]~38\)) # (!counter_high(9) & ((\counter_high[8]~38\) # (GND)))
-- \counter_high[9]~40\ = CARRY((!\counter_high[8]~38\) # (!counter_high(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(9),
	datad => VCC,
	cin => \counter_high[8]~38\,
	combout => \counter_high[9]~39_combout\,
	cout => \counter_high[9]~40\);

-- Location: FF_X5_Y8_N31
\counter_high[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[9]~39_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(9));

-- Location: LCCOMB_X5_Y7_N0
\counter_high[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[10]~41_combout\ = (counter_high(10) & (\counter_high[9]~40\ $ (GND))) # (!counter_high(10) & (!\counter_high[9]~40\ & VCC))
-- \counter_high[10]~42\ = CARRY((counter_high(10) & !\counter_high[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(10),
	datad => VCC,
	cin => \counter_high[9]~40\,
	combout => \counter_high[10]~41_combout\,
	cout => \counter_high[10]~42\);

-- Location: FF_X5_Y7_N1
\counter_high[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[10]~41_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(10));

-- Location: LCCOMB_X5_Y7_N2
\counter_high[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[11]~43_combout\ = (counter_high(11) & (!\counter_high[10]~42\)) # (!counter_high(11) & ((\counter_high[10]~42\) # (GND)))
-- \counter_high[11]~44\ = CARRY((!\counter_high[10]~42\) # (!counter_high(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(11),
	datad => VCC,
	cin => \counter_high[10]~42\,
	combout => \counter_high[11]~43_combout\,
	cout => \counter_high[11]~44\);

-- Location: FF_X5_Y7_N3
\counter_high[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[11]~43_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(11));

-- Location: LCCOMB_X5_Y7_N4
\counter_high[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[12]~45_combout\ = (counter_high(12) & (\counter_high[11]~44\ $ (GND))) # (!counter_high(12) & (!\counter_high[11]~44\ & VCC))
-- \counter_high[12]~46\ = CARRY((counter_high(12) & !\counter_high[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(12),
	datad => VCC,
	cin => \counter_high[11]~44\,
	combout => \counter_high[12]~45_combout\,
	cout => \counter_high[12]~46\);

-- Location: FF_X5_Y7_N5
\counter_high[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[12]~45_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(12));

-- Location: LCCOMB_X5_Y7_N6
\counter_high[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[13]~49_combout\ = (counter_high(13) & (!\counter_high[12]~46\)) # (!counter_high(13) & ((\counter_high[12]~46\) # (GND)))
-- \counter_high[13]~50\ = CARRY((!\counter_high[12]~46\) # (!counter_high(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(13),
	datad => VCC,
	cin => \counter_high[12]~46\,
	combout => \counter_high[13]~49_combout\,
	cout => \counter_high[13]~50\);

-- Location: FF_X5_Y7_N7
\counter_high[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[13]~49_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(13));

-- Location: LCCOMB_X5_Y7_N8
\counter_high[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[14]~51_combout\ = (counter_high(14) & (\counter_high[13]~50\ $ (GND))) # (!counter_high(14) & (!\counter_high[13]~50\ & VCC))
-- \counter_high[14]~52\ = CARRY((counter_high(14) & !\counter_high[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(14),
	datad => VCC,
	cin => \counter_high[13]~50\,
	combout => \counter_high[14]~51_combout\,
	cout => \counter_high[14]~52\);

-- Location: FF_X5_Y7_N9
\counter_high[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[14]~51_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(14));

-- Location: LCCOMB_X5_Y7_N10
\counter_high[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[15]~53_combout\ = (counter_high(15) & (!\counter_high[14]~52\)) # (!counter_high(15) & ((\counter_high[14]~52\) # (GND)))
-- \counter_high[15]~54\ = CARRY((!\counter_high[14]~52\) # (!counter_high(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(15),
	datad => VCC,
	cin => \counter_high[14]~52\,
	combout => \counter_high[15]~53_combout\,
	cout => \counter_high[15]~54\);

-- Location: FF_X5_Y7_N11
\counter_high[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[15]~53_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(15));

-- Location: LCCOMB_X5_Y7_N12
\counter_high[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[16]~55_combout\ = (counter_high(16) & (\counter_high[15]~54\ $ (GND))) # (!counter_high(16) & (!\counter_high[15]~54\ & VCC))
-- \counter_high[16]~56\ = CARRY((counter_high(16) & !\counter_high[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(16),
	datad => VCC,
	cin => \counter_high[15]~54\,
	combout => \counter_high[16]~55_combout\,
	cout => \counter_high[16]~56\);

-- Location: FF_X5_Y7_N13
\counter_high[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[16]~55_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(16));

-- Location: LCCOMB_X5_Y7_N14
\counter_high[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[17]~57_combout\ = (counter_high(17) & (!\counter_high[16]~56\)) # (!counter_high(17) & ((\counter_high[16]~56\) # (GND)))
-- \counter_high[17]~58\ = CARRY((!\counter_high[16]~56\) # (!counter_high(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(17),
	datad => VCC,
	cin => \counter_high[16]~56\,
	combout => \counter_high[17]~57_combout\,
	cout => \counter_high[17]~58\);

-- Location: FF_X5_Y7_N15
\counter_high[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[17]~57_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(17));

-- Location: LCCOMB_X5_Y7_N16
\counter_high[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[18]~59_combout\ = (counter_high(18) & (\counter_high[17]~58\ $ (GND))) # (!counter_high(18) & (!\counter_high[17]~58\ & VCC))
-- \counter_high[18]~60\ = CARRY((counter_high(18) & !\counter_high[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter_high(18),
	datad => VCC,
	cin => \counter_high[17]~58\,
	combout => \counter_high[18]~59_combout\,
	cout => \counter_high[18]~60\);

-- Location: FF_X5_Y7_N17
\counter_high[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[18]~59_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(18));

-- Location: LCCOMB_X5_Y7_N18
\counter_high[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[19]~61_combout\ = (counter_high(19) & (!\counter_high[18]~60\)) # (!counter_high(19) & ((\counter_high[18]~60\) # (GND)))
-- \counter_high[19]~62\ = CARRY((!\counter_high[18]~60\) # (!counter_high(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(19),
	datad => VCC,
	cin => \counter_high[18]~60\,
	combout => \counter_high[19]~61_combout\,
	cout => \counter_high[19]~62\);

-- Location: FF_X5_Y7_N19
\counter_high[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[19]~61_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(19));

-- Location: LCCOMB_X5_Y7_N20
\counter_high[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter_high[20]~63_combout\ = \counter_high[19]~62\ $ (!counter_high(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter_high(20),
	cin => \counter_high[19]~62\,
	combout => \counter_high[20]~63_combout\);

-- Location: FF_X5_Y7_N21
\counter_high[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \counter_high[20]~63_combout\,
	sclr => \counter_high[6]~47_combout\,
	ena => \counter_high[6]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_high(20));

-- Location: LCCOMB_X5_Y7_N28
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (counter_high(16)) # ((counter_high(17)) # ((counter_high(14)) # (counter_high(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(16),
	datab => counter_high(17),
	datac => counter_high(14),
	datad => counter_high(15),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X5_Y7_N30
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (counter_high(19)) # ((counter_high(20)) # ((\LessThan2~1_combout\) # (counter_high(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(19),
	datab => counter_high(20),
	datac => \LessThan2~1_combout\,
	datad => counter_high(18),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X5_Y7_N26
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (counter_high(13)) # ((counter_high(12)) # ((counter_high(10) & counter_high(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(13),
	datab => counter_high(10),
	datac => counter_high(12),
	datad => counter_high(11),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X5_Y8_N8
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (counter_high(6) & ((counter_high(5)) # ((counter_high(3) & counter_high(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(5),
	datab => counter_high(3),
	datac => counter_high(4),
	datad => counter_high(6),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X5_Y8_N10
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (counter_high(4) & (counter_high(6) & ((counter_high(0)) # (counter_high(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(0),
	datab => counter_high(4),
	datac => counter_high(1),
	datad => counter_high(6),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X5_Y8_N4
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (counter_high(7)) # ((\LessThan2~3_combout\) # ((counter_high(2) & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter_high(7),
	datab => counter_high(2),
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X5_Y8_N6
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (counter_high(8) & (counter_high(9) & counter_high(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter_high(8),
	datac => counter_high(9),
	datad => counter_high(11),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X5_Y7_N24
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\LessThan2~2_combout\) # ((\LessThan2~0_combout\) # ((\LessThan2~5_combout\ & \LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X4_Y7_N18
\distance_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[0]~26_combout\ = (\trigger~input_o\ & ((\ctrl_state.STATE_WAIT~q\) # ((\ctrl_state.STATE_COUNT~q\ & \LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_state.STATE_WAIT~q\,
	datab => \trigger~input_o\,
	datac => \ctrl_state.STATE_COUNT~q\,
	datad => \LessThan2~7_combout\,
	combout => \distance_counter[0]~26_combout\);

-- Location: FF_X4_Y7_N1
\distance_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[0]~10_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(0));

-- Location: FF_X3_Y7_N1
\distance[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	asdata => distance_counter(0),
	sload => VCC,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[0]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N2
\distance_counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[1]~12_combout\ = (distance_counter(1) & (!\distance_counter[0]~11\)) # (!distance_counter(1) & ((\distance_counter[0]~11\) # (GND)))
-- \distance_counter[1]~13\ = CARRY((!\distance_counter[0]~11\) # (!distance_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distance_counter(1),
	datad => VCC,
	cin => \distance_counter[0]~11\,
	combout => \distance_counter[1]~12_combout\,
	cout => \distance_counter[1]~13\);

-- Location: FF_X4_Y7_N3
\distance_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[1]~12_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(1));

-- Location: LCCOMB_X4_Y7_N16
\distance[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[1]~reg0feeder_combout\ = distance_counter(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => distance_counter(1),
	combout => \distance[1]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N17
\distance[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[1]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[1]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N4
\distance_counter[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[2]~14_combout\ = (distance_counter(2) & (\distance_counter[1]~13\ $ (GND))) # (!distance_counter(2) & (!\distance_counter[1]~13\ & VCC))
-- \distance_counter[2]~15\ = CARRY((distance_counter(2) & !\distance_counter[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distance_counter(2),
	datad => VCC,
	cin => \distance_counter[1]~13\,
	combout => \distance_counter[2]~14_combout\,
	cout => \distance_counter[2]~15\);

-- Location: FF_X4_Y7_N5
\distance_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[2]~14_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(2));

-- Location: LCCOMB_X4_Y7_N22
\distance[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[2]~reg0feeder_combout\ = distance_counter(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => distance_counter(2),
	combout => \distance[2]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N23
\distance[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[2]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[2]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N6
\distance_counter[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[3]~16_combout\ = (distance_counter(3) & (!\distance_counter[2]~15\)) # (!distance_counter(3) & ((\distance_counter[2]~15\) # (GND)))
-- \distance_counter[3]~17\ = CARRY((!\distance_counter[2]~15\) # (!distance_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distance_counter(3),
	datad => VCC,
	cin => \distance_counter[2]~15\,
	combout => \distance_counter[3]~16_combout\,
	cout => \distance_counter[3]~17\);

-- Location: FF_X4_Y7_N7
\distance_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[3]~16_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(3));

-- Location: LCCOMB_X4_Y7_N28
\distance[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[3]~reg0feeder_combout\ = distance_counter(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => distance_counter(3),
	combout => \distance[3]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N29
\distance[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[3]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[3]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N8
\distance_counter[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[4]~18_combout\ = (distance_counter(4) & (\distance_counter[3]~17\ $ (GND))) # (!distance_counter(4) & (!\distance_counter[3]~17\ & VCC))
-- \distance_counter[4]~19\ = CARRY((distance_counter(4) & !\distance_counter[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distance_counter(4),
	datad => VCC,
	cin => \distance_counter[3]~17\,
	combout => \distance_counter[4]~18_combout\,
	cout => \distance_counter[4]~19\);

-- Location: FF_X4_Y7_N9
\distance_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[4]~18_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(4));

-- Location: LCCOMB_X4_Y7_N30
\distance[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[4]~reg0feeder_combout\ = distance_counter(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => distance_counter(4),
	combout => \distance[4]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N31
\distance[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[4]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[4]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N10
\distance_counter[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[5]~20_combout\ = (distance_counter(5) & (!\distance_counter[4]~19\)) # (!distance_counter(5) & ((\distance_counter[4]~19\) # (GND)))
-- \distance_counter[5]~21\ = CARRY((!\distance_counter[4]~19\) # (!distance_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distance_counter(5),
	datad => VCC,
	cin => \distance_counter[4]~19\,
	combout => \distance_counter[5]~20_combout\,
	cout => \distance_counter[5]~21\);

-- Location: FF_X4_Y7_N11
\distance_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[5]~20_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(5));

-- Location: LCCOMB_X4_Y7_N20
\distance[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[5]~reg0feeder_combout\ = distance_counter(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => distance_counter(5),
	combout => \distance[5]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N21
\distance[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[5]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[5]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N12
\distance_counter[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[6]~22_combout\ = (distance_counter(6) & (\distance_counter[5]~21\ $ (GND))) # (!distance_counter(6) & (!\distance_counter[5]~21\ & VCC))
-- \distance_counter[6]~23\ = CARRY((distance_counter(6) & !\distance_counter[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => distance_counter(6),
	datad => VCC,
	cin => \distance_counter[5]~21\,
	combout => \distance_counter[6]~22_combout\,
	cout => \distance_counter[6]~23\);

-- Location: FF_X4_Y7_N13
\distance_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[6]~22_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(6));

-- Location: LCCOMB_X4_Y7_N26
\distance[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[6]~reg0feeder_combout\ = distance_counter(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => distance_counter(6),
	combout => \distance[6]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N27
\distance[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[6]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[6]~reg0_q\);

-- Location: LCCOMB_X4_Y7_N14
\distance_counter[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance_counter[7]~24_combout\ = distance_counter(7) $ (\distance_counter[6]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => distance_counter(7),
	cin => \distance_counter[6]~23\,
	combout => \distance_counter[7]~24_combout\);

-- Location: FF_X4_Y7_N15
\distance_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance_counter[7]~24_combout\,
	sclr => \ALT_INV_ctrl_state.STATE_COUNT~q\,
	ena => \distance_counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => distance_counter(7));

-- Location: LCCOMB_X4_Y7_N24
\distance[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \distance[7]~reg0feeder_combout\ = distance_counter(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => distance_counter(7),
	combout => \distance[7]~reg0feeder_combout\);

-- Location: FF_X4_Y7_N25
\distance[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50~inputclkctrl_outclk\,
	d => \distance[7]~reg0feeder_combout\,
	ena => \Selector28~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \distance[7]~reg0_q\);

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


