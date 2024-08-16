-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/09/2023 19:08:02"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pwm IS
    PORT (
	led : OUT std_logic_vector(7 DOWNTO 0);
	clk_in : IN std_logic
	);
END pwm;

-- Design Ports Information
-- led[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pwm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk_in : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|count[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Add9~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add9~29_combout\ : std_logic;
SIGNAL \inst2|Add9~1\ : std_logic;
SIGNAL \inst2|Add9~2_combout\ : std_logic;
SIGNAL \inst2|Add9~28_combout\ : std_logic;
SIGNAL \inst2|Add9~3\ : std_logic;
SIGNAL \inst2|Add9~4_combout\ : std_logic;
SIGNAL \inst2|Add9~27_combout\ : std_logic;
SIGNAL \inst2|Add9~5\ : std_logic;
SIGNAL \inst2|Add9~6_combout\ : std_logic;
SIGNAL \inst2|Add9~26_combout\ : std_logic;
SIGNAL \inst2|Add9~7\ : std_logic;
SIGNAL \inst2|Add9~8_combout\ : std_logic;
SIGNAL \inst2|Add9~25_combout\ : std_logic;
SIGNAL \inst2|Add9~9\ : std_logic;
SIGNAL \inst2|Add9~10_combout\ : std_logic;
SIGNAL \inst2|Add9~24_combout\ : std_logic;
SIGNAL \inst2|Add9~11\ : std_logic;
SIGNAL \inst2|Add9~12_combout\ : std_logic;
SIGNAL \inst2|Add9~23_combout\ : std_logic;
SIGNAL \inst2|dutcyc[6]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add9~13\ : std_logic;
SIGNAL \inst2|Add9~14_combout\ : std_logic;
SIGNAL \inst2|Add9~16_combout\ : std_logic;
SIGNAL \inst2|dutcyc[8]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add9~15\ : std_logic;
SIGNAL \inst2|Add9~17_combout\ : std_logic;
SIGNAL \inst2|Add9~19_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Equal2~1_combout\ : std_logic;
SIGNAL \inst2|Equal2~2_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~2_combout\ : std_logic;
SIGNAL \inst2|direc~0_combout\ : std_logic;
SIGNAL \inst2|direc~q\ : std_logic;
SIGNAL \inst2|Add9~18\ : std_logic;
SIGNAL \inst2|Add9~20_combout\ : std_logic;
SIGNAL \inst2|Add9~22_combout\ : std_logic;
SIGNAL \inst2|Add7~0_combout\ : std_logic;
SIGNAL \inst2|Add7~1_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_cout\ : std_logic;
SIGNAL \inst2|LessThan7~3_cout\ : std_logic;
SIGNAL \inst2|LessThan7~5_cout\ : std_logic;
SIGNAL \inst2|LessThan7~7_cout\ : std_logic;
SIGNAL \inst2|LessThan7~9_cout\ : std_logic;
SIGNAL \inst2|LessThan7~11_cout\ : std_logic;
SIGNAL \inst2|LessThan7~13_cout\ : std_logic;
SIGNAL \inst2|LessThan7~15_cout\ : std_logic;
SIGNAL \inst2|LessThan7~17_cout\ : std_logic;
SIGNAL \inst2|LessThan7~18_combout\ : std_logic;
SIGNAL \inst2|op[7]~0_combout\ : std_logic;
SIGNAL \inst2|Add6~0_combout\ : std_logic;
SIGNAL \inst2|LessThan6~1_cout\ : std_logic;
SIGNAL \inst2|LessThan6~3_cout\ : std_logic;
SIGNAL \inst2|LessThan6~5_cout\ : std_logic;
SIGNAL \inst2|LessThan6~7_cout\ : std_logic;
SIGNAL \inst2|LessThan6~9_cout\ : std_logic;
SIGNAL \inst2|LessThan6~11_cout\ : std_logic;
SIGNAL \inst2|LessThan6~13_cout\ : std_logic;
SIGNAL \inst2|LessThan6~15_cout\ : std_logic;
SIGNAL \inst2|LessThan6~17_cout\ : std_logic;
SIGNAL \inst2|LessThan6~18_combout\ : std_logic;
SIGNAL \inst2|op[6]~1_combout\ : std_logic;
SIGNAL \inst2|Add5~0_combout\ : std_logic;
SIGNAL \inst2|LessThan5~1_cout\ : std_logic;
SIGNAL \inst2|LessThan5~3_cout\ : std_logic;
SIGNAL \inst2|LessThan5~5_cout\ : std_logic;
SIGNAL \inst2|LessThan5~7_cout\ : std_logic;
SIGNAL \inst2|LessThan5~9_cout\ : std_logic;
SIGNAL \inst2|LessThan5~11_cout\ : std_logic;
SIGNAL \inst2|LessThan5~13_cout\ : std_logic;
SIGNAL \inst2|LessThan5~15_cout\ : std_logic;
SIGNAL \inst2|LessThan5~17_cout\ : std_logic;
SIGNAL \inst2|LessThan5~18_combout\ : std_logic;
SIGNAL \inst2|op[5]~2_combout\ : std_logic;
SIGNAL \inst2|LessThan4~1_cout\ : std_logic;
SIGNAL \inst2|LessThan4~3_cout\ : std_logic;
SIGNAL \inst2|LessThan4~5_cout\ : std_logic;
SIGNAL \inst2|LessThan4~7_cout\ : std_logic;
SIGNAL \inst2|LessThan4~9_cout\ : std_logic;
SIGNAL \inst2|LessThan4~11_cout\ : std_logic;
SIGNAL \inst2|LessThan4~13_cout\ : std_logic;
SIGNAL \inst2|LessThan4~15_cout\ : std_logic;
SIGNAL \inst2|LessThan4~17_cout\ : std_logic;
SIGNAL \inst2|LessThan4~18_combout\ : std_logic;
SIGNAL \inst2|op[4]~3_combout\ : std_logic;
SIGNAL \inst2|LessThan3~1_cout\ : std_logic;
SIGNAL \inst2|LessThan3~3_cout\ : std_logic;
SIGNAL \inst2|LessThan3~5_cout\ : std_logic;
SIGNAL \inst2|LessThan3~7_cout\ : std_logic;
SIGNAL \inst2|LessThan3~9_cout\ : std_logic;
SIGNAL \inst2|LessThan3~11_cout\ : std_logic;
SIGNAL \inst2|LessThan3~13_cout\ : std_logic;
SIGNAL \inst2|LessThan3~15_cout\ : std_logic;
SIGNAL \inst2|LessThan3~17_cout\ : std_logic;
SIGNAL \inst2|LessThan3~18_combout\ : std_logic;
SIGNAL \inst2|op[3]~4_combout\ : std_logic;
SIGNAL \inst2|LessThan2~1_cout\ : std_logic;
SIGNAL \inst2|LessThan2~3_cout\ : std_logic;
SIGNAL \inst2|LessThan2~5_cout\ : std_logic;
SIGNAL \inst2|LessThan2~7_cout\ : std_logic;
SIGNAL \inst2|LessThan2~9_cout\ : std_logic;
SIGNAL \inst2|LessThan2~11_cout\ : std_logic;
SIGNAL \inst2|LessThan2~13_cout\ : std_logic;
SIGNAL \inst2|LessThan2~15_cout\ : std_logic;
SIGNAL \inst2|LessThan2~17_cout\ : std_logic;
SIGNAL \inst2|LessThan2~18_combout\ : std_logic;
SIGNAL \inst2|op[2]~5_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_cout\ : std_logic;
SIGNAL \inst2|LessThan1~3_cout\ : std_logic;
SIGNAL \inst2|LessThan1~5_cout\ : std_logic;
SIGNAL \inst2|LessThan1~7_cout\ : std_logic;
SIGNAL \inst2|LessThan1~9_cout\ : std_logic;
SIGNAL \inst2|LessThan1~11_cout\ : std_logic;
SIGNAL \inst2|LessThan1~13_cout\ : std_logic;
SIGNAL \inst2|LessThan1~15_cout\ : std_logic;
SIGNAL \inst2|LessThan1~17_cout\ : std_logic;
SIGNAL \inst2|LessThan1~18_combout\ : std_logic;
SIGNAL \inst2|op[1]~6_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_cout\ : std_logic;
SIGNAL \inst2|LessThan0~3_cout\ : std_logic;
SIGNAL \inst2|LessThan0~5_cout\ : std_logic;
SIGNAL \inst2|LessThan0~7_cout\ : std_logic;
SIGNAL \inst2|LessThan0~9_cout\ : std_logic;
SIGNAL \inst2|LessThan0~11_cout\ : std_logic;
SIGNAL \inst2|LessThan0~13_cout\ : std_logic;
SIGNAL \inst2|LessThan0~15_cout\ : std_logic;
SIGNAL \inst2|LessThan0~17_cout\ : std_logic;
SIGNAL \inst2|LessThan0~18_combout\ : std_logic;
SIGNAL \inst2|op[0]~7_combout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst2|op\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|dutcyc\ : std_logic_vector(9 DOWNTO 0);

BEGIN

led <= ww_led;
ww_clk_in <= clk_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_in~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: IOOBUF_X0_Y10_N23
\led[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(7),
	devoe => ww_devoe,
	o => ww_led(7));

-- Location: IOOBUF_X0_Y28_N9
\led[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(6),
	devoe => ww_devoe,
	o => ww_led(6));

-- Location: IOOBUF_X0_Y26_N16
\led[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(5),
	devoe => ww_devoe,
	o => ww_led(5));

-- Location: IOOBUF_X0_Y25_N9
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(4),
	devoe => ww_devoe,
	o => ww_led(4));

-- Location: IOOBUF_X40_Y34_N2
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(3),
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X49_Y34_N9
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(2),
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X49_Y34_N2
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(1),
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X38_Y34_N16
\led[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|op\(0),
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOIBUF_X27_Y0_N22
\clk_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: PLL_4
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 200,
	c1_initial => 1,
	c1_low => 200,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 100,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G19
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: FF_X36_Y25_N23
\inst2|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(9));

-- Location: LCCOMB_X36_Y25_N4
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: FF_X35_Y25_N13
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X36_Y25_N6
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|count\(1) & (!\inst2|Add0~1\)) # (!\inst2|count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X35_Y25_N15
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X36_Y25_N8
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X35_Y25_N17
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X36_Y25_N10
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|count\(3) & (!\inst2|Add0~5\)) # (!\inst2|count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X35_Y25_N19
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X36_Y25_N12
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X35_Y25_N21
\inst2|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(4));

-- Location: LCCOMB_X36_Y25_N14
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|count\(5) & (!\inst2|Add0~9\)) # (!\inst2|count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X36_Y25_N25
\inst2|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(5));

-- Location: LCCOMB_X36_Y25_N16
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X36_Y25_N21
\inst2|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(6));

-- Location: LCCOMB_X36_Y25_N18
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|count\(7) & (!\inst2|Add0~13\)) # (!\inst2|count\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: FF_X35_Y25_N27
\inst2|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(7));

-- Location: LCCOMB_X36_Y25_N20
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X35_Y25_N28
\inst2|count[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count[8]~feeder_combout\ = \inst2|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|count[8]~feeder_combout\);

-- Location: FF_X35_Y25_N29
\inst2|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|count[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(8));

-- Location: LCCOMB_X36_Y25_N22
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \inst2|count\(9) $ (\inst2|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(9),
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X34_Y25_N26
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|Add0~8_combout\ & (\inst2|Add0~10_combout\ & (\inst2|Add0~6_combout\ & \inst2|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~10_combout\,
	datac => \inst2|Add0~6_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y25_N0
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|Add0~14_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: FF_X35_Y26_N3
\inst2|dutcyc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add9~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(7));

-- Location: LCCOMB_X34_Y26_N0
\inst2|Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~0_combout\ = \inst2|dutcyc\(0) $ (VCC)
-- \inst2|Add9~1\ = CARRY(\inst2|dutcyc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(0),
	datad => VCC,
	combout => \inst2|Add9~0_combout\,
	cout => \inst2|Add9~1\);

-- Location: LCCOMB_X35_Y25_N6
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|Add0~2_combout\ & (\inst2|Add0~16_combout\ & (\inst2|Add0~0_combout\ & \inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y26_N24
\inst2|Add9~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~29_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~0_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(0)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add9~0_combout\,
	datac => \inst2|dutcyc\(0),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Add9~29_combout\);

-- Location: FF_X34_Y26_N25
\inst2|dutcyc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add9~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(0));

-- Location: LCCOMB_X34_Y26_N2
\inst2|Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~2_combout\ = (\inst2|direc~q\ & ((\inst2|dutcyc\(1) & (\inst2|Add9~1\ & VCC)) # (!\inst2|dutcyc\(1) & (!\inst2|Add9~1\)))) # (!\inst2|direc~q\ & ((\inst2|dutcyc\(1) & (!\inst2|Add9~1\)) # (!\inst2|dutcyc\(1) & ((\inst2|Add9~1\) # (GND)))))
-- \inst2|Add9~3\ = CARRY((\inst2|direc~q\ & (!\inst2|dutcyc\(1) & !\inst2|Add9~1\)) # (!\inst2|direc~q\ & ((!\inst2|Add9~1\) # (!\inst2|dutcyc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|Add9~1\,
	combout => \inst2|Add9~2_combout\,
	cout => \inst2|Add9~3\);

-- Location: LCCOMB_X34_Y26_N30
\inst2|Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~28_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~2_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(1)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add9~2_combout\,
	datac => \inst2|dutcyc\(1),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Add9~28_combout\);

-- Location: FF_X34_Y26_N31
\inst2|dutcyc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add9~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(1));

-- Location: LCCOMB_X34_Y26_N4
\inst2|Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~4_combout\ = ((\inst2|direc~q\ $ (\inst2|dutcyc\(2) $ (!\inst2|Add9~3\)))) # (GND)
-- \inst2|Add9~5\ = CARRY((\inst2|direc~q\ & ((\inst2|dutcyc\(2)) # (!\inst2|Add9~3\))) # (!\inst2|direc~q\ & (\inst2|dutcyc\(2) & !\inst2|Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(2),
	datad => VCC,
	cin => \inst2|Add9~3\,
	combout => \inst2|Add9~4_combout\,
	cout => \inst2|Add9~5\);

-- Location: LCCOMB_X31_Y26_N4
\inst2|Add9~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~27_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~4_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(2)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add9~4_combout\,
	datac => \inst2|dutcyc\(2),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Add9~27_combout\);

-- Location: FF_X31_Y26_N5
\inst2|dutcyc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add9~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(2));

-- Location: LCCOMB_X34_Y26_N6
\inst2|Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~6_combout\ = (\inst2|direc~q\ & ((\inst2|dutcyc\(3) & (\inst2|Add9~5\ & VCC)) # (!\inst2|dutcyc\(3) & (!\inst2|Add9~5\)))) # (!\inst2|direc~q\ & ((\inst2|dutcyc\(3) & (!\inst2|Add9~5\)) # (!\inst2|dutcyc\(3) & ((\inst2|Add9~5\) # (GND)))))
-- \inst2|Add9~7\ = CARRY((\inst2|direc~q\ & (!\inst2|dutcyc\(3) & !\inst2|Add9~5\)) # (!\inst2|direc~q\ & ((!\inst2|Add9~5\) # (!\inst2|dutcyc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(3),
	datad => VCC,
	cin => \inst2|Add9~5\,
	combout => \inst2|Add9~6_combout\,
	cout => \inst2|Add9~7\);

-- Location: LCCOMB_X32_Y26_N16
\inst2|Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~26_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~6_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(3)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~6_combout\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|dutcyc\(3),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Add9~26_combout\);

-- Location: FF_X32_Y26_N17
\inst2|dutcyc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add9~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(3));

-- Location: LCCOMB_X34_Y26_N8
\inst2|Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~8_combout\ = ((\inst2|direc~q\ $ (\inst2|dutcyc\(4) $ (!\inst2|Add9~7\)))) # (GND)
-- \inst2|Add9~9\ = CARRY((\inst2|direc~q\ & ((\inst2|dutcyc\(4)) # (!\inst2|Add9~7\))) # (!\inst2|direc~q\ & (\inst2|dutcyc\(4) & !\inst2|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(4),
	datad => VCC,
	cin => \inst2|Add9~7\,
	combout => \inst2|Add9~8_combout\,
	cout => \inst2|Add9~9\);

-- Location: LCCOMB_X34_Y26_N20
\inst2|Add9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~25_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~8_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(4)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add9~8_combout\,
	datac => \inst2|dutcyc\(4),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Add9~25_combout\);

-- Location: FF_X34_Y26_N21
\inst2|dutcyc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add9~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(4));

-- Location: LCCOMB_X34_Y26_N10
\inst2|Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~10_combout\ = (\inst2|direc~q\ & ((\inst2|dutcyc\(5) & (\inst2|Add9~9\ & VCC)) # (!\inst2|dutcyc\(5) & (!\inst2|Add9~9\)))) # (!\inst2|direc~q\ & ((\inst2|dutcyc\(5) & (!\inst2|Add9~9\)) # (!\inst2|dutcyc\(5) & ((\inst2|Add9~9\) # (GND)))))
-- \inst2|Add9~11\ = CARRY((\inst2|direc~q\ & (!\inst2|dutcyc\(5) & !\inst2|Add9~9\)) # (!\inst2|direc~q\ & ((!\inst2|Add9~9\) # (!\inst2|dutcyc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(5),
	datad => VCC,
	cin => \inst2|Add9~9\,
	combout => \inst2|Add9~10_combout\,
	cout => \inst2|Add9~11\);

-- Location: LCCOMB_X31_Y26_N18
\inst2|Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~24_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~10_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(5)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add9~10_combout\,
	datac => \inst2|dutcyc\(5),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Add9~24_combout\);

-- Location: FF_X31_Y26_N19
\inst2|dutcyc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|Add9~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(5));

-- Location: LCCOMB_X34_Y26_N12
\inst2|Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~12_combout\ = ((\inst2|direc~q\ $ (\inst2|dutcyc\(6) $ (!\inst2|Add9~11\)))) # (GND)
-- \inst2|Add9~13\ = CARRY((\inst2|direc~q\ & ((\inst2|dutcyc\(6)) # (!\inst2|Add9~11\))) # (!\inst2|direc~q\ & (\inst2|dutcyc\(6) & !\inst2|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(6),
	datad => VCC,
	cin => \inst2|Add9~11\,
	combout => \inst2|Add9~12_combout\,
	cout => \inst2|Add9~13\);

-- Location: LCCOMB_X35_Y26_N24
\inst2|Add9~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~23_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Equal0~2_combout\ & (\inst2|Add9~12_combout\)) # (!\inst2|Equal0~2_combout\ & ((\inst2|dutcyc\(6)))))) # (!\inst2|Equal0~0_combout\ & (((\inst2|dutcyc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~12_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|dutcyc\(6),
	combout => \inst2|Add9~23_combout\);

-- Location: LCCOMB_X35_Y26_N16
\inst2|dutcyc[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dutcyc[6]~feeder_combout\ = \inst2|Add9~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add9~23_combout\,
	combout => \inst2|dutcyc[6]~feeder_combout\);

-- Location: FF_X35_Y26_N17
\inst2|dutcyc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|dutcyc[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(6));

-- Location: LCCOMB_X34_Y26_N14
\inst2|Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~14_combout\ = (\inst2|direc~q\ & ((\inst2|dutcyc\(7) & (\inst2|Add9~13\ & VCC)) # (!\inst2|dutcyc\(7) & (!\inst2|Add9~13\)))) # (!\inst2|direc~q\ & ((\inst2|dutcyc\(7) & (!\inst2|Add9~13\)) # (!\inst2|dutcyc\(7) & ((\inst2|Add9~13\) # 
-- (GND)))))
-- \inst2|Add9~15\ = CARRY((\inst2|direc~q\ & (!\inst2|dutcyc\(7) & !\inst2|Add9~13\)) # (!\inst2|direc~q\ & ((!\inst2|Add9~13\) # (!\inst2|dutcyc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|Add9~13\,
	combout => \inst2|Add9~14_combout\,
	cout => \inst2|Add9~15\);

-- Location: LCCOMB_X35_Y26_N26
\inst2|Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~16_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Equal0~2_combout\ & (\inst2|Add9~14_combout\)) # (!\inst2|Equal0~2_combout\ & ((\inst2|dutcyc\(7)))))) # (!\inst2|Equal0~0_combout\ & (((\inst2|dutcyc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~14_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|dutcyc\(7),
	combout => \inst2|Add9~16_combout\);

-- Location: LCCOMB_X35_Y26_N4
\inst2|dutcyc[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|dutcyc[8]~feeder_combout\ = \inst2|Add9~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Add9~19_combout\,
	combout => \inst2|dutcyc[8]~feeder_combout\);

-- Location: FF_X35_Y26_N5
\inst2|dutcyc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|dutcyc[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(8));

-- Location: LCCOMB_X34_Y26_N16
\inst2|Add9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~17_combout\ = ((\inst2|direc~q\ $ (\inst2|dutcyc\(8) $ (!\inst2|Add9~15\)))) # (GND)
-- \inst2|Add9~18\ = CARRY((\inst2|direc~q\ & ((\inst2|dutcyc\(8)) # (!\inst2|Add9~15\))) # (!\inst2|direc~q\ & (\inst2|dutcyc\(8) & !\inst2|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datab => \inst2|dutcyc\(8),
	datad => VCC,
	cin => \inst2|Add9~15\,
	combout => \inst2|Add9~17_combout\,
	cout => \inst2|Add9~18\);

-- Location: LCCOMB_X35_Y26_N28
\inst2|Add9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~19_combout\ = (\inst2|Equal0~0_combout\ & ((\inst2|Equal0~2_combout\ & (\inst2|Add9~17_combout\)) # (!\inst2|Equal0~2_combout\ & ((\inst2|dutcyc\(8)))))) # (!\inst2|Equal0~0_combout\ & (((\inst2|dutcyc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~17_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|dutcyc\(8),
	combout => \inst2|Add9~19_combout\);

-- Location: LCCOMB_X35_Y26_N20
\inst2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (!\inst2|Add9~16_combout\ & (!\inst2|Add9~19_combout\ & (!\inst2|Add9~22_combout\ & !\inst2|Add9~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~16_combout\,
	datab => \inst2|Add9~19_combout\,
	datac => \inst2|Add9~22_combout\,
	datad => \inst2|Add9~23_combout\,
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X31_Y26_N24
\inst2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~1_combout\ = (!\inst2|Add9~24_combout\ & (!\inst2|Add9~26_combout\ & (!\inst2|Add9~27_combout\ & !\inst2|Add9~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~24_combout\,
	datab => \inst2|Add9~26_combout\,
	datac => \inst2|Add9~27_combout\,
	datad => \inst2|Add9~25_combout\,
	combout => \inst2|Equal2~1_combout\);

-- Location: LCCOMB_X34_Y26_N22
\inst2|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal2~2_combout\ = (\inst2|Equal2~0_combout\ & (\inst2|Equal2~1_combout\ & (!\inst2|Add9~28_combout\ & !\inst2|Add9~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~0_combout\,
	datab => \inst2|Equal2~1_combout\,
	datac => \inst2|Add9~28_combout\,
	datad => \inst2|Add9~29_combout\,
	combout => \inst2|Equal2~2_combout\);

-- Location: LCCOMB_X31_Y26_N30
\inst2|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|Add9~24_combout\ & (\inst2|Add9~26_combout\ & (\inst2|Add9~27_combout\ & \inst2|Add9~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~24_combout\,
	datab => \inst2|Add9~26_combout\,
	datac => \inst2|Add9~27_combout\,
	datad => \inst2|Add9~25_combout\,
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X35_Y26_N18
\inst2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|Add9~16_combout\ & (\inst2|Add9~19_combout\ & (\inst2|Add9~22_combout\ & \inst2|Add9~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add9~16_combout\,
	datab => \inst2|Add9~19_combout\,
	datac => \inst2|Add9~22_combout\,
	datad => \inst2|Add9~23_combout\,
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y26_N28
\inst2|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal1~2_combout\ = (\inst2|Equal1~1_combout\ & (\inst2|Add9~29_combout\ & (\inst2|Add9~28_combout\ & \inst2|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add9~29_combout\,
	datac => \inst2|Add9~28_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|Equal1~2_combout\);

-- Location: LCCOMB_X34_Y26_N26
\inst2|direc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|direc~0_combout\ = (\inst2|Equal2~2_combout\) # ((\inst2|Equal1~2_combout\) # (\inst2|direc~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~2_combout\,
	datab => \inst2|Equal1~2_combout\,
	datac => \inst2|direc~q\,
	combout => \inst2|direc~0_combout\);

-- Location: FF_X34_Y26_N27
\inst2|direc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|direc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|direc~q\);

-- Location: LCCOMB_X34_Y26_N18
\inst2|Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~20_combout\ = \inst2|direc~q\ $ (\inst2|Add9~18\ $ (\inst2|dutcyc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|direc~q\,
	datad => \inst2|dutcyc\(9),
	cin => \inst2|Add9~18\,
	combout => \inst2|Add9~20_combout\);

-- Location: LCCOMB_X35_Y26_N14
\inst2|Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add9~22_combout\ = (\inst2|Equal0~2_combout\ & ((\inst2|Equal0~0_combout\ & (\inst2|Add9~20_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|dutcyc\(9)))))) # (!\inst2|Equal0~2_combout\ & (((\inst2|dutcyc\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Add9~20_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|dutcyc\(9),
	combout => \inst2|Add9~22_combout\);

-- Location: FF_X35_Y26_N7
\inst2|dutcyc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|Add9~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|dutcyc\(9));

-- Location: LCCOMB_X34_Y25_N24
\inst2|Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add7~0_combout\ = \inst2|dutcyc\(9) $ (((\inst2|dutcyc\(8)) # (\inst2|dutcyc\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dutcyc\(9),
	datac => \inst2|dutcyc\(8),
	datad => \inst2|dutcyc\(7),
	combout => \inst2|Add7~0_combout\);

-- Location: LCCOMB_X30_Y24_N0
\inst2|Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add7~1_combout\ = \inst2|dutcyc\(8) $ (\inst2|dutcyc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dutcyc\(8),
	datad => \inst2|dutcyc\(7),
	combout => \inst2|Add7~1_combout\);

-- Location: LCCOMB_X30_Y25_N4
\inst2|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_cout\ = CARRY((\inst2|dutcyc\(0) & !\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(0),
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan7~1_cout\);

-- Location: LCCOMB_X30_Y25_N6
\inst2|LessThan7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan7~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan7~1_cout\,
	cout => \inst2|LessThan7~3_cout\);

-- Location: LCCOMB_X30_Y25_N8
\inst2|LessThan7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~5_cout\ = CARRY((\inst2|dutcyc\(2) & ((!\inst2|LessThan7~3_cout\) # (!\inst2|Add0~4_combout\))) # (!\inst2|dutcyc\(2) & (!\inst2|Add0~4_combout\ & !\inst2|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(2),
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~3_cout\,
	cout => \inst2|LessThan7~5_cout\);

-- Location: LCCOMB_X30_Y25_N10
\inst2|LessThan7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~7_cout\ = CARRY((\inst2|dutcyc\(3) & (\inst2|Add0~6_combout\ & !\inst2|LessThan7~5_cout\)) # (!\inst2|dutcyc\(3) & ((\inst2|Add0~6_combout\) # (!\inst2|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(3),
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~5_cout\,
	cout => \inst2|LessThan7~7_cout\);

-- Location: LCCOMB_X30_Y25_N12
\inst2|LessThan7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~9_cout\ = CARRY((\inst2|dutcyc\(4) & ((!\inst2|LessThan7~7_cout\) # (!\inst2|Add0~8_combout\))) # (!\inst2|dutcyc\(4) & (!\inst2|Add0~8_combout\ & !\inst2|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(4),
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~7_cout\,
	cout => \inst2|LessThan7~9_cout\);

-- Location: LCCOMB_X30_Y25_N14
\inst2|LessThan7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~11_cout\ = CARRY((\inst2|dutcyc\(5) & (\inst2|Add0~10_combout\ & !\inst2|LessThan7~9_cout\)) # (!\inst2|dutcyc\(5) & ((\inst2|Add0~10_combout\) # (!\inst2|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(5),
	datab => \inst2|Add0~10_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~9_cout\,
	cout => \inst2|LessThan7~11_cout\);

-- Location: LCCOMB_X30_Y25_N16
\inst2|LessThan7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~13_cout\ = CARRY((\inst2|dutcyc\(6) & ((!\inst2|LessThan7~11_cout\) # (!\inst2|Add0~12_combout\))) # (!\inst2|dutcyc\(6) & (!\inst2|Add0~12_combout\ & !\inst2|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(6),
	datab => \inst2|Add0~12_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~11_cout\,
	cout => \inst2|LessThan7~13_cout\);

-- Location: LCCOMB_X30_Y25_N18
\inst2|LessThan7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~15_cout\ = CARRY((\inst2|dutcyc\(7) & ((\inst2|Add0~14_combout\) # (!\inst2|LessThan7~13_cout\))) # (!\inst2|dutcyc\(7) & (\inst2|Add0~14_combout\ & !\inst2|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(7),
	datab => \inst2|Add0~14_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~13_cout\,
	cout => \inst2|LessThan7~15_cout\);

-- Location: LCCOMB_X30_Y25_N20
\inst2|LessThan7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~17_cout\ = CARRY((\inst2|Add0~16_combout\ & (!\inst2|Add7~1_combout\ & !\inst2|LessThan7~15_cout\)) # (!\inst2|Add0~16_combout\ & ((!\inst2|LessThan7~15_cout\) # (!\inst2|Add7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|Add7~1_combout\,
	datad => VCC,
	cin => \inst2|LessThan7~15_cout\,
	cout => \inst2|LessThan7~17_cout\);

-- Location: LCCOMB_X30_Y25_N22
\inst2|LessThan7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~18_combout\ = (\inst2|Add0~18_combout\ & (!\inst2|Add7~0_combout\ & \inst2|LessThan7~17_cout\)) # (!\inst2|Add0~18_combout\ & ((\inst2|LessThan7~17_cout\) # (!\inst2|Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datab => \inst2|Add7~0_combout\,
	cin => \inst2|LessThan7~17_cout\,
	combout => \inst2|LessThan7~18_combout\);

-- Location: LCCOMB_X30_Y25_N24
\inst2|op[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[7]~0_combout\ = !\inst2|LessThan7~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan7~18_combout\,
	combout => \inst2|op[7]~0_combout\);

-- Location: FF_X30_Y25_N25
\inst2|op[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(7));

-- Location: LCCOMB_X30_Y24_N2
\inst2|Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add6~0_combout\ = \inst2|dutcyc\(9) $ (\inst2|dutcyc\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dutcyc\(9),
	datad => \inst2|dutcyc\(8),
	combout => \inst2|Add6~0_combout\);

-- Location: LCCOMB_X30_Y24_N12
\inst2|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~1_cout\ = CARRY((!\inst2|Add0~0_combout\ & \inst2|dutcyc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|dutcyc\(0),
	datad => VCC,
	cout => \inst2|LessThan6~1_cout\);

-- Location: LCCOMB_X30_Y24_N14
\inst2|LessThan6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan6~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan6~1_cout\,
	cout => \inst2|LessThan6~3_cout\);

-- Location: LCCOMB_X30_Y24_N16
\inst2|LessThan6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~5_cout\ = CARRY((\inst2|dutcyc\(2) & ((!\inst2|LessThan6~3_cout\) # (!\inst2|Add0~4_combout\))) # (!\inst2|dutcyc\(2) & (!\inst2|Add0~4_combout\ & !\inst2|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(2),
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan6~3_cout\,
	cout => \inst2|LessThan6~5_cout\);

-- Location: LCCOMB_X30_Y24_N18
\inst2|LessThan6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~7_cout\ = CARRY((\inst2|Add0~6_combout\ & ((!\inst2|LessThan6~5_cout\) # (!\inst2|dutcyc\(3)))) # (!\inst2|Add0~6_combout\ & (!\inst2|dutcyc\(3) & !\inst2|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|dutcyc\(3),
	datad => VCC,
	cin => \inst2|LessThan6~5_cout\,
	cout => \inst2|LessThan6~7_cout\);

-- Location: LCCOMB_X30_Y24_N20
\inst2|LessThan6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~9_cout\ = CARRY((\inst2|Add0~8_combout\ & (\inst2|dutcyc\(4) & !\inst2|LessThan6~7_cout\)) # (!\inst2|Add0~8_combout\ & ((\inst2|dutcyc\(4)) # (!\inst2|LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|dutcyc\(4),
	datad => VCC,
	cin => \inst2|LessThan6~7_cout\,
	cout => \inst2|LessThan6~9_cout\);

-- Location: LCCOMB_X30_Y24_N22
\inst2|LessThan6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~11_cout\ = CARRY((\inst2|Add0~10_combout\ & ((!\inst2|LessThan6~9_cout\) # (!\inst2|dutcyc\(5)))) # (!\inst2|Add0~10_combout\ & (!\inst2|dutcyc\(5) & !\inst2|LessThan6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datab => \inst2|dutcyc\(5),
	datad => VCC,
	cin => \inst2|LessThan6~9_cout\,
	cout => \inst2|LessThan6~11_cout\);

-- Location: LCCOMB_X30_Y24_N24
\inst2|LessThan6~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~13_cout\ = CARRY((\inst2|dutcyc\(6) & ((!\inst2|LessThan6~11_cout\) # (!\inst2|Add0~12_combout\))) # (!\inst2|dutcyc\(6) & (!\inst2|Add0~12_combout\ & !\inst2|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(6),
	datab => \inst2|Add0~12_combout\,
	datad => VCC,
	cin => \inst2|LessThan6~11_cout\,
	cout => \inst2|LessThan6~13_cout\);

-- Location: LCCOMB_X30_Y24_N26
\inst2|LessThan6~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~15_cout\ = CARRY((\inst2|Add0~14_combout\ & ((!\inst2|LessThan6~13_cout\) # (!\inst2|dutcyc\(7)))) # (!\inst2|Add0~14_combout\ & (!\inst2|dutcyc\(7) & !\inst2|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|LessThan6~13_cout\,
	cout => \inst2|LessThan6~15_cout\);

-- Location: LCCOMB_X30_Y24_N28
\inst2|LessThan6~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~17_cout\ = CARRY((\inst2|Add0~16_combout\ & (!\inst2|dutcyc\(8) & !\inst2|LessThan6~15_cout\)) # (!\inst2|Add0~16_combout\ & ((!\inst2|LessThan6~15_cout\) # (!\inst2|dutcyc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|dutcyc\(8),
	datad => VCC,
	cin => \inst2|LessThan6~15_cout\,
	cout => \inst2|LessThan6~17_cout\);

-- Location: LCCOMB_X30_Y24_N30
\inst2|LessThan6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan6~18_combout\ = (\inst2|Add6~0_combout\ & (\inst2|LessThan6~17_cout\ & !\inst2|Add0~18_combout\)) # (!\inst2|Add6~0_combout\ & ((\inst2|LessThan6~17_cout\) # (!\inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add6~0_combout\,
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan6~17_cout\,
	combout => \inst2|LessThan6~18_combout\);

-- Location: LCCOMB_X29_Y25_N24
\inst2|op[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[6]~1_combout\ = !\inst2|LessThan6~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan6~18_combout\,
	combout => \inst2|op[6]~1_combout\);

-- Location: FF_X29_Y25_N25
\inst2|op[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(6));

-- Location: LCCOMB_X32_Y25_N24
\inst2|Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add5~0_combout\ = \inst2|dutcyc\(9) $ (((\inst2|dutcyc\(7) & \inst2|dutcyc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(9),
	datac => \inst2|dutcyc\(7),
	datad => \inst2|dutcyc\(8),
	combout => \inst2|Add5~0_combout\);

-- Location: LCCOMB_X31_Y25_N8
\inst2|LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~1_cout\ = CARRY((\inst2|dutcyc\(0) & !\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(0),
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan5~1_cout\);

-- Location: LCCOMB_X31_Y25_N10
\inst2|LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan5~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan5~1_cout\,
	cout => \inst2|LessThan5~3_cout\);

-- Location: LCCOMB_X31_Y25_N12
\inst2|LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~5_cout\ = CARRY((\inst2|Add0~4_combout\ & (\inst2|dutcyc\(2) & !\inst2|LessThan5~3_cout\)) # (!\inst2|Add0~4_combout\ & ((\inst2|dutcyc\(2)) # (!\inst2|LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|dutcyc\(2),
	datad => VCC,
	cin => \inst2|LessThan5~3_cout\,
	cout => \inst2|LessThan5~5_cout\);

-- Location: LCCOMB_X31_Y25_N14
\inst2|LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~7_cout\ = CARRY((\inst2|dutcyc\(3) & (\inst2|Add0~6_combout\ & !\inst2|LessThan5~5_cout\)) # (!\inst2|dutcyc\(3) & ((\inst2|Add0~6_combout\) # (!\inst2|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(3),
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan5~5_cout\,
	cout => \inst2|LessThan5~7_cout\);

-- Location: LCCOMB_X31_Y25_N16
\inst2|LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~9_cout\ = CARRY((\inst2|Add0~8_combout\ & (\inst2|dutcyc\(4) & !\inst2|LessThan5~7_cout\)) # (!\inst2|Add0~8_combout\ & ((\inst2|dutcyc\(4)) # (!\inst2|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|dutcyc\(4),
	datad => VCC,
	cin => \inst2|LessThan5~7_cout\,
	cout => \inst2|LessThan5~9_cout\);

-- Location: LCCOMB_X31_Y25_N18
\inst2|LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~11_cout\ = CARRY((\inst2|Add0~10_combout\ & ((!\inst2|LessThan5~9_cout\) # (!\inst2|dutcyc\(5)))) # (!\inst2|Add0~10_combout\ & (!\inst2|dutcyc\(5) & !\inst2|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datab => \inst2|dutcyc\(5),
	datad => VCC,
	cin => \inst2|LessThan5~9_cout\,
	cout => \inst2|LessThan5~11_cout\);

-- Location: LCCOMB_X31_Y25_N20
\inst2|LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~13_cout\ = CARRY((\inst2|Add0~12_combout\ & (\inst2|dutcyc\(6) & !\inst2|LessThan5~11_cout\)) # (!\inst2|Add0~12_combout\ & ((\inst2|dutcyc\(6)) # (!\inst2|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|dutcyc\(6),
	datad => VCC,
	cin => \inst2|LessThan5~11_cout\,
	cout => \inst2|LessThan5~13_cout\);

-- Location: LCCOMB_X31_Y25_N22
\inst2|LessThan5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~15_cout\ = CARRY((\inst2|Add0~14_combout\ & ((\inst2|dutcyc\(7)) # (!\inst2|LessThan5~13_cout\))) # (!\inst2|Add0~14_combout\ & (\inst2|dutcyc\(7) & !\inst2|LessThan5~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|LessThan5~13_cout\,
	cout => \inst2|LessThan5~15_cout\);

-- Location: LCCOMB_X31_Y25_N24
\inst2|LessThan5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~17_cout\ = CARRY((\inst2|Add0~16_combout\ & (\inst2|Add7~1_combout\ & !\inst2|LessThan5~15_cout\)) # (!\inst2|Add0~16_combout\ & ((\inst2|Add7~1_combout\) # (!\inst2|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|Add7~1_combout\,
	datad => VCC,
	cin => \inst2|LessThan5~15_cout\,
	cout => \inst2|LessThan5~17_cout\);

-- Location: LCCOMB_X31_Y25_N26
\inst2|LessThan5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan5~18_combout\ = (\inst2|Add5~0_combout\ & (\inst2|LessThan5~17_cout\ & !\inst2|Add0~18_combout\)) # (!\inst2|Add5~0_combout\ & ((\inst2|LessThan5~17_cout\) # (!\inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add5~0_combout\,
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan5~17_cout\,
	combout => \inst2|LessThan5~18_combout\);

-- Location: LCCOMB_X28_Y25_N0
\inst2|op[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[5]~2_combout\ = !\inst2|LessThan5~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan5~18_combout\,
	combout => \inst2|op[5]~2_combout\);

-- Location: FF_X28_Y25_N1
\inst2|op[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(5));

-- Location: LCCOMB_X34_Y25_N4
\inst2|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~1_cout\ = CARRY((!\inst2|Add0~0_combout\ & \inst2|dutcyc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|dutcyc\(0),
	datad => VCC,
	cout => \inst2|LessThan4~1_cout\);

-- Location: LCCOMB_X34_Y25_N6
\inst2|LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan4~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan4~1_cout\,
	cout => \inst2|LessThan4~3_cout\);

-- Location: LCCOMB_X34_Y25_N8
\inst2|LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~5_cout\ = CARRY((\inst2|dutcyc\(2) & ((!\inst2|LessThan4~3_cout\) # (!\inst2|Add0~4_combout\))) # (!\inst2|dutcyc\(2) & (!\inst2|Add0~4_combout\ & !\inst2|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(2),
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan4~3_cout\,
	cout => \inst2|LessThan4~5_cout\);

-- Location: LCCOMB_X34_Y25_N10
\inst2|LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~7_cout\ = CARRY((\inst2|Add0~6_combout\ & ((!\inst2|LessThan4~5_cout\) # (!\inst2|dutcyc\(3)))) # (!\inst2|Add0~6_combout\ & (!\inst2|dutcyc\(3) & !\inst2|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|dutcyc\(3),
	datad => VCC,
	cin => \inst2|LessThan4~5_cout\,
	cout => \inst2|LessThan4~7_cout\);

-- Location: LCCOMB_X34_Y25_N12
\inst2|LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~9_cout\ = CARRY((\inst2|Add0~8_combout\ & (\inst2|dutcyc\(4) & !\inst2|LessThan4~7_cout\)) # (!\inst2|Add0~8_combout\ & ((\inst2|dutcyc\(4)) # (!\inst2|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|dutcyc\(4),
	datad => VCC,
	cin => \inst2|LessThan4~7_cout\,
	cout => \inst2|LessThan4~9_cout\);

-- Location: LCCOMB_X34_Y25_N14
\inst2|LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~11_cout\ = CARRY((\inst2|dutcyc\(5) & (\inst2|Add0~10_combout\ & !\inst2|LessThan4~9_cout\)) # (!\inst2|dutcyc\(5) & ((\inst2|Add0~10_combout\) # (!\inst2|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(5),
	datab => \inst2|Add0~10_combout\,
	datad => VCC,
	cin => \inst2|LessThan4~9_cout\,
	cout => \inst2|LessThan4~11_cout\);

-- Location: LCCOMB_X34_Y25_N16
\inst2|LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~13_cout\ = CARRY((\inst2|dutcyc\(6) & ((!\inst2|LessThan4~11_cout\) # (!\inst2|Add0~12_combout\))) # (!\inst2|dutcyc\(6) & (!\inst2|Add0~12_combout\ & !\inst2|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(6),
	datab => \inst2|Add0~12_combout\,
	datad => VCC,
	cin => \inst2|LessThan4~11_cout\,
	cout => \inst2|LessThan4~13_cout\);

-- Location: LCCOMB_X34_Y25_N18
\inst2|LessThan4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~15_cout\ = CARRY((\inst2|Add0~14_combout\ & ((!\inst2|LessThan4~13_cout\) # (!\inst2|dutcyc\(7)))) # (!\inst2|Add0~14_combout\ & (!\inst2|dutcyc\(7) & !\inst2|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|LessThan4~13_cout\,
	cout => \inst2|LessThan4~15_cout\);

-- Location: LCCOMB_X34_Y25_N20
\inst2|LessThan4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~17_cout\ = CARRY((\inst2|dutcyc\(8) & ((!\inst2|LessThan4~15_cout\) # (!\inst2|Add0~16_combout\))) # (!\inst2|dutcyc\(8) & (!\inst2|Add0~16_combout\ & !\inst2|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(8),
	datab => \inst2|Add0~16_combout\,
	datad => VCC,
	cin => \inst2|LessThan4~15_cout\,
	cout => \inst2|LessThan4~17_cout\);

-- Location: LCCOMB_X34_Y25_N22
\inst2|LessThan4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan4~18_combout\ = (\inst2|dutcyc\(9) & (\inst2|LessThan4~17_cout\ & !\inst2|Add0~18_combout\)) # (!\inst2|dutcyc\(9) & ((\inst2|LessThan4~17_cout\) # (!\inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|dutcyc\(9),
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan4~17_cout\,
	combout => \inst2|LessThan4~18_combout\);

-- Location: LCCOMB_X30_Y25_N26
\inst2|op[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[4]~3_combout\ = !\inst2|LessThan4~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan4~18_combout\,
	combout => \inst2|op[4]~3_combout\);

-- Location: FF_X30_Y25_N27
\inst2|op[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(4));

-- Location: LCCOMB_X35_Y25_N8
\inst2|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~1_cout\ = CARRY((\inst2|dutcyc\(0) & !\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(0),
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan3~1_cout\);

-- Location: LCCOMB_X35_Y25_N10
\inst2|LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~3_cout\ = CARRY((\inst2|dutcyc\(1) & (\inst2|Add0~2_combout\ & !\inst2|LessThan3~1_cout\)) # (!\inst2|dutcyc\(1) & ((\inst2|Add0~2_combout\) # (!\inst2|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(1),
	datab => \inst2|Add0~2_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~1_cout\,
	cout => \inst2|LessThan3~3_cout\);

-- Location: LCCOMB_X35_Y25_N12
\inst2|LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~5_cout\ = CARRY((\inst2|dutcyc\(2) & ((!\inst2|LessThan3~3_cout\) # (!\inst2|Add0~4_combout\))) # (!\inst2|dutcyc\(2) & (!\inst2|Add0~4_combout\ & !\inst2|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(2),
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~3_cout\,
	cout => \inst2|LessThan3~5_cout\);

-- Location: LCCOMB_X35_Y25_N14
\inst2|LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~7_cout\ = CARRY((\inst2|Add0~6_combout\ & ((!\inst2|LessThan3~5_cout\) # (!\inst2|dutcyc\(3)))) # (!\inst2|Add0~6_combout\ & (!\inst2|dutcyc\(3) & !\inst2|LessThan3~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~6_combout\,
	datab => \inst2|dutcyc\(3),
	datad => VCC,
	cin => \inst2|LessThan3~5_cout\,
	cout => \inst2|LessThan3~7_cout\);

-- Location: LCCOMB_X35_Y25_N16
\inst2|LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~9_cout\ = CARRY((\inst2|dutcyc\(4) & ((!\inst2|LessThan3~7_cout\) # (!\inst2|Add0~8_combout\))) # (!\inst2|dutcyc\(4) & (!\inst2|Add0~8_combout\ & !\inst2|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(4),
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~7_cout\,
	cout => \inst2|LessThan3~9_cout\);

-- Location: LCCOMB_X35_Y25_N18
\inst2|LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~11_cout\ = CARRY((\inst2|dutcyc\(5) & (\inst2|Add0~10_combout\ & !\inst2|LessThan3~9_cout\)) # (!\inst2|dutcyc\(5) & ((\inst2|Add0~10_combout\) # (!\inst2|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(5),
	datab => \inst2|Add0~10_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~9_cout\,
	cout => \inst2|LessThan3~11_cout\);

-- Location: LCCOMB_X35_Y25_N20
\inst2|LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~13_cout\ = CARRY((\inst2|Add0~12_combout\ & (\inst2|dutcyc\(6) & !\inst2|LessThan3~11_cout\)) # (!\inst2|Add0~12_combout\ & ((\inst2|dutcyc\(6)) # (!\inst2|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|dutcyc\(6),
	datad => VCC,
	cin => \inst2|LessThan3~11_cout\,
	cout => \inst2|LessThan3~13_cout\);

-- Location: LCCOMB_X35_Y25_N22
\inst2|LessThan3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~15_cout\ = CARRY((\inst2|Add0~14_combout\ & ((\inst2|dutcyc\(7)) # (!\inst2|LessThan3~13_cout\))) # (!\inst2|Add0~14_combout\ & (\inst2|dutcyc\(7) & !\inst2|LessThan3~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|LessThan3~13_cout\,
	cout => \inst2|LessThan3~15_cout\);

-- Location: LCCOMB_X35_Y25_N24
\inst2|LessThan3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~17_cout\ = CARRY((\inst2|Add7~1_combout\ & (!\inst2|Add0~16_combout\ & !\inst2|LessThan3~15_cout\)) # (!\inst2|Add7~1_combout\ & ((!\inst2|LessThan3~15_cout\) # (!\inst2|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add7~1_combout\,
	datab => \inst2|Add0~16_combout\,
	datad => VCC,
	cin => \inst2|LessThan3~15_cout\,
	cout => \inst2|LessThan3~17_cout\);

-- Location: LCCOMB_X35_Y25_N26
\inst2|LessThan3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan3~18_combout\ = (\inst2|Add7~0_combout\ & ((\inst2|LessThan3~17_cout\) # (!\inst2|Add0~18_combout\))) # (!\inst2|Add7~0_combout\ & (\inst2|LessThan3~17_cout\ & !\inst2|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add7~0_combout\,
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan3~17_cout\,
	combout => \inst2|LessThan3~18_combout\);

-- Location: LCCOMB_X35_Y25_N0
\inst2|op[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[3]~4_combout\ = !\inst2|LessThan3~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|LessThan3~18_combout\,
	combout => \inst2|op[3]~4_combout\);

-- Location: FF_X35_Y25_N1
\inst2|op[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(3));

-- Location: LCCOMB_X31_Y24_N6
\inst2|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~1_cout\ = CARRY((\inst2|dutcyc\(0) & !\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(0),
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan2~1_cout\);

-- Location: LCCOMB_X31_Y24_N8
\inst2|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan2~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan2~1_cout\,
	cout => \inst2|LessThan2~3_cout\);

-- Location: LCCOMB_X31_Y24_N10
\inst2|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~5_cout\ = CARRY((\inst2|dutcyc\(2) & ((!\inst2|LessThan2~3_cout\) # (!\inst2|Add0~4_combout\))) # (!\inst2|dutcyc\(2) & (!\inst2|Add0~4_combout\ & !\inst2|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(2),
	datab => \inst2|Add0~4_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~3_cout\,
	cout => \inst2|LessThan2~5_cout\);

-- Location: LCCOMB_X31_Y24_N12
\inst2|LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~7_cout\ = CARRY((\inst2|dutcyc\(3) & (\inst2|Add0~6_combout\ & !\inst2|LessThan2~5_cout\)) # (!\inst2|dutcyc\(3) & ((\inst2|Add0~6_combout\) # (!\inst2|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(3),
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~5_cout\,
	cout => \inst2|LessThan2~7_cout\);

-- Location: LCCOMB_X31_Y24_N14
\inst2|LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~9_cout\ = CARRY((\inst2|dutcyc\(4) & ((!\inst2|LessThan2~7_cout\) # (!\inst2|Add0~8_combout\))) # (!\inst2|dutcyc\(4) & (!\inst2|Add0~8_combout\ & !\inst2|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(4),
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan2~7_cout\,
	cout => \inst2|LessThan2~9_cout\);

-- Location: LCCOMB_X31_Y24_N16
\inst2|LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~11_cout\ = CARRY((\inst2|Add0~10_combout\ & ((!\inst2|LessThan2~9_cout\) # (!\inst2|dutcyc\(5)))) # (!\inst2|Add0~10_combout\ & (!\inst2|dutcyc\(5) & !\inst2|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datab => \inst2|dutcyc\(5),
	datad => VCC,
	cin => \inst2|LessThan2~9_cout\,
	cout => \inst2|LessThan2~11_cout\);

-- Location: LCCOMB_X31_Y24_N18
\inst2|LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~13_cout\ = CARRY((\inst2|Add0~12_combout\ & (\inst2|dutcyc\(6) & !\inst2|LessThan2~11_cout\)) # (!\inst2|Add0~12_combout\ & ((\inst2|dutcyc\(6)) # (!\inst2|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|dutcyc\(6),
	datad => VCC,
	cin => \inst2|LessThan2~11_cout\,
	cout => \inst2|LessThan2~13_cout\);

-- Location: LCCOMB_X31_Y24_N20
\inst2|LessThan2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~15_cout\ = CARRY((\inst2|Add0~14_combout\ & ((!\inst2|LessThan2~13_cout\) # (!\inst2|dutcyc\(7)))) # (!\inst2|Add0~14_combout\ & (!\inst2|dutcyc\(7) & !\inst2|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|LessThan2~13_cout\,
	cout => \inst2|LessThan2~15_cout\);

-- Location: LCCOMB_X31_Y24_N22
\inst2|LessThan2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~17_cout\ = CARRY((\inst2|Add0~16_combout\ & (!\inst2|dutcyc\(8) & !\inst2|LessThan2~15_cout\)) # (!\inst2|Add0~16_combout\ & ((!\inst2|LessThan2~15_cout\) # (!\inst2|dutcyc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|dutcyc\(8),
	datad => VCC,
	cin => \inst2|LessThan2~15_cout\,
	cout => \inst2|LessThan2~17_cout\);

-- Location: LCCOMB_X31_Y24_N24
\inst2|LessThan2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan2~18_combout\ = (\inst2|Add6~0_combout\ & ((\inst2|LessThan2~17_cout\) # (!\inst2|Add0~18_combout\))) # (!\inst2|Add6~0_combout\ & (\inst2|LessThan2~17_cout\ & !\inst2|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add6~0_combout\,
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan2~17_cout\,
	combout => \inst2|LessThan2~18_combout\);

-- Location: LCCOMB_X31_Y26_N0
\inst2|op[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[2]~5_combout\ = !\inst2|LessThan2~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan2~18_combout\,
	combout => \inst2|op[2]~5_combout\);

-- Location: FF_X31_Y26_N1
\inst2|op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(2));

-- Location: LCCOMB_X32_Y24_N8
\inst2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_cout\ = CARRY((!\inst2|Add0~0_combout\ & \inst2|dutcyc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|dutcyc\(0),
	datad => VCC,
	cout => \inst2|LessThan1~1_cout\);

-- Location: LCCOMB_X32_Y24_N10
\inst2|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan1~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan1~1_cout\,
	cout => \inst2|LessThan1~3_cout\);

-- Location: LCCOMB_X32_Y24_N12
\inst2|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~5_cout\ = CARRY((\inst2|Add0~4_combout\ & (\inst2|dutcyc\(2) & !\inst2|LessThan1~3_cout\)) # (!\inst2|Add0~4_combout\ & ((\inst2|dutcyc\(2)) # (!\inst2|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|dutcyc\(2),
	datad => VCC,
	cin => \inst2|LessThan1~3_cout\,
	cout => \inst2|LessThan1~5_cout\);

-- Location: LCCOMB_X32_Y24_N14
\inst2|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~7_cout\ = CARRY((\inst2|dutcyc\(3) & (\inst2|Add0~6_combout\ & !\inst2|LessThan1~5_cout\)) # (!\inst2|dutcyc\(3) & ((\inst2|Add0~6_combout\) # (!\inst2|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(3),
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~5_cout\,
	cout => \inst2|LessThan1~7_cout\);

-- Location: LCCOMB_X32_Y24_N16
\inst2|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~9_cout\ = CARRY((\inst2|Add0~8_combout\ & (\inst2|dutcyc\(4) & !\inst2|LessThan1~7_cout\)) # (!\inst2|Add0~8_combout\ & ((\inst2|dutcyc\(4)) # (!\inst2|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|dutcyc\(4),
	datad => VCC,
	cin => \inst2|LessThan1~7_cout\,
	cout => \inst2|LessThan1~9_cout\);

-- Location: LCCOMB_X32_Y24_N18
\inst2|LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~11_cout\ = CARRY((\inst2|Add0~10_combout\ & ((!\inst2|LessThan1~9_cout\) # (!\inst2|dutcyc\(5)))) # (!\inst2|Add0~10_combout\ & (!\inst2|dutcyc\(5) & !\inst2|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datab => \inst2|dutcyc\(5),
	datad => VCC,
	cin => \inst2|LessThan1~9_cout\,
	cout => \inst2|LessThan1~11_cout\);

-- Location: LCCOMB_X32_Y24_N20
\inst2|LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~13_cout\ = CARRY((\inst2|Add0~12_combout\ & (\inst2|dutcyc\(6) & !\inst2|LessThan1~11_cout\)) # (!\inst2|Add0~12_combout\ & ((\inst2|dutcyc\(6)) # (!\inst2|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|dutcyc\(6),
	datad => VCC,
	cin => \inst2|LessThan1~11_cout\,
	cout => \inst2|LessThan1~13_cout\);

-- Location: LCCOMB_X32_Y24_N22
\inst2|LessThan1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~15_cout\ = CARRY((\inst2|Add0~14_combout\ & ((\inst2|dutcyc\(7)) # (!\inst2|LessThan1~13_cout\))) # (!\inst2|Add0~14_combout\ & (\inst2|dutcyc\(7) & !\inst2|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~14_combout\,
	datab => \inst2|dutcyc\(7),
	datad => VCC,
	cin => \inst2|LessThan1~13_cout\,
	cout => \inst2|LessThan1~15_cout\);

-- Location: LCCOMB_X32_Y24_N24
\inst2|LessThan1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~17_cout\ = CARRY((\inst2|Add7~1_combout\ & ((!\inst2|LessThan1~15_cout\) # (!\inst2|Add0~16_combout\))) # (!\inst2|Add7~1_combout\ & (!\inst2|Add0~16_combout\ & !\inst2|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add7~1_combout\,
	datab => \inst2|Add0~16_combout\,
	datad => VCC,
	cin => \inst2|LessThan1~15_cout\,
	cout => \inst2|LessThan1~17_cout\);

-- Location: LCCOMB_X32_Y24_N26
\inst2|LessThan1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~18_combout\ = (\inst2|Add5~0_combout\ & ((\inst2|LessThan1~17_cout\) # (!\inst2|Add0~18_combout\))) # (!\inst2|Add5~0_combout\ & (\inst2|LessThan1~17_cout\ & !\inst2|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add5~0_combout\,
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan1~17_cout\,
	combout => \inst2|LessThan1~18_combout\);

-- Location: LCCOMB_X35_Y26_N0
\inst2|op[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[1]~6_combout\ = !\inst2|LessThan1~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan1~18_combout\,
	combout => \inst2|op[1]~6_combout\);

-- Location: FF_X35_Y26_N1
\inst2|op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(1));

-- Location: LCCOMB_X32_Y25_N2
\inst2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_cout\ = CARRY((\inst2|dutcyc\(0) & !\inst2|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(0),
	datab => \inst2|Add0~0_combout\,
	datad => VCC,
	cout => \inst2|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y25_N4
\inst2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~3_cout\ = CARRY((\inst2|Add0~2_combout\ & ((!\inst2|LessThan0~1_cout\) # (!\inst2|dutcyc\(1)))) # (!\inst2|Add0~2_combout\ & (!\inst2|dutcyc\(1) & !\inst2|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~2_combout\,
	datab => \inst2|dutcyc\(1),
	datad => VCC,
	cin => \inst2|LessThan0~1_cout\,
	cout => \inst2|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y25_N6
\inst2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~5_cout\ = CARRY((\inst2|Add0~4_combout\ & (\inst2|dutcyc\(2) & !\inst2|LessThan0~3_cout\)) # (!\inst2|Add0~4_combout\ & ((\inst2|dutcyc\(2)) # (!\inst2|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~4_combout\,
	datab => \inst2|dutcyc\(2),
	datad => VCC,
	cin => \inst2|LessThan0~3_cout\,
	cout => \inst2|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y25_N8
\inst2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~7_cout\ = CARRY((\inst2|dutcyc\(3) & (\inst2|Add0~6_combout\ & !\inst2|LessThan0~5_cout\)) # (!\inst2|dutcyc\(3) & ((\inst2|Add0~6_combout\) # (!\inst2|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(3),
	datab => \inst2|Add0~6_combout\,
	datad => VCC,
	cin => \inst2|LessThan0~5_cout\,
	cout => \inst2|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y25_N10
\inst2|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~9_cout\ = CARRY((\inst2|dutcyc\(4) & ((!\inst2|LessThan0~7_cout\) # (!\inst2|Add0~8_combout\))) # (!\inst2|dutcyc\(4) & (!\inst2|Add0~8_combout\ & !\inst2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(4),
	datab => \inst2|Add0~8_combout\,
	datad => VCC,
	cin => \inst2|LessThan0~7_cout\,
	cout => \inst2|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y25_N12
\inst2|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~11_cout\ = CARRY((\inst2|Add0~10_combout\ & ((!\inst2|LessThan0~9_cout\) # (!\inst2|dutcyc\(5)))) # (!\inst2|Add0~10_combout\ & (!\inst2|dutcyc\(5) & !\inst2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~10_combout\,
	datab => \inst2|dutcyc\(5),
	datad => VCC,
	cin => \inst2|LessThan0~9_cout\,
	cout => \inst2|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y25_N14
\inst2|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~13_cout\ = CARRY((\inst2|Add0~12_combout\ & (\inst2|dutcyc\(6) & !\inst2|LessThan0~11_cout\)) # (!\inst2|Add0~12_combout\ & ((\inst2|dutcyc\(6)) # (!\inst2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~12_combout\,
	datab => \inst2|dutcyc\(6),
	datad => VCC,
	cin => \inst2|LessThan0~11_cout\,
	cout => \inst2|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y25_N16
\inst2|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~15_cout\ = CARRY((\inst2|dutcyc\(7) & (\inst2|Add0~14_combout\ & !\inst2|LessThan0~13_cout\)) # (!\inst2|dutcyc\(7) & ((\inst2|Add0~14_combout\) # (!\inst2|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(7),
	datab => \inst2|Add0~14_combout\,
	datad => VCC,
	cin => \inst2|LessThan0~13_cout\,
	cout => \inst2|LessThan0~15_cout\);

-- Location: LCCOMB_X32_Y25_N18
\inst2|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~17_cout\ = CARRY((\inst2|Add0~16_combout\ & (\inst2|dutcyc\(8) & !\inst2|LessThan0~15_cout\)) # (!\inst2|Add0~16_combout\ & ((\inst2|dutcyc\(8)) # (!\inst2|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|dutcyc\(8),
	datad => VCC,
	cin => \inst2|LessThan0~15_cout\,
	cout => \inst2|LessThan0~17_cout\);

-- Location: LCCOMB_X32_Y25_N20
\inst2|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~18_combout\ = (\inst2|dutcyc\(9) & ((\inst2|LessThan0~17_cout\) # (!\inst2|Add0~18_combout\))) # (!\inst2|dutcyc\(9) & (\inst2|LessThan0~17_cout\ & !\inst2|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|dutcyc\(9),
	datad => \inst2|Add0~18_combout\,
	cin => \inst2|LessThan0~17_cout\,
	combout => \inst2|LessThan0~18_combout\);

-- Location: LCCOMB_X35_Y25_N2
\inst2|op[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|op[0]~7_combout\ = !\inst2|LessThan0~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan0~18_combout\,
	combout => \inst2|op[0]~7_combout\);

-- Location: FF_X35_Y25_N3
\inst2|op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|op[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|op\(0));
END structure;


