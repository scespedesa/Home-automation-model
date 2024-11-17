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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/28/2023 12:09:50"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	principal IS
    PORT (
	clk : IN std_logic;
	comprobar_in : IN std_logic;
	cambiar_in : IN std_logic;
	alarma : BUFFER std_logic;
	pir_1 : IN std_logic;
	pir_2 : IN std_logic;
	PWM1 : BUFFER std_logic;
	Rst_n : IN std_logic;
	Rx_in : IN std_logic;
	led_datos : BUFFER std_logic;
	leds_salida : BUFFER std_logic_vector(7 DOWNTO 0);
	led_pir : BUFFER std_logic;
	selector : IN std_logic;
	tx_data : BUFFER std_logic;
	led_activo : BUFFER std_logic
	);
END principal;

-- Design Ports Information
-- alarma	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PWM1	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_datos	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[2]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[3]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[6]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds_salida[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_pir	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_data	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_activo	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pir_1	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cambiar_in	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- comprobar_in	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pir_2	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst_n	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rx_in	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF principal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_comprobar_in : std_logic;
SIGNAL ww_cambiar_in : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_pir_1 : std_logic;
SIGNAL ww_pir_2 : std_logic;
SIGNAL ww_PWM1 : std_logic;
SIGNAL ww_Rst_n : std_logic;
SIGNAL ww_Rx_in : std_logic;
SIGNAL ww_led_datos : std_logic;
SIGNAL ww_leds_salida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_pir : std_logic;
SIGNAL ww_selector : std_logic;
SIGNAL ww_tx_data : std_logic;
SIGNAL ww_led_activo : std_logic;
SIGNAL \uart_rx|datonuevo_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cambiar_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comprobar_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \PWM1~output_o\ : std_logic;
SIGNAL \led_datos~output_o\ : std_logic;
SIGNAL \leds_salida[0]~output_o\ : std_logic;
SIGNAL \leds_salida[1]~output_o\ : std_logic;
SIGNAL \leds_salida[2]~output_o\ : std_logic;
SIGNAL \leds_salida[3]~output_o\ : std_logic;
SIGNAL \leds_salida[4]~output_o\ : std_logic;
SIGNAL \leds_salida[5]~output_o\ : std_logic;
SIGNAL \leds_salida[6]~output_o\ : std_logic;
SIGNAL \leds_salida[7]~output_o\ : std_logic;
SIGNAL \led_pir~output_o\ : std_logic;
SIGNAL \tx_data~output_o\ : std_logic;
SIGNAL \led_activo~output_o\ : std_logic;
SIGNAL \comprobar_in~input_o\ : std_logic;
SIGNAL \comprobar_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \comp2|cuenta[0]~32_combout\ : std_logic;
SIGNAL \cambiar_in~input_o\ : std_logic;
SIGNAL \cambiar_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart_rx|Add4~0_combout\ : std_logic;
SIGNAL \uart_rx|Add4~1\ : std_logic;
SIGNAL \uart_rx|Add4~2_combout\ : std_logic;
SIGNAL \uart_rx|Add4~3\ : std_logic;
SIGNAL \uart_rx|Add4~4_combout\ : std_logic;
SIGNAL \uart_rx|Add4~5\ : std_logic;
SIGNAL \uart_rx|Add4~6_combout\ : std_logic;
SIGNAL \uart_rx|Add4~7\ : std_logic;
SIGNAL \uart_rx|Add4~8_combout\ : std_logic;
SIGNAL \uart_rx|Add4~9\ : std_logic;
SIGNAL \uart_rx|Add4~10_combout\ : std_logic;
SIGNAL \uart_rx|Add4~11\ : std_logic;
SIGNAL \uart_rx|Add4~12_combout\ : std_logic;
SIGNAL \uart_rx|Add4~13\ : std_logic;
SIGNAL \uart_rx|Add4~14_combout\ : std_logic;
SIGNAL \uart_rx|Add4~15\ : std_logic;
SIGNAL \uart_rx|Add4~16_combout\ : std_logic;
SIGNAL \uart_rx|Add4~17\ : std_logic;
SIGNAL \uart_rx|Add4~18_combout\ : std_logic;
SIGNAL \uart_rx|Add4~19\ : std_logic;
SIGNAL \uart_rx|Add4~20_combout\ : std_logic;
SIGNAL \uart_rx|Add4~21\ : std_logic;
SIGNAL \uart_rx|Add4~22_combout\ : std_logic;
SIGNAL \uart_rx|Add4~23\ : std_logic;
SIGNAL \uart_rx|Add4~24_combout\ : std_logic;
SIGNAL \uart_rx|Add4~25\ : std_logic;
SIGNAL \uart_rx|Add4~26_combout\ : std_logic;
SIGNAL \uart_rx|Add4~27\ : std_logic;
SIGNAL \uart_rx|Add4~28_combout\ : std_logic;
SIGNAL \uart_rx|Add4~29\ : std_logic;
SIGNAL \uart_rx|Add4~30_combout\ : std_logic;
SIGNAL \uart_rx|Add4~31\ : std_logic;
SIGNAL \uart_rx|Add4~32_combout\ : std_logic;
SIGNAL \uart_rx|Add4~33\ : std_logic;
SIGNAL \uart_rx|Add4~34_combout\ : std_logic;
SIGNAL \uart_rx|Add4~35\ : std_logic;
SIGNAL \uart_rx|Add4~36_combout\ : std_logic;
SIGNAL \uart_rx|Add4~37\ : std_logic;
SIGNAL \uart_rx|Add4~38_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~5_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[0]~13_combout\ : std_logic;
SIGNAL \Rst_n~input_o\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[0]~14\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[1]~15_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[1]~16\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[2]~17_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[2]~18\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[3]~19_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[3]~20\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[4]~21_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[4]~22\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[5]~23_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[5]~24\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[6]~25_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[6]~26\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[7]~27_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[7]~28\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[8]~29_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[8]~30\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[9]~31_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[9]~32\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[10]~33_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[10]~34\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[11]~35_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[11]~36\ : std_logic;
SIGNAL \uart_rx|cuenta_baudios[12]~37_combout\ : std_logic;
SIGNAL \uart_rx|LessThan0~0_combout\ : std_logic;
SIGNAL \uart_rx|LessThan0~1_combout\ : std_logic;
SIGNAL \uart_rx|LessThan0~2_combout\ : std_logic;
SIGNAL \uart_rx|LessThan0~3_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[0]~9_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[0]~10\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[1]~11_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[1]~12\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[2]~13_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[2]~14\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[3]~15_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[3]~16\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[4]~17_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[4]~18\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[5]~19_combout\ : std_logic;
SIGNAL \uart_rx|LessThan1~0_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[5]~20\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[6]~21_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[6]~22\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[7]~23_combout\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[7]~24\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra[8]~25_combout\ : std_logic;
SIGNAL \uart_rx|LessThan1~1_combout\ : std_logic;
SIGNAL \uart_rx|LessThan1~2_combout\ : std_logic;
SIGNAL \uart_rx|pulso_muestra~feeder_combout\ : std_logic;
SIGNAL \uart_rx|pulso_muestra~q\ : std_logic;
SIGNAL \Rx_in~input_o\ : std_logic;
SIGNAL \uart_rx|contador_ticks[3]~0_combout\ : std_logic;
SIGNAL \uart_rx|contador_ticks[0]~5_combout\ : std_logic;
SIGNAL \uart_rx|contador_ticks[1]~6_combout\ : std_logic;
SIGNAL \uart_rx|Add2~1_combout\ : std_logic;
SIGNAL \uart_rx|contador_ticks[2]~4_combout\ : std_logic;
SIGNAL \uart_rx|LessThan3~0_combout\ : std_logic;
SIGNAL \uart_rx|contador_ticks[3]~1_combout\ : std_logic;
SIGNAL \uart_rx|contador_ticks[3]~2_combout\ : std_logic;
SIGNAL \uart_rx|Add2~0_combout\ : std_logic;
SIGNAL \uart_rx|contador_ticks[3]~3_combout\ : std_logic;
SIGNAL \uart_rx|estado~0_combout\ : std_logic;
SIGNAL \uart_rx|datonuevo_aux~2_combout\ : std_logic;
SIGNAL \uart_rx|estado~1_combout\ : std_logic;
SIGNAL \uart_rx|estado~q\ : std_logic;
SIGNAL \uart_rx|contador_bits~4_combout\ : std_logic;
SIGNAL \uart_rx|contador_bits[3]~0_combout\ : std_logic;
SIGNAL \uart_rx|contador_bits[3]~1_combout\ : std_logic;
SIGNAL \uart_rx|contador_bits~5_combout\ : std_logic;
SIGNAL \uart_rx|contador_bits~3_combout\ : std_logic;
SIGNAL \uart_rx|Add3~0_combout\ : std_logic;
SIGNAL \uart_rx|contador_bits[3]~2_combout\ : std_logic;
SIGNAL \uart_rx|datonuevo_aux~0_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~0_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~2_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~1_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~3_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~4_combout\ : std_logic;
SIGNAL \uart_rx|Add4~39\ : std_logic;
SIGNAL \uart_rx|Add4~40_combout\ : std_logic;
SIGNAL \uart_rx|Add4~41\ : std_logic;
SIGNAL \uart_rx|Add4~42_combout\ : std_logic;
SIGNAL \uart_rx|Add4~43\ : std_logic;
SIGNAL \uart_rx|Add4~44_combout\ : std_logic;
SIGNAL \uart_rx|Add4~45\ : std_logic;
SIGNAL \uart_rx|Add4~46_combout\ : std_logic;
SIGNAL \uart_rx|Add4~47\ : std_logic;
SIGNAL \uart_rx|Add4~48_combout\ : std_logic;
SIGNAL \uart_rx|Add4~49\ : std_logic;
SIGNAL \uart_rx|Add4~50_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~6_combout\ : std_logic;
SIGNAL \uart_rx|Equal0~7_combout\ : std_logic;
SIGNAL \uart_rx|datonuevo_aux~1_combout\ : std_logic;
SIGNAL \uart_rx|datonuevo_aux~q\ : std_logic;
SIGNAL \uart_rx|datonuevo_aux~clkctrl_outclk\ : std_logic;
SIGNAL \uart_rx|registro[8]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[1]~0_combout\ : std_logic;
SIGNAL \uart_rx|registro[7]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[6]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[5]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[4]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|salida[3]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|salida[7]~1_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[19]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[11]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[3]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[3]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[3]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[2]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|salida[1]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[17]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[9]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|registro[1]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|salida[0]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[16]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[8]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[8]~3_combout\ : std_logic;
SIGNAL \comp2|Equal0~5_combout\ : std_logic;
SIGNAL \uart_rx|salida[2]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[18]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[10]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[11]~feeder_combout\ : std_logic;
SIGNAL \comp2|Equal0~6_combout\ : std_logic;
SIGNAL \uart_rx|salida[4]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[20]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[12]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[12]~4_combout\ : std_logic;
SIGNAL \uart_rx|salida[5]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[13]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[13]~5_combout\ : std_logic;
SIGNAL \comp2|Equal0~7_combout\ : std_logic;
SIGNAL \uart_rx|salida[7]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[23]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[15]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|salida[6]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[22]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[14]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[15]~feeder_combout\ : std_logic;
SIGNAL \comp2|Equal0~8_combout\ : std_logic;
SIGNAL \comp2|Equal0~9_combout\ : std_logic;
SIGNAL \comp2|contrasenia[16]~6_combout\ : std_logic;
SIGNAL \comp2|Equal0~10_combout\ : std_logic;
SIGNAL \comp2|contrasenia[20]~7_combout\ : std_logic;
SIGNAL \comp2|contrasenia[21]~8_combout\ : std_logic;
SIGNAL \comp2|Equal0~12_combout\ : std_logic;
SIGNAL \comp2|contrasenia[19]~feeder_combout\ : std_logic;
SIGNAL \comp2|Equal0~11_combout\ : std_logic;
SIGNAL \comp2|contrasenia[23]~feeder_combout\ : std_logic;
SIGNAL \comp2|Equal0~13_combout\ : std_logic;
SIGNAL \comp2|Equal0~14_combout\ : std_logic;
SIGNAL \comp2|a1~0_combout\ : std_logic;
SIGNAL \comp2|c~feeder_combout\ : std_logic;
SIGNAL \comp2|c~q\ : std_logic;
SIGNAL \componente|acumulado_aux[2]~feeder_combout\ : std_logic;
SIGNAL \comp2|Equal0~1_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[1]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[0]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[0]~0_combout\ : std_logic;
SIGNAL \comp2|Equal0~0_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[7]~feeder_combout\ : std_logic;
SIGNAL \componente|acumulado_aux[6]~feeder_combout\ : std_logic;
SIGNAL \comp2|contrasenia[7]~feeder_combout\ : std_logic;
SIGNAL \comp2|Equal0~3_combout\ : std_logic;
SIGNAL \comp2|contrasenia[4]~1_combout\ : std_logic;
SIGNAL \comp2|contrasenia[5]~2_combout\ : std_logic;
SIGNAL \comp2|Equal0~2_combout\ : std_logic;
SIGNAL \comp2|Equal0~4_combout\ : std_logic;
SIGNAL \comp2|Equal0~15_combout\ : std_logic;
SIGNAL \comp2|cuenta[0]~33\ : std_logic;
SIGNAL \comp2|cuenta[1]~34_combout\ : std_logic;
SIGNAL \comp2|cuenta[1]~35\ : std_logic;
SIGNAL \comp2|cuenta[2]~36_combout\ : std_logic;
SIGNAL \comp2|cuenta[2]~37\ : std_logic;
SIGNAL \comp2|cuenta[3]~38_combout\ : std_logic;
SIGNAL \comp2|cuenta[3]~39\ : std_logic;
SIGNAL \comp2|cuenta[4]~40_combout\ : std_logic;
SIGNAL \comp2|cuenta[4]~41\ : std_logic;
SIGNAL \comp2|cuenta[5]~42_combout\ : std_logic;
SIGNAL \comp2|cuenta[5]~43\ : std_logic;
SIGNAL \comp2|cuenta[6]~44_combout\ : std_logic;
SIGNAL \comp2|cuenta[6]~45\ : std_logic;
SIGNAL \comp2|cuenta[7]~46_combout\ : std_logic;
SIGNAL \comp2|cuenta[7]~47\ : std_logic;
SIGNAL \comp2|cuenta[8]~48_combout\ : std_logic;
SIGNAL \comp2|cuenta[8]~49\ : std_logic;
SIGNAL \comp2|cuenta[9]~50_combout\ : std_logic;
SIGNAL \comp2|cuenta[9]~51\ : std_logic;
SIGNAL \comp2|cuenta[10]~52_combout\ : std_logic;
SIGNAL \comp2|cuenta[10]~53\ : std_logic;
SIGNAL \comp2|cuenta[11]~54_combout\ : std_logic;
SIGNAL \comp2|cuenta[11]~55\ : std_logic;
SIGNAL \comp2|cuenta[12]~56_combout\ : std_logic;
SIGNAL \comp2|cuenta[12]~57\ : std_logic;
SIGNAL \comp2|cuenta[13]~58_combout\ : std_logic;
SIGNAL \comp2|cuenta[13]~59\ : std_logic;
SIGNAL \comp2|cuenta[14]~60_combout\ : std_logic;
SIGNAL \comp2|cuenta[14]~61\ : std_logic;
SIGNAL \comp2|cuenta[15]~62_combout\ : std_logic;
SIGNAL \comp2|cuenta[15]~63\ : std_logic;
SIGNAL \comp2|cuenta[16]~64_combout\ : std_logic;
SIGNAL \comp2|cuenta[16]~65\ : std_logic;
SIGNAL \comp2|cuenta[17]~66_combout\ : std_logic;
SIGNAL \comp2|cuenta[17]~67\ : std_logic;
SIGNAL \comp2|cuenta[18]~68_combout\ : std_logic;
SIGNAL \comp2|cuenta[18]~69\ : std_logic;
SIGNAL \comp2|cuenta[19]~70_combout\ : std_logic;
SIGNAL \comp2|cuenta[19]~71\ : std_logic;
SIGNAL \comp2|cuenta[20]~72_combout\ : std_logic;
SIGNAL \comp2|cuenta[20]~73\ : std_logic;
SIGNAL \comp2|cuenta[21]~74_combout\ : std_logic;
SIGNAL \comp2|cuenta[21]~75\ : std_logic;
SIGNAL \comp2|cuenta[22]~76_combout\ : std_logic;
SIGNAL \comp2|cuenta[22]~77\ : std_logic;
SIGNAL \comp2|cuenta[23]~78_combout\ : std_logic;
SIGNAL \comp2|cuenta[23]~79\ : std_logic;
SIGNAL \comp2|cuenta[24]~80_combout\ : std_logic;
SIGNAL \comp2|cuenta[24]~81\ : std_logic;
SIGNAL \comp2|cuenta[25]~82_combout\ : std_logic;
SIGNAL \comp2|cuenta[25]~83\ : std_logic;
SIGNAL \comp2|cuenta[26]~84_combout\ : std_logic;
SIGNAL \comp2|cuenta[26]~85\ : std_logic;
SIGNAL \comp2|cuenta[27]~86_combout\ : std_logic;
SIGNAL \comp2|cuenta[27]~87\ : std_logic;
SIGNAL \comp2|cuenta[28]~88_combout\ : std_logic;
SIGNAL \comp2|cuenta[28]~89\ : std_logic;
SIGNAL \comp2|cuenta[29]~90_combout\ : std_logic;
SIGNAL \comp2|cuenta[29]~91\ : std_logic;
SIGNAL \comp2|cuenta[30]~92_combout\ : std_logic;
SIGNAL \comp2|cuenta[30]~93\ : std_logic;
SIGNAL \comp2|cuenta[31]~94_combout\ : std_logic;
SIGNAL \comp2|LessThan0~5_combout\ : std_logic;
SIGNAL \comp2|LessThan0~6_combout\ : std_logic;
SIGNAL \comp2|LessThan0~7_combout\ : std_logic;
SIGNAL \comp2|LessThan0~8_combout\ : std_logic;
SIGNAL \comp2|LessThan0~3_combout\ : std_logic;
SIGNAL \comp2|LessThan0~2_combout\ : std_logic;
SIGNAL \comp2|LessThan0~1_combout\ : std_logic;
SIGNAL \comp2|LessThan0~0_combout\ : std_logic;
SIGNAL \comp2|LessThan0~4_combout\ : std_logic;
SIGNAL \comp2|LessThan0~9_combout\ : std_logic;
SIGNAL \comp2|a~0_combout\ : std_logic;
SIGNAL \comp2|a~q\ : std_logic;
SIGNAL \comp2|cuenta1[0]~32_combout\ : std_logic;
SIGNAL \comp2|process_1~0_combout\ : std_logic;
SIGNAL \comp2|cuenta1[0]~33\ : std_logic;
SIGNAL \comp2|cuenta1[1]~34_combout\ : std_logic;
SIGNAL \comp2|cuenta1[1]~35\ : std_logic;
SIGNAL \comp2|cuenta1[2]~36_combout\ : std_logic;
SIGNAL \comp2|cuenta1[2]~37\ : std_logic;
SIGNAL \comp2|cuenta1[3]~38_combout\ : std_logic;
SIGNAL \comp2|cuenta1[3]~39\ : std_logic;
SIGNAL \comp2|cuenta1[4]~40_combout\ : std_logic;
SIGNAL \comp2|cuenta1[4]~41\ : std_logic;
SIGNAL \comp2|cuenta1[5]~42_combout\ : std_logic;
SIGNAL \comp2|cuenta1[5]~43\ : std_logic;
SIGNAL \comp2|cuenta1[6]~44_combout\ : std_logic;
SIGNAL \comp2|cuenta1[6]~45\ : std_logic;
SIGNAL \comp2|cuenta1[7]~46_combout\ : std_logic;
SIGNAL \comp2|cuenta1[7]~47\ : std_logic;
SIGNAL \comp2|cuenta1[8]~48_combout\ : std_logic;
SIGNAL \comp2|cuenta1[8]~49\ : std_logic;
SIGNAL \comp2|cuenta1[9]~50_combout\ : std_logic;
SIGNAL \comp2|cuenta1[9]~51\ : std_logic;
SIGNAL \comp2|cuenta1[10]~52_combout\ : std_logic;
SIGNAL \comp2|cuenta1[10]~53\ : std_logic;
SIGNAL \comp2|cuenta1[11]~54_combout\ : std_logic;
SIGNAL \comp2|cuenta1[11]~55\ : std_logic;
SIGNAL \comp2|cuenta1[12]~56_combout\ : std_logic;
SIGNAL \comp2|cuenta1[12]~57\ : std_logic;
SIGNAL \comp2|cuenta1[13]~58_combout\ : std_logic;
SIGNAL \comp2|cuenta1[13]~59\ : std_logic;
SIGNAL \comp2|cuenta1[14]~60_combout\ : std_logic;
SIGNAL \comp2|cuenta1[14]~61\ : std_logic;
SIGNAL \comp2|cuenta1[15]~62_combout\ : std_logic;
SIGNAL \comp2|cuenta1[15]~63\ : std_logic;
SIGNAL \comp2|cuenta1[16]~64_combout\ : std_logic;
SIGNAL \comp2|cuenta1[16]~65\ : std_logic;
SIGNAL \comp2|cuenta1[17]~66_combout\ : std_logic;
SIGNAL \comp2|cuenta1[17]~67\ : std_logic;
SIGNAL \comp2|cuenta1[18]~68_combout\ : std_logic;
SIGNAL \comp2|cuenta1[18]~69\ : std_logic;
SIGNAL \comp2|cuenta1[19]~70_combout\ : std_logic;
SIGNAL \comp2|cuenta1[19]~71\ : std_logic;
SIGNAL \comp2|cuenta1[20]~72_combout\ : std_logic;
SIGNAL \comp2|cuenta1[20]~73\ : std_logic;
SIGNAL \comp2|cuenta1[21]~74_combout\ : std_logic;
SIGNAL \comp2|cuenta1[21]~75\ : std_logic;
SIGNAL \comp2|cuenta1[22]~76_combout\ : std_logic;
SIGNAL \comp2|cuenta1[22]~77\ : std_logic;
SIGNAL \comp2|cuenta1[23]~78_combout\ : std_logic;
SIGNAL \comp2|cuenta1[23]~79\ : std_logic;
SIGNAL \comp2|cuenta1[24]~80_combout\ : std_logic;
SIGNAL \comp2|cuenta1[24]~81\ : std_logic;
SIGNAL \comp2|cuenta1[25]~82_combout\ : std_logic;
SIGNAL \comp2|cuenta1[25]~83\ : std_logic;
SIGNAL \comp2|cuenta1[26]~84_combout\ : std_logic;
SIGNAL \comp2|cuenta1[26]~85\ : std_logic;
SIGNAL \comp2|cuenta1[27]~86_combout\ : std_logic;
SIGNAL \comp2|cuenta1[27]~87\ : std_logic;
SIGNAL \comp2|cuenta1[28]~88_combout\ : std_logic;
SIGNAL \comp2|cuenta1[28]~89\ : std_logic;
SIGNAL \comp2|cuenta1[29]~90_combout\ : std_logic;
SIGNAL \comp2|cuenta1[29]~91\ : std_logic;
SIGNAL \comp2|cuenta1[30]~92_combout\ : std_logic;
SIGNAL \comp2|cuenta1[30]~93\ : std_logic;
SIGNAL \comp2|cuenta1[31]~94_combout\ : std_logic;
SIGNAL \comp2|LessThan1~5_combout\ : std_logic;
SIGNAL \comp2|LessThan1~7_combout\ : std_logic;
SIGNAL \comp2|LessThan1~8_combout\ : std_logic;
SIGNAL \comp2|LessThan1~6_combout\ : std_logic;
SIGNAL \comp2|LessThan1~1_combout\ : std_logic;
SIGNAL \comp2|LessThan1~3_combout\ : std_logic;
SIGNAL \comp2|LessThan1~2_combout\ : std_logic;
SIGNAL \comp2|LessThan1~0_combout\ : std_logic;
SIGNAL \comp2|LessThan1~4_combout\ : std_logic;
SIGNAL \comp2|LessThan1~9_combout\ : std_logic;
SIGNAL \comp2|a1~1_combout\ : std_logic;
SIGNAL \comp2|a1~q\ : std_logic;
SIGNAL \comp2|alarma~0_combout\ : std_logic;
SIGNAL \pir_2~input_o\ : std_logic;
SIGNAL \selector~input_o\ : std_logic;
SIGNAL \comp2|acti~0_combout\ : std_logic;
SIGNAL \comp2|acti~feeder_combout\ : std_logic;
SIGNAL \comp2|acti~q\ : std_logic;
SIGNAL \pir_1~input_o\ : std_logic;
SIGNAL \comp3|PWM1~10_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[0]~48_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[1]~18_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[1]~19\ : std_logic;
SIGNAL \comp3|PWM_Count[2]~20_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[2]~21\ : std_logic;
SIGNAL \comp3|PWM_Count[3]~22_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[3]~23\ : std_logic;
SIGNAL \comp3|PWM_Count[4]~24_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[4]~25\ : std_logic;
SIGNAL \comp3|PWM_Count[5]~26_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[5]~27\ : std_logic;
SIGNAL \comp3|PWM_Count[6]~28_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[6]~29\ : std_logic;
SIGNAL \comp3|PWM_Count[7]~30_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[7]~31\ : std_logic;
SIGNAL \comp3|PWM_Count[8]~32_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[8]~33\ : std_logic;
SIGNAL \comp3|PWM_Count[9]~34_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[9]~35\ : std_logic;
SIGNAL \comp3|PWM_Count[10]~36_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[10]~37\ : std_logic;
SIGNAL \comp3|PWM_Count[11]~38_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[11]~39\ : std_logic;
SIGNAL \comp3|PWM_Count[12]~40_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[12]~41\ : std_logic;
SIGNAL \comp3|PWM_Count[13]~42_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[13]~43\ : std_logic;
SIGNAL \comp3|PWM_Count[14]~44_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[14]~45\ : std_logic;
SIGNAL \comp3|PWM_Count[15]~46_combout\ : std_logic;
SIGNAL \comp3|PWM1~0_combout\ : std_logic;
SIGNAL \comp3|LessThan1~4_combout\ : std_logic;
SIGNAL \comp3|LessThan1~1_combout\ : std_logic;
SIGNAL \comp3|LessThan1~2_combout\ : std_logic;
SIGNAL \comp3|LessThan1~3_combout\ : std_logic;
SIGNAL \comp3|LessThan1~0_combout\ : std_logic;
SIGNAL \comp3|PWM1~1_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[15]~47\ : std_logic;
SIGNAL \comp3|PWM_Count[16]~49_combout\ : std_logic;
SIGNAL \comp3|PWM1~8_combout\ : std_logic;
SIGNAL \comp3|PWM1~4_combout\ : std_logic;
SIGNAL \comp3|LessThan0~1_combout\ : std_logic;
SIGNAL \comp3|PWM1~5_combout\ : std_logic;
SIGNAL \comp3|PWM1~6_combout\ : std_logic;
SIGNAL \comp3|LessThan0~0_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[16]~50\ : std_logic;
SIGNAL \comp3|PWM_Count[17]~51_combout\ : std_logic;
SIGNAL \comp3|PWM_Count[17]~52\ : std_logic;
SIGNAL \comp3|PWM_Count[18]~53_combout\ : std_logic;
SIGNAL \comp3|PWM1~2_combout\ : std_logic;
SIGNAL \comp3|PWM1~3_combout\ : std_logic;
SIGNAL \comp3|PWM1~7_combout\ : std_logic;
SIGNAL \comp3|LessThan2~0_combout\ : std_logic;
SIGNAL \comp3|LessThan2~1_combout\ : std_logic;
SIGNAL \comp3|LessThan2~2_combout\ : std_logic;
SIGNAL \comp3|LessThan2~3_combout\ : std_logic;
SIGNAL \comp3|LessThan2~4_combout\ : std_logic;
SIGNAL \comp3|LessThan2~5_combout\ : std_logic;
SIGNAL \comp3|PWM1~9_combout\ : std_logic;
SIGNAL \comp3|PWM1~combout\ : std_logic;
SIGNAL \uart_rx|salida[7]~0_combout\ : std_logic;
SIGNAL \uart_rx|palabra[1]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|palabra[2]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|palabra[3]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|palabra[4]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|palabra[5]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|palabra[6]~feeder_combout\ : std_logic;
SIGNAL \uart_rx|palabra[7]~feeder_combout\ : std_logic;
SIGNAL \transmite|contador_bit[0]~32_combout\ : std_logic;
SIGNAL \transmite|Selector1~0_combout\ : std_logic;
SIGNAL \transmite|contador_bit[3]~41\ : std_logic;
SIGNAL \transmite|contador_bit[4]~42_combout\ : std_logic;
SIGNAL \transmite|contador_bit[23]~81\ : std_logic;
SIGNAL \transmite|contador_bit[24]~82_combout\ : std_logic;
SIGNAL \transmite|contador_bit[24]~83\ : std_logic;
SIGNAL \transmite|contador_bit[25]~84_combout\ : std_logic;
SIGNAL \transmite|contador_bit[25]~85\ : std_logic;
SIGNAL \transmite|contador_bit[26]~86_combout\ : std_logic;
SIGNAL \transmite|contador_bit[26]~87\ : std_logic;
SIGNAL \transmite|contador_bit[27]~88_combout\ : std_logic;
SIGNAL \transmite|contador_bit[27]~89\ : std_logic;
SIGNAL \transmite|contador_bit[28]~90_combout\ : std_logic;
SIGNAL \transmite|contador_bit[28]~91\ : std_logic;
SIGNAL \transmite|contador_bit[29]~92_combout\ : std_logic;
SIGNAL \transmite|contador_bit[29]~93\ : std_logic;
SIGNAL \transmite|contador_bit[30]~94_combout\ : std_logic;
SIGNAL \transmite|contador_bit[30]~95\ : std_logic;
SIGNAL \transmite|contador_bit[31]~96_combout\ : std_logic;
SIGNAL \transmite|contador_bit[23]~34_combout\ : std_logic;
SIGNAL \transmite|contador_bit[23]~35_combout\ : std_logic;
SIGNAL \transmite|contador_bit[4]~43\ : std_logic;
SIGNAL \transmite|contador_bit[5]~44_combout\ : std_logic;
SIGNAL \transmite|contador_bit[5]~45\ : std_logic;
SIGNAL \transmite|contador_bit[6]~46_combout\ : std_logic;
SIGNAL \transmite|contador_bit[6]~47\ : std_logic;
SIGNAL \transmite|contador_bit[7]~48_combout\ : std_logic;
SIGNAL \transmite|contador_bit[7]~49\ : std_logic;
SIGNAL \transmite|contador_bit[8]~50_combout\ : std_logic;
SIGNAL \transmite|contador_bit[8]~51\ : std_logic;
SIGNAL \transmite|contador_bit[9]~52_combout\ : std_logic;
SIGNAL \transmite|contador_bit[9]~53\ : std_logic;
SIGNAL \transmite|contador_bit[10]~54_combout\ : std_logic;
SIGNAL \transmite|contador_bit[10]~55\ : std_logic;
SIGNAL \transmite|contador_bit[11]~56_combout\ : std_logic;
SIGNAL \transmite|contador_bit[11]~57\ : std_logic;
SIGNAL \transmite|contador_bit[12]~58_combout\ : std_logic;
SIGNAL \transmite|contador_bit[12]~59\ : std_logic;
SIGNAL \transmite|contador_bit[13]~60_combout\ : std_logic;
SIGNAL \transmite|contador_bit[13]~61\ : std_logic;
SIGNAL \transmite|contador_bit[14]~62_combout\ : std_logic;
SIGNAL \transmite|contador_bit[14]~63\ : std_logic;
SIGNAL \transmite|contador_bit[15]~64_combout\ : std_logic;
SIGNAL \transmite|contador_bit[15]~65\ : std_logic;
SIGNAL \transmite|contador_bit[16]~66_combout\ : std_logic;
SIGNAL \transmite|contador_bit[16]~67\ : std_logic;
SIGNAL \transmite|contador_bit[17]~68_combout\ : std_logic;
SIGNAL \transmite|contador_bit[17]~69\ : std_logic;
SIGNAL \transmite|contador_bit[18]~70_combout\ : std_logic;
SIGNAL \transmite|contador_bit[18]~71\ : std_logic;
SIGNAL \transmite|contador_bit[19]~72_combout\ : std_logic;
SIGNAL \transmite|contador_bit[19]~73\ : std_logic;
SIGNAL \transmite|contador_bit[20]~74_combout\ : std_logic;
SIGNAL \transmite|contador_bit[20]~75\ : std_logic;
SIGNAL \transmite|contador_bit[21]~76_combout\ : std_logic;
SIGNAL \transmite|contador_bit[21]~77\ : std_logic;
SIGNAL \transmite|contador_bit[22]~78_combout\ : std_logic;
SIGNAL \transmite|contador_bit[22]~79\ : std_logic;
SIGNAL \transmite|contador_bit[23]~80_combout\ : std_logic;
SIGNAL \transmite|LessThan1~6_combout\ : std_logic;
SIGNAL \transmite|LessThan1~5_combout\ : std_logic;
SIGNAL \transmite|LessThan1~7_combout\ : std_logic;
SIGNAL \transmite|LessThan1~8_combout\ : std_logic;
SIGNAL \transmite|LessThan1~3_combout\ : std_logic;
SIGNAL \transmite|LessThan1~2_combout\ : std_logic;
SIGNAL \transmite|LessThan1~1_combout\ : std_logic;
SIGNAL \transmite|LessThan1~0_combout\ : std_logic;
SIGNAL \transmite|LessThan1~4_combout\ : std_logic;
SIGNAL \transmite|LessThan1~9_combout\ : std_logic;
SIGNAL \transmite|Selector1~1_combout\ : std_logic;
SIGNAL \transmite|estado.inicial~q\ : std_logic;
SIGNAL \transmite|cuenta_baudios[0]~14_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[8]~22_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[0]~15\ : std_logic;
SIGNAL \transmite|cuenta_baudios[1]~16_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[1]~17\ : std_logic;
SIGNAL \transmite|cuenta_baudios[2]~18_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[2]~19\ : std_logic;
SIGNAL \transmite|cuenta_baudios[3]~20_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[3]~21\ : std_logic;
SIGNAL \transmite|cuenta_baudios[4]~23_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[4]~24\ : std_logic;
SIGNAL \transmite|cuenta_baudios[5]~25_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[5]~26\ : std_logic;
SIGNAL \transmite|cuenta_baudios[6]~27_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[6]~28\ : std_logic;
SIGNAL \transmite|cuenta_baudios[7]~29_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[7]~30\ : std_logic;
SIGNAL \transmite|cuenta_baudios[8]~31_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[8]~32\ : std_logic;
SIGNAL \transmite|cuenta_baudios[9]~33_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[9]~34\ : std_logic;
SIGNAL \transmite|cuenta_baudios[10]~35_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[10]~36\ : std_logic;
SIGNAL \transmite|cuenta_baudios[11]~37_combout\ : std_logic;
SIGNAL \transmite|cuenta_baudios[11]~38\ : std_logic;
SIGNAL \transmite|cuenta_baudios[12]~39_combout\ : std_logic;
SIGNAL \transmite|LessThan0~0_combout\ : std_logic;
SIGNAL \transmite|LessThan0~1_combout\ : std_logic;
SIGNAL \transmite|LessThan0~2_combout\ : std_logic;
SIGNAL \transmite|clk_modulo~0_combout\ : std_logic;
SIGNAL \transmite|clk_modulo~q\ : std_logic;
SIGNAL \transmite|Selector2~0_combout\ : std_logic;
SIGNAL \transmite|Selector2~1_combout\ : std_logic;
SIGNAL \transmite|Selector2~2_combout\ : std_logic;
SIGNAL \transmite|estado.transmision~q\ : std_logic;
SIGNAL \transmite|Selector3~0_combout\ : std_logic;
SIGNAL \transmite|estado.verificar~q\ : std_logic;
SIGNAL \transmite|contador_bit[0]~33\ : std_logic;
SIGNAL \transmite|contador_bit[1]~36_combout\ : std_logic;
SIGNAL \transmite|contador_bit[1]~37\ : std_logic;
SIGNAL \transmite|contador_bit[2]~38_combout\ : std_logic;
SIGNAL \transmite|contador_bit[2]~39\ : std_logic;
SIGNAL \transmite|contador_bit[3]~40_combout\ : std_logic;
SIGNAL \transmite|Selector0~0_combout\ : std_logic;
SIGNAL \transmite|Selector0~1_combout\ : std_logic;
SIGNAL \transmite|tx_temp~q\ : std_logic;
SIGNAL \uart_rx|cuenta_muestra\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \comp2|cuenta1\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_rx|cuenta_baudios\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \comp2|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \comp3|PWM_Count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \transmite|contador_bit\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \transmite|cuenta_baudios\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \uart_rx|palabra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \componente|acumulado_aux\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \comp2|contrasenia\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \uart_rx|contador_bits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_rx|contador_ticks\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart_rx|contador1\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \uart_rx|registro\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \uart_rx|salida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \comp2|ALT_INV_c~q\ : std_logic;
SIGNAL \comp2|ALT_INV_acti~q\ : std_logic;
SIGNAL \uart_rx|ALT_INV_palabra\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart_rx|ALT_INV_datonuevo_aux~q\ : std_logic;
SIGNAL \comp2|ALT_INV_alarma~0_combout\ : std_logic;
SIGNAL \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_pir_1~input_o\ : std_logic;
SIGNAL \uart_rx|ALT_INV_LessThan0~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_comprobar_in <= comprobar_in;
ww_cambiar_in <= cambiar_in;
alarma <= ww_alarma;
ww_pir_1 <= pir_1;
ww_pir_2 <= pir_2;
PWM1 <= ww_PWM1;
ww_Rst_n <= Rst_n;
ww_Rx_in <= Rx_in;
led_datos <= ww_led_datos;
leds_salida <= ww_leds_salida;
led_pir <= ww_led_pir;
ww_selector <= selector;
tx_data <= ww_tx_data;
led_activo <= ww_led_activo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uart_rx|datonuevo_aux~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart_rx|datonuevo_aux~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\cambiar_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cambiar_in~input_o\);

\comprobar_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comprobar_in~input_o\);
\comp2|ALT_INV_c~q\ <= NOT \comp2|c~q\;
\comp2|ALT_INV_acti~q\ <= NOT \comp2|acti~q\;
\uart_rx|ALT_INV_palabra\(7) <= NOT \uart_rx|palabra\(7);
\uart_rx|ALT_INV_palabra\(6) <= NOT \uart_rx|palabra\(6);
\uart_rx|ALT_INV_palabra\(5) <= NOT \uart_rx|palabra\(5);
\uart_rx|ALT_INV_palabra\(4) <= NOT \uart_rx|palabra\(4);
\uart_rx|ALT_INV_palabra\(3) <= NOT \uart_rx|palabra\(3);
\uart_rx|ALT_INV_palabra\(2) <= NOT \uart_rx|palabra\(2);
\uart_rx|ALT_INV_palabra\(1) <= NOT \uart_rx|palabra\(1);
\uart_rx|ALT_INV_palabra\(0) <= NOT \uart_rx|palabra\(0);
\uart_rx|ALT_INV_datonuevo_aux~q\ <= NOT \uart_rx|datonuevo_aux~q\;
\comp2|ALT_INV_alarma~0_combout\ <= NOT \comp2|alarma~0_combout\;
\uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\ <= NOT \uart_rx|datonuevo_aux~clkctrl_outclk\;
\ALT_INV_pir_1~input_o\ <= NOT \pir_1~input_o\;
\uart_rx|ALT_INV_LessThan0~3_combout\ <= NOT \uart_rx|LessThan0~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y24_N9
\alarma~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp2|ALT_INV_alarma~0_combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\PWM1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp3|PWM1~combout\,
	devoe => ww_devoe,
	o => \PWM1~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\led_datos~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_datonuevo_aux~q\,
	devoe => ww_devoe,
	o => \led_datos~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\leds_salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(0),
	devoe => ww_devoe,
	o => \leds_salida[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\leds_salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(1),
	devoe => ww_devoe,
	o => \leds_salida[1]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\leds_salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(2),
	devoe => ww_devoe,
	o => \leds_salida[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\leds_salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(3),
	devoe => ww_devoe,
	o => \leds_salida[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\leds_salida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(4),
	devoe => ww_devoe,
	o => \leds_salida[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\leds_salida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(5),
	devoe => ww_devoe,
	o => \leds_salida[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\leds_salida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(6),
	devoe => ww_devoe,
	o => \leds_salida[6]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\leds_salida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart_rx|ALT_INV_palabra\(7),
	devoe => ww_devoe,
	o => \leds_salida[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\led_pir~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pir_1~input_o\,
	devoe => ww_devoe,
	o => \led_pir~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\tx_data~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \transmite|tx_temp~q\,
	devoe => ww_devoe,
	o => \tx_data~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\led_activo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comp2|ALT_INV_acti~q\,
	devoe => ww_devoe,
	o => \led_activo~output_o\);

-- Location: IOIBUF_X34_Y12_N8
\comprobar_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_comprobar_in,
	o => \comprobar_in~input_o\);

-- Location: CLKCTRL_G7
\comprobar_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comprobar_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comprobar_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y19_N0
\comp2|cuenta[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[0]~32_combout\ = \comp2|cuenta\(0) $ (VCC)
-- \comp2|cuenta[0]~33\ = CARRY(\comp2|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(0),
	datad => VCC,
	combout => \comp2|cuenta[0]~32_combout\,
	cout => \comp2|cuenta[0]~33\);

-- Location: IOIBUF_X34_Y12_N1
\cambiar_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cambiar_in,
	o => \cambiar_in~input_o\);

-- Location: CLKCTRL_G9
\cambiar_in~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cambiar_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cambiar_in~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X32_Y9_N11
\uart_rx|contador1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(18));

-- Location: LCCOMB_X32_Y10_N6
\uart_rx|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~0_combout\ = \uart_rx|contador1\(0) $ (VCC)
-- \uart_rx|Add4~1\ = CARRY(\uart_rx|contador1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(0),
	datad => VCC,
	combout => \uart_rx|Add4~0_combout\,
	cout => \uart_rx|Add4~1\);

-- Location: FF_X32_Y10_N7
\uart_rx|contador1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(0));

-- Location: LCCOMB_X32_Y10_N8
\uart_rx|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~2_combout\ = (\uart_rx|contador1\(1) & (!\uart_rx|Add4~1\)) # (!\uart_rx|contador1\(1) & ((\uart_rx|Add4~1\) # (GND)))
-- \uart_rx|Add4~3\ = CARRY((!\uart_rx|Add4~1\) # (!\uart_rx|contador1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(1),
	datad => VCC,
	cin => \uart_rx|Add4~1\,
	combout => \uart_rx|Add4~2_combout\,
	cout => \uart_rx|Add4~3\);

-- Location: FF_X32_Y10_N9
\uart_rx|contador1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(1));

-- Location: LCCOMB_X32_Y10_N10
\uart_rx|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~4_combout\ = (\uart_rx|contador1\(2) & (\uart_rx|Add4~3\ $ (GND))) # (!\uart_rx|contador1\(2) & (!\uart_rx|Add4~3\ & VCC))
-- \uart_rx|Add4~5\ = CARRY((\uart_rx|contador1\(2) & !\uart_rx|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(2),
	datad => VCC,
	cin => \uart_rx|Add4~3\,
	combout => \uart_rx|Add4~4_combout\,
	cout => \uart_rx|Add4~5\);

-- Location: FF_X32_Y10_N11
\uart_rx|contador1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(2));

-- Location: LCCOMB_X32_Y10_N12
\uart_rx|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~6_combout\ = (\uart_rx|contador1\(3) & (!\uart_rx|Add4~5\)) # (!\uart_rx|contador1\(3) & ((\uart_rx|Add4~5\) # (GND)))
-- \uart_rx|Add4~7\ = CARRY((!\uart_rx|Add4~5\) # (!\uart_rx|contador1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(3),
	datad => VCC,
	cin => \uart_rx|Add4~5\,
	combout => \uart_rx|Add4~6_combout\,
	cout => \uart_rx|Add4~7\);

-- Location: FF_X32_Y10_N13
\uart_rx|contador1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(3));

-- Location: LCCOMB_X32_Y10_N14
\uart_rx|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~8_combout\ = (\uart_rx|contador1\(4) & (\uart_rx|Add4~7\ $ (GND))) # (!\uart_rx|contador1\(4) & (!\uart_rx|Add4~7\ & VCC))
-- \uart_rx|Add4~9\ = CARRY((\uart_rx|contador1\(4) & !\uart_rx|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(4),
	datad => VCC,
	cin => \uart_rx|Add4~7\,
	combout => \uart_rx|Add4~8_combout\,
	cout => \uart_rx|Add4~9\);

-- Location: FF_X32_Y10_N15
\uart_rx|contador1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(4));

-- Location: LCCOMB_X32_Y10_N16
\uart_rx|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~10_combout\ = (\uart_rx|contador1\(5) & (!\uart_rx|Add4~9\)) # (!\uart_rx|contador1\(5) & ((\uart_rx|Add4~9\) # (GND)))
-- \uart_rx|Add4~11\ = CARRY((!\uart_rx|Add4~9\) # (!\uart_rx|contador1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(5),
	datad => VCC,
	cin => \uart_rx|Add4~9\,
	combout => \uart_rx|Add4~10_combout\,
	cout => \uart_rx|Add4~11\);

-- Location: FF_X32_Y10_N17
\uart_rx|contador1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(5));

-- Location: LCCOMB_X32_Y10_N18
\uart_rx|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~12_combout\ = (\uart_rx|contador1\(6) & (\uart_rx|Add4~11\ $ (GND))) # (!\uart_rx|contador1\(6) & (!\uart_rx|Add4~11\ & VCC))
-- \uart_rx|Add4~13\ = CARRY((\uart_rx|contador1\(6) & !\uart_rx|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(6),
	datad => VCC,
	cin => \uart_rx|Add4~11\,
	combout => \uart_rx|Add4~12_combout\,
	cout => \uart_rx|Add4~13\);

-- Location: FF_X32_Y10_N19
\uart_rx|contador1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(6));

-- Location: LCCOMB_X32_Y10_N20
\uart_rx|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~14_combout\ = (\uart_rx|contador1\(7) & (!\uart_rx|Add4~13\)) # (!\uart_rx|contador1\(7) & ((\uart_rx|Add4~13\) # (GND)))
-- \uart_rx|Add4~15\ = CARRY((!\uart_rx|Add4~13\) # (!\uart_rx|contador1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(7),
	datad => VCC,
	cin => \uart_rx|Add4~13\,
	combout => \uart_rx|Add4~14_combout\,
	cout => \uart_rx|Add4~15\);

-- Location: FF_X32_Y10_N21
\uart_rx|contador1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(7));

-- Location: LCCOMB_X32_Y10_N22
\uart_rx|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~16_combout\ = (\uart_rx|contador1\(8) & (\uart_rx|Add4~15\ $ (GND))) # (!\uart_rx|contador1\(8) & (!\uart_rx|Add4~15\ & VCC))
-- \uart_rx|Add4~17\ = CARRY((\uart_rx|contador1\(8) & !\uart_rx|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(8),
	datad => VCC,
	cin => \uart_rx|Add4~15\,
	combout => \uart_rx|Add4~16_combout\,
	cout => \uart_rx|Add4~17\);

-- Location: FF_X32_Y10_N23
\uart_rx|contador1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(8));

-- Location: LCCOMB_X32_Y10_N24
\uart_rx|Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~18_combout\ = (\uart_rx|contador1\(9) & (!\uart_rx|Add4~17\)) # (!\uart_rx|contador1\(9) & ((\uart_rx|Add4~17\) # (GND)))
-- \uart_rx|Add4~19\ = CARRY((!\uart_rx|Add4~17\) # (!\uart_rx|contador1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(9),
	datad => VCC,
	cin => \uart_rx|Add4~17\,
	combout => \uart_rx|Add4~18_combout\,
	cout => \uart_rx|Add4~19\);

-- Location: FF_X32_Y10_N25
\uart_rx|contador1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(9));

-- Location: LCCOMB_X32_Y10_N26
\uart_rx|Add4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~20_combout\ = (\uart_rx|contador1\(10) & (\uart_rx|Add4~19\ $ (GND))) # (!\uart_rx|contador1\(10) & (!\uart_rx|Add4~19\ & VCC))
-- \uart_rx|Add4~21\ = CARRY((\uart_rx|contador1\(10) & !\uart_rx|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(10),
	datad => VCC,
	cin => \uart_rx|Add4~19\,
	combout => \uart_rx|Add4~20_combout\,
	cout => \uart_rx|Add4~21\);

-- Location: FF_X32_Y10_N27
\uart_rx|contador1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(10));

-- Location: LCCOMB_X32_Y10_N28
\uart_rx|Add4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~22_combout\ = (\uart_rx|contador1\(11) & (!\uart_rx|Add4~21\)) # (!\uart_rx|contador1\(11) & ((\uart_rx|Add4~21\) # (GND)))
-- \uart_rx|Add4~23\ = CARRY((!\uart_rx|Add4~21\) # (!\uart_rx|contador1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(11),
	datad => VCC,
	cin => \uart_rx|Add4~21\,
	combout => \uart_rx|Add4~22_combout\,
	cout => \uart_rx|Add4~23\);

-- Location: FF_X32_Y10_N29
\uart_rx|contador1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(11));

-- Location: LCCOMB_X32_Y10_N30
\uart_rx|Add4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~24_combout\ = (\uart_rx|contador1\(12) & (\uart_rx|Add4~23\ $ (GND))) # (!\uart_rx|contador1\(12) & (!\uart_rx|Add4~23\ & VCC))
-- \uart_rx|Add4~25\ = CARRY((\uart_rx|contador1\(12) & !\uart_rx|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(12),
	datad => VCC,
	cin => \uart_rx|Add4~23\,
	combout => \uart_rx|Add4~24_combout\,
	cout => \uart_rx|Add4~25\);

-- Location: FF_X32_Y10_N31
\uart_rx|contador1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(12));

-- Location: LCCOMB_X32_Y9_N0
\uart_rx|Add4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~26_combout\ = (\uart_rx|contador1\(13) & (!\uart_rx|Add4~25\)) # (!\uart_rx|contador1\(13) & ((\uart_rx|Add4~25\) # (GND)))
-- \uart_rx|Add4~27\ = CARRY((!\uart_rx|Add4~25\) # (!\uart_rx|contador1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(13),
	datad => VCC,
	cin => \uart_rx|Add4~25\,
	combout => \uart_rx|Add4~26_combout\,
	cout => \uart_rx|Add4~27\);

-- Location: FF_X32_Y9_N1
\uart_rx|contador1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(13));

-- Location: LCCOMB_X32_Y9_N2
\uart_rx|Add4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~28_combout\ = (\uart_rx|contador1\(14) & (\uart_rx|Add4~27\ $ (GND))) # (!\uart_rx|contador1\(14) & (!\uart_rx|Add4~27\ & VCC))
-- \uart_rx|Add4~29\ = CARRY((\uart_rx|contador1\(14) & !\uart_rx|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(14),
	datad => VCC,
	cin => \uart_rx|Add4~27\,
	combout => \uart_rx|Add4~28_combout\,
	cout => \uart_rx|Add4~29\);

-- Location: FF_X32_Y9_N3
\uart_rx|contador1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(14));

-- Location: LCCOMB_X32_Y9_N4
\uart_rx|Add4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~30_combout\ = (\uart_rx|contador1\(15) & (!\uart_rx|Add4~29\)) # (!\uart_rx|contador1\(15) & ((\uart_rx|Add4~29\) # (GND)))
-- \uart_rx|Add4~31\ = CARRY((!\uart_rx|Add4~29\) # (!\uart_rx|contador1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(15),
	datad => VCC,
	cin => \uart_rx|Add4~29\,
	combout => \uart_rx|Add4~30_combout\,
	cout => \uart_rx|Add4~31\);

-- Location: FF_X32_Y9_N5
\uart_rx|contador1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(15));

-- Location: LCCOMB_X32_Y9_N6
\uart_rx|Add4~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~32_combout\ = (\uart_rx|contador1\(16) & (\uart_rx|Add4~31\ $ (GND))) # (!\uart_rx|contador1\(16) & (!\uart_rx|Add4~31\ & VCC))
-- \uart_rx|Add4~33\ = CARRY((\uart_rx|contador1\(16) & !\uart_rx|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(16),
	datad => VCC,
	cin => \uart_rx|Add4~31\,
	combout => \uart_rx|Add4~32_combout\,
	cout => \uart_rx|Add4~33\);

-- Location: FF_X32_Y9_N7
\uart_rx|contador1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(16));

-- Location: LCCOMB_X32_Y9_N8
\uart_rx|Add4~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~34_combout\ = (\uart_rx|contador1\(17) & (!\uart_rx|Add4~33\)) # (!\uart_rx|contador1\(17) & ((\uart_rx|Add4~33\) # (GND)))
-- \uart_rx|Add4~35\ = CARRY((!\uart_rx|Add4~33\) # (!\uart_rx|contador1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(17),
	datad => VCC,
	cin => \uart_rx|Add4~33\,
	combout => \uart_rx|Add4~34_combout\,
	cout => \uart_rx|Add4~35\);

-- Location: FF_X32_Y9_N9
\uart_rx|contador1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(17));

-- Location: LCCOMB_X32_Y9_N10
\uart_rx|Add4~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~36_combout\ = (\uart_rx|contador1\(18) & (\uart_rx|Add4~35\ $ (GND))) # (!\uart_rx|contador1\(18) & (!\uart_rx|Add4~35\ & VCC))
-- \uart_rx|Add4~37\ = CARRY((\uart_rx|contador1\(18) & !\uart_rx|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(18),
	datad => VCC,
	cin => \uart_rx|Add4~35\,
	combout => \uart_rx|Add4~36_combout\,
	cout => \uart_rx|Add4~37\);

-- Location: FF_X32_Y9_N13
\uart_rx|contador1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(19));

-- Location: LCCOMB_X32_Y9_N12
\uart_rx|Add4~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~38_combout\ = (\uart_rx|contador1\(19) & (!\uart_rx|Add4~37\)) # (!\uart_rx|contador1\(19) & ((\uart_rx|Add4~37\) # (GND)))
-- \uart_rx|Add4~39\ = CARRY((!\uart_rx|Add4~37\) # (!\uart_rx|contador1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(19),
	datad => VCC,
	cin => \uart_rx|Add4~37\,
	combout => \uart_rx|Add4~38_combout\,
	cout => \uart_rx|Add4~39\);

-- Location: LCCOMB_X32_Y9_N26
\uart_rx|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~5_combout\ = (!\uart_rx|Add4~36_combout\ & (!\uart_rx|Add4~32_combout\ & (\uart_rx|Add4~34_combout\ & \uart_rx|Add4~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Add4~36_combout\,
	datab => \uart_rx|Add4~32_combout\,
	datac => \uart_rx|Add4~34_combout\,
	datad => \uart_rx|Add4~38_combout\,
	combout => \uart_rx|Equal0~5_combout\);

-- Location: LCCOMB_X30_Y13_N0
\uart_rx|cuenta_baudios[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[0]~13_combout\ = \uart_rx|cuenta_baudios\(0) $ (VCC)
-- \uart_rx|cuenta_baudios[0]~14\ = CARRY(\uart_rx|cuenta_baudios\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(0),
	datad => VCC,
	combout => \uart_rx|cuenta_baudios[0]~13_combout\,
	cout => \uart_rx|cuenta_baudios[0]~14\);

-- Location: IOIBUF_X34_Y10_N8
\Rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst_n,
	o => \Rst_n~input_o\);

-- Location: FF_X30_Y13_N1
\uart_rx|cuenta_baudios[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[0]~13_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(0));

-- Location: LCCOMB_X30_Y13_N2
\uart_rx|cuenta_baudios[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[1]~15_combout\ = (\uart_rx|cuenta_baudios\(1) & (!\uart_rx|cuenta_baudios[0]~14\)) # (!\uart_rx|cuenta_baudios\(1) & ((\uart_rx|cuenta_baudios[0]~14\) # (GND)))
-- \uart_rx|cuenta_baudios[1]~16\ = CARRY((!\uart_rx|cuenta_baudios[0]~14\) # (!\uart_rx|cuenta_baudios\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(1),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[0]~14\,
	combout => \uart_rx|cuenta_baudios[1]~15_combout\,
	cout => \uart_rx|cuenta_baudios[1]~16\);

-- Location: FF_X30_Y13_N3
\uart_rx|cuenta_baudios[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[1]~15_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(1));

-- Location: LCCOMB_X30_Y13_N4
\uart_rx|cuenta_baudios[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[2]~17_combout\ = (\uart_rx|cuenta_baudios\(2) & (\uart_rx|cuenta_baudios[1]~16\ $ (GND))) # (!\uart_rx|cuenta_baudios\(2) & (!\uart_rx|cuenta_baudios[1]~16\ & VCC))
-- \uart_rx|cuenta_baudios[2]~18\ = CARRY((\uart_rx|cuenta_baudios\(2) & !\uart_rx|cuenta_baudios[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(2),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[1]~16\,
	combout => \uart_rx|cuenta_baudios[2]~17_combout\,
	cout => \uart_rx|cuenta_baudios[2]~18\);

-- Location: FF_X30_Y13_N5
\uart_rx|cuenta_baudios[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[2]~17_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(2));

-- Location: LCCOMB_X30_Y13_N6
\uart_rx|cuenta_baudios[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[3]~19_combout\ = (\uart_rx|cuenta_baudios\(3) & (!\uart_rx|cuenta_baudios[2]~18\)) # (!\uart_rx|cuenta_baudios\(3) & ((\uart_rx|cuenta_baudios[2]~18\) # (GND)))
-- \uart_rx|cuenta_baudios[3]~20\ = CARRY((!\uart_rx|cuenta_baudios[2]~18\) # (!\uart_rx|cuenta_baudios\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(3),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[2]~18\,
	combout => \uart_rx|cuenta_baudios[3]~19_combout\,
	cout => \uart_rx|cuenta_baudios[3]~20\);

-- Location: FF_X30_Y13_N7
\uart_rx|cuenta_baudios[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[3]~19_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(3));

-- Location: LCCOMB_X30_Y13_N8
\uart_rx|cuenta_baudios[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[4]~21_combout\ = (\uart_rx|cuenta_baudios\(4) & (\uart_rx|cuenta_baudios[3]~20\ $ (GND))) # (!\uart_rx|cuenta_baudios\(4) & (!\uart_rx|cuenta_baudios[3]~20\ & VCC))
-- \uart_rx|cuenta_baudios[4]~22\ = CARRY((\uart_rx|cuenta_baudios\(4) & !\uart_rx|cuenta_baudios[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(4),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[3]~20\,
	combout => \uart_rx|cuenta_baudios[4]~21_combout\,
	cout => \uart_rx|cuenta_baudios[4]~22\);

-- Location: FF_X30_Y13_N9
\uart_rx|cuenta_baudios[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[4]~21_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(4));

-- Location: LCCOMB_X30_Y13_N10
\uart_rx|cuenta_baudios[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[5]~23_combout\ = (\uart_rx|cuenta_baudios\(5) & (!\uart_rx|cuenta_baudios[4]~22\)) # (!\uart_rx|cuenta_baudios\(5) & ((\uart_rx|cuenta_baudios[4]~22\) # (GND)))
-- \uart_rx|cuenta_baudios[5]~24\ = CARRY((!\uart_rx|cuenta_baudios[4]~22\) # (!\uart_rx|cuenta_baudios\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(5),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[4]~22\,
	combout => \uart_rx|cuenta_baudios[5]~23_combout\,
	cout => \uart_rx|cuenta_baudios[5]~24\);

-- Location: FF_X30_Y13_N11
\uart_rx|cuenta_baudios[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[5]~23_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(5));

-- Location: LCCOMB_X30_Y13_N12
\uart_rx|cuenta_baudios[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[6]~25_combout\ = (\uart_rx|cuenta_baudios\(6) & (\uart_rx|cuenta_baudios[5]~24\ $ (GND))) # (!\uart_rx|cuenta_baudios\(6) & (!\uart_rx|cuenta_baudios[5]~24\ & VCC))
-- \uart_rx|cuenta_baudios[6]~26\ = CARRY((\uart_rx|cuenta_baudios\(6) & !\uart_rx|cuenta_baudios[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(6),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[5]~24\,
	combout => \uart_rx|cuenta_baudios[6]~25_combout\,
	cout => \uart_rx|cuenta_baudios[6]~26\);

-- Location: FF_X30_Y13_N13
\uart_rx|cuenta_baudios[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[6]~25_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(6));

-- Location: LCCOMB_X30_Y13_N14
\uart_rx|cuenta_baudios[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[7]~27_combout\ = (\uart_rx|cuenta_baudios\(7) & (!\uart_rx|cuenta_baudios[6]~26\)) # (!\uart_rx|cuenta_baudios\(7) & ((\uart_rx|cuenta_baudios[6]~26\) # (GND)))
-- \uart_rx|cuenta_baudios[7]~28\ = CARRY((!\uart_rx|cuenta_baudios[6]~26\) # (!\uart_rx|cuenta_baudios\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(7),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[6]~26\,
	combout => \uart_rx|cuenta_baudios[7]~27_combout\,
	cout => \uart_rx|cuenta_baudios[7]~28\);

-- Location: FF_X30_Y13_N15
\uart_rx|cuenta_baudios[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[7]~27_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(7));

-- Location: LCCOMB_X30_Y13_N16
\uart_rx|cuenta_baudios[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[8]~29_combout\ = (\uart_rx|cuenta_baudios\(8) & (\uart_rx|cuenta_baudios[7]~28\ $ (GND))) # (!\uart_rx|cuenta_baudios\(8) & (!\uart_rx|cuenta_baudios[7]~28\ & VCC))
-- \uart_rx|cuenta_baudios[8]~30\ = CARRY((\uart_rx|cuenta_baudios\(8) & !\uart_rx|cuenta_baudios[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(8),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[7]~28\,
	combout => \uart_rx|cuenta_baudios[8]~29_combout\,
	cout => \uart_rx|cuenta_baudios[8]~30\);

-- Location: FF_X30_Y13_N17
\uart_rx|cuenta_baudios[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[8]~29_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(8));

-- Location: LCCOMB_X30_Y13_N18
\uart_rx|cuenta_baudios[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[9]~31_combout\ = (\uart_rx|cuenta_baudios\(9) & (!\uart_rx|cuenta_baudios[8]~30\)) # (!\uart_rx|cuenta_baudios\(9) & ((\uart_rx|cuenta_baudios[8]~30\) # (GND)))
-- \uart_rx|cuenta_baudios[9]~32\ = CARRY((!\uart_rx|cuenta_baudios[8]~30\) # (!\uart_rx|cuenta_baudios\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(9),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[8]~30\,
	combout => \uart_rx|cuenta_baudios[9]~31_combout\,
	cout => \uart_rx|cuenta_baudios[9]~32\);

-- Location: FF_X30_Y13_N19
\uart_rx|cuenta_baudios[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[9]~31_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(9));

-- Location: LCCOMB_X30_Y13_N20
\uart_rx|cuenta_baudios[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[10]~33_combout\ = (\uart_rx|cuenta_baudios\(10) & (\uart_rx|cuenta_baudios[9]~32\ $ (GND))) # (!\uart_rx|cuenta_baudios\(10) & (!\uart_rx|cuenta_baudios[9]~32\ & VCC))
-- \uart_rx|cuenta_baudios[10]~34\ = CARRY((\uart_rx|cuenta_baudios\(10) & !\uart_rx|cuenta_baudios[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_baudios\(10),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[9]~32\,
	combout => \uart_rx|cuenta_baudios[10]~33_combout\,
	cout => \uart_rx|cuenta_baudios[10]~34\);

-- Location: FF_X30_Y13_N21
\uart_rx|cuenta_baudios[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[10]~33_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(10));

-- Location: LCCOMB_X30_Y13_N22
\uart_rx|cuenta_baudios[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[11]~35_combout\ = (\uart_rx|cuenta_baudios\(11) & (!\uart_rx|cuenta_baudios[10]~34\)) # (!\uart_rx|cuenta_baudios\(11) & ((\uart_rx|cuenta_baudios[10]~34\) # (GND)))
-- \uart_rx|cuenta_baudios[11]~36\ = CARRY((!\uart_rx|cuenta_baudios[10]~34\) # (!\uart_rx|cuenta_baudios\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(11),
	datad => VCC,
	cin => \uart_rx|cuenta_baudios[10]~34\,
	combout => \uart_rx|cuenta_baudios[11]~35_combout\,
	cout => \uart_rx|cuenta_baudios[11]~36\);

-- Location: FF_X30_Y13_N23
\uart_rx|cuenta_baudios[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[11]~35_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(11));

-- Location: LCCOMB_X30_Y13_N24
\uart_rx|cuenta_baudios[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_baudios[12]~37_combout\ = \uart_rx|cuenta_baudios[11]~36\ $ (!\uart_rx|cuenta_baudios\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|cuenta_baudios\(12),
	cin => \uart_rx|cuenta_baudios[11]~36\,
	combout => \uart_rx|cuenta_baudios[12]~37_combout\);

-- Location: FF_X30_Y13_N25
\uart_rx|cuenta_baudios[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_baudios[12]~37_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_baudios\(12));

-- Location: LCCOMB_X30_Y13_N26
\uart_rx|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan0~0_combout\ = (!\uart_rx|cuenta_baudios\(3) & (((!\uart_rx|cuenta_baudios\(0)) # (!\uart_rx|cuenta_baudios\(2))) # (!\uart_rx|cuenta_baudios\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(3),
	datab => \uart_rx|cuenta_baudios\(1),
	datac => \uart_rx|cuenta_baudios\(2),
	datad => \uart_rx|cuenta_baudios\(0),
	combout => \uart_rx|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y13_N28
\uart_rx|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan0~1_combout\ = (\uart_rx|cuenta_baudios\(6) & ((\uart_rx|cuenta_baudios\(5)) # ((\uart_rx|cuenta_baudios\(4) & !\uart_rx|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(6),
	datab => \uart_rx|cuenta_baudios\(4),
	datac => \uart_rx|LessThan0~0_combout\,
	datad => \uart_rx|cuenta_baudios\(5),
	combout => \uart_rx|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y13_N30
\uart_rx|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan0~2_combout\ = (\uart_rx|cuenta_baudios\(9)) # ((\uart_rx|cuenta_baudios\(8)) # ((\uart_rx|cuenta_baudios\(7)) # (\uart_rx|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(9),
	datab => \uart_rx|cuenta_baudios\(8),
	datac => \uart_rx|cuenta_baudios\(7),
	datad => \uart_rx|LessThan0~1_combout\,
	combout => \uart_rx|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y13_N2
\uart_rx|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan0~3_combout\ = ((!\uart_rx|cuenta_baudios\(11) & ((!\uart_rx|LessThan0~2_combout\) # (!\uart_rx|cuenta_baudios\(10))))) # (!\uart_rx|cuenta_baudios\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_baudios\(12),
	datab => \uart_rx|cuenta_baudios\(11),
	datac => \uart_rx|cuenta_baudios\(10),
	datad => \uart_rx|LessThan0~2_combout\,
	combout => \uart_rx|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y13_N8
\uart_rx|cuenta_muestra[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[0]~9_combout\ = (((\uart_rx|cuenta_muestra\(0) & \uart_rx|LessThan0~3_combout\)))
-- \uart_rx|cuenta_muestra[0]~10\ = CARRY((\uart_rx|cuenta_muestra\(0) & \uart_rx|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_muestra\(0),
	datab => \uart_rx|LessThan0~3_combout\,
	datad => VCC,
	combout => \uart_rx|cuenta_muestra[0]~9_combout\,
	cout => \uart_rx|cuenta_muestra[0]~10\);

-- Location: FF_X28_Y13_N9
\uart_rx|cuenta_muestra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[0]~9_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(0));

-- Location: LCCOMB_X28_Y13_N10
\uart_rx|cuenta_muestra[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[1]~11_combout\ = (\uart_rx|cuenta_muestra[0]~10\ & (((!\uart_rx|LessThan0~3_combout\)) # (!\uart_rx|cuenta_muestra\(1)))) # (!\uart_rx|cuenta_muestra[0]~10\ & (((\uart_rx|cuenta_muestra\(1) & \uart_rx|LessThan0~3_combout\)) # 
-- (GND)))
-- \uart_rx|cuenta_muestra[1]~12\ = CARRY(((!\uart_rx|cuenta_muestra[0]~10\) # (!\uart_rx|LessThan0~3_combout\)) # (!\uart_rx|cuenta_muestra\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_muestra\(1),
	datab => \uart_rx|LessThan0~3_combout\,
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[0]~10\,
	combout => \uart_rx|cuenta_muestra[1]~11_combout\,
	cout => \uart_rx|cuenta_muestra[1]~12\);

-- Location: FF_X28_Y13_N11
\uart_rx|cuenta_muestra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[1]~11_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(1));

-- Location: LCCOMB_X28_Y13_N12
\uart_rx|cuenta_muestra[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[2]~13_combout\ = (\uart_rx|cuenta_muestra[1]~12\ & (\uart_rx|cuenta_muestra\(2) & (\uart_rx|LessThan0~3_combout\ & VCC))) # (!\uart_rx|cuenta_muestra[1]~12\ & ((((\uart_rx|cuenta_muestra\(2) & \uart_rx|LessThan0~3_combout\)))))
-- \uart_rx|cuenta_muestra[2]~14\ = CARRY((\uart_rx|cuenta_muestra\(2) & (\uart_rx|LessThan0~3_combout\ & !\uart_rx|cuenta_muestra[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_muestra\(2),
	datab => \uart_rx|LessThan0~3_combout\,
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[1]~12\,
	combout => \uart_rx|cuenta_muestra[2]~13_combout\,
	cout => \uart_rx|cuenta_muestra[2]~14\);

-- Location: FF_X28_Y13_N13
\uart_rx|cuenta_muestra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[2]~13_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(2));

-- Location: LCCOMB_X28_Y13_N14
\uart_rx|cuenta_muestra[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[3]~15_combout\ = (\uart_rx|cuenta_muestra[2]~14\ & (((!\uart_rx|LessThan0~3_combout\)) # (!\uart_rx|cuenta_muestra\(3)))) # (!\uart_rx|cuenta_muestra[2]~14\ & (((\uart_rx|cuenta_muestra\(3) & \uart_rx|LessThan0~3_combout\)) # 
-- (GND)))
-- \uart_rx|cuenta_muestra[3]~16\ = CARRY(((!\uart_rx|cuenta_muestra[2]~14\) # (!\uart_rx|LessThan0~3_combout\)) # (!\uart_rx|cuenta_muestra\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_muestra\(3),
	datab => \uart_rx|LessThan0~3_combout\,
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[2]~14\,
	combout => \uart_rx|cuenta_muestra[3]~15_combout\,
	cout => \uart_rx|cuenta_muestra[3]~16\);

-- Location: FF_X28_Y13_N15
\uart_rx|cuenta_muestra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[3]~15_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(3));

-- Location: LCCOMB_X28_Y13_N16
\uart_rx|cuenta_muestra[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[4]~17_combout\ = (\uart_rx|cuenta_muestra[3]~16\ & (\uart_rx|LessThan0~3_combout\ & (\uart_rx|cuenta_muestra\(4) & VCC))) # (!\uart_rx|cuenta_muestra[3]~16\ & ((((\uart_rx|LessThan0~3_combout\ & \uart_rx|cuenta_muestra\(4))))))
-- \uart_rx|cuenta_muestra[4]~18\ = CARRY((\uart_rx|LessThan0~3_combout\ & (\uart_rx|cuenta_muestra\(4) & !\uart_rx|cuenta_muestra[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|LessThan0~3_combout\,
	datab => \uart_rx|cuenta_muestra\(4),
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[3]~16\,
	combout => \uart_rx|cuenta_muestra[4]~17_combout\,
	cout => \uart_rx|cuenta_muestra[4]~18\);

-- Location: FF_X28_Y13_N17
\uart_rx|cuenta_muestra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[4]~17_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(4));

-- Location: LCCOMB_X28_Y13_N18
\uart_rx|cuenta_muestra[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[5]~19_combout\ = (\uart_rx|cuenta_muestra[4]~18\ & (((!\uart_rx|cuenta_muestra\(5))) # (!\uart_rx|LessThan0~3_combout\))) # (!\uart_rx|cuenta_muestra[4]~18\ & (((\uart_rx|LessThan0~3_combout\ & \uart_rx|cuenta_muestra\(5))) # 
-- (GND)))
-- \uart_rx|cuenta_muestra[5]~20\ = CARRY(((!\uart_rx|cuenta_muestra[4]~18\) # (!\uart_rx|cuenta_muestra\(5))) # (!\uart_rx|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|LessThan0~3_combout\,
	datab => \uart_rx|cuenta_muestra\(5),
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[4]~18\,
	combout => \uart_rx|cuenta_muestra[5]~19_combout\,
	cout => \uart_rx|cuenta_muestra[5]~20\);

-- Location: FF_X28_Y13_N19
\uart_rx|cuenta_muestra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[5]~19_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(5));

-- Location: LCCOMB_X28_Y13_N30
\uart_rx|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan1~0_combout\ = (!\uart_rx|cuenta_muestra\(2) & (!\uart_rx|cuenta_muestra\(4) & (!\uart_rx|cuenta_muestra\(3) & !\uart_rx|cuenta_muestra\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_muestra\(2),
	datab => \uart_rx|cuenta_muestra\(4),
	datac => \uart_rx|cuenta_muestra\(3),
	datad => \uart_rx|cuenta_muestra\(5),
	combout => \uart_rx|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y13_N20
\uart_rx|cuenta_muestra[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[6]~21_combout\ = (\uart_rx|cuenta_muestra[5]~20\ & (\uart_rx|LessThan0~3_combout\ & (\uart_rx|cuenta_muestra\(6) & VCC))) # (!\uart_rx|cuenta_muestra[5]~20\ & ((((\uart_rx|LessThan0~3_combout\ & \uart_rx|cuenta_muestra\(6))))))
-- \uart_rx|cuenta_muestra[6]~22\ = CARRY((\uart_rx|LessThan0~3_combout\ & (\uart_rx|cuenta_muestra\(6) & !\uart_rx|cuenta_muestra[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|LessThan0~3_combout\,
	datab => \uart_rx|cuenta_muestra\(6),
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[5]~20\,
	combout => \uart_rx|cuenta_muestra[6]~21_combout\,
	cout => \uart_rx|cuenta_muestra[6]~22\);

-- Location: FF_X28_Y13_N21
\uart_rx|cuenta_muestra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[6]~21_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(6));

-- Location: LCCOMB_X28_Y13_N22
\uart_rx|cuenta_muestra[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[7]~23_combout\ = (\uart_rx|cuenta_muestra[6]~22\ & (((!\uart_rx|LessThan0~3_combout\)) # (!\uart_rx|cuenta_muestra\(7)))) # (!\uart_rx|cuenta_muestra[6]~22\ & (((\uart_rx|cuenta_muestra\(7) & \uart_rx|LessThan0~3_combout\)) # 
-- (GND)))
-- \uart_rx|cuenta_muestra[7]~24\ = CARRY(((!\uart_rx|cuenta_muestra[6]~22\) # (!\uart_rx|LessThan0~3_combout\)) # (!\uart_rx|cuenta_muestra\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|cuenta_muestra\(7),
	datab => \uart_rx|LessThan0~3_combout\,
	datad => VCC,
	cin => \uart_rx|cuenta_muestra[6]~22\,
	combout => \uart_rx|cuenta_muestra[7]~23_combout\,
	cout => \uart_rx|cuenta_muestra[7]~24\);

-- Location: FF_X28_Y13_N23
\uart_rx|cuenta_muestra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[7]~23_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(7));

-- Location: LCCOMB_X28_Y13_N24
\uart_rx|cuenta_muestra[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|cuenta_muestra[8]~25_combout\ = \uart_rx|cuenta_muestra[7]~24\ $ (((!\uart_rx|LessThan0~3_combout\) # (!\uart_rx|cuenta_muestra\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|cuenta_muestra\(8),
	datad => \uart_rx|LessThan0~3_combout\,
	cin => \uart_rx|cuenta_muestra[7]~24\,
	combout => \uart_rx|cuenta_muestra[8]~25_combout\);

-- Location: FF_X28_Y13_N25
\uart_rx|cuenta_muestra[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|cuenta_muestra[8]~25_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \uart_rx|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|cuenta_muestra\(8));

-- Location: LCCOMB_X28_Y13_N4
\uart_rx|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan1~1_combout\ = ((!\uart_rx|cuenta_muestra\(7) & ((\uart_rx|LessThan1~0_combout\) # (!\uart_rx|cuenta_muestra\(6))))) # (!\uart_rx|cuenta_muestra\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|LessThan1~0_combout\,
	datab => \uart_rx|cuenta_muestra\(8),
	datac => \uart_rx|cuenta_muestra\(7),
	datad => \uart_rx|cuenta_muestra\(6),
	combout => \uart_rx|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y13_N26
\uart_rx|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan1~2_combout\ = (!\uart_rx|LessThan1~1_combout\ & \uart_rx|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|LessThan1~1_combout\,
	datad => \uart_rx|LessThan0~3_combout\,
	combout => \uart_rx|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y13_N28
\uart_rx|pulso_muestra~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|pulso_muestra~feeder_combout\ = \uart_rx|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|LessThan1~2_combout\,
	combout => \uart_rx|pulso_muestra~feeder_combout\);

-- Location: FF_X28_Y13_N29
\uart_rx|pulso_muestra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|pulso_muestra~feeder_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|pulso_muestra~q\);

-- Location: IOIBUF_X0_Y9_N8
\Rx_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rx_in,
	o => \Rx_in~input_o\);

-- Location: LCCOMB_X28_Y12_N18
\uart_rx|contador_ticks[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[3]~0_combout\ = (\uart_rx|pulso_muestra~q\ & (((\uart_rx|LessThan3~0_combout\) # (!\uart_rx|estado~q\)) # (!\uart_rx|contador_bits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_bits\(3),
	datab => \uart_rx|LessThan3~0_combout\,
	datac => \uart_rx|pulso_muestra~q\,
	datad => \uart_rx|estado~q\,
	combout => \uart_rx|contador_ticks[3]~0_combout\);

-- Location: LCCOMB_X28_Y12_N4
\uart_rx|contador_ticks[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[0]~5_combout\ = (\uart_rx|contador_ticks\(0) & ((!\uart_rx|contador_ticks[3]~0_combout\))) # (!\uart_rx|contador_ticks\(0) & (\uart_rx|contador_ticks[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_ticks[3]~2_combout\,
	datac => \uart_rx|contador_ticks\(0),
	datad => \uart_rx|contador_ticks[3]~0_combout\,
	combout => \uart_rx|contador_ticks[0]~5_combout\);

-- Location: FF_X28_Y12_N5
\uart_rx|contador_ticks[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_ticks[0]~5_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_ticks\(0));

-- Location: LCCOMB_X28_Y12_N26
\uart_rx|contador_ticks[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[1]~6_combout\ = (\uart_rx|contador_ticks\(1) & (((\uart_rx|contador_ticks[3]~2_combout\ & !\uart_rx|contador_ticks\(0))) # (!\uart_rx|contador_ticks[3]~0_combout\))) # (!\uart_rx|contador_ticks\(1) & 
-- (\uart_rx|contador_ticks[3]~2_combout\ & (\uart_rx|contador_ticks\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_ticks[3]~2_combout\,
	datab => \uart_rx|contador_ticks\(0),
	datac => \uart_rx|contador_ticks\(1),
	datad => \uart_rx|contador_ticks[3]~0_combout\,
	combout => \uart_rx|contador_ticks[1]~6_combout\);

-- Location: FF_X28_Y12_N27
\uart_rx|contador_ticks[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_ticks[1]~6_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_ticks\(1));

-- Location: LCCOMB_X28_Y12_N28
\uart_rx|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add2~1_combout\ = \uart_rx|contador_ticks\(2) $ (((\uart_rx|contador_ticks\(0) & \uart_rx|contador_ticks\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador_ticks\(0),
	datac => \uart_rx|contador_ticks\(1),
	datad => \uart_rx|contador_ticks\(2),
	combout => \uart_rx|Add2~1_combout\);

-- Location: LCCOMB_X28_Y12_N2
\uart_rx|contador_ticks[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[2]~4_combout\ = (\uart_rx|contador_ticks[3]~2_combout\ & ((\uart_rx|Add2~1_combout\) # ((\uart_rx|contador_ticks\(2) & !\uart_rx|contador_ticks[3]~0_combout\)))) # (!\uart_rx|contador_ticks[3]~2_combout\ & 
-- (((\uart_rx|contador_ticks\(2) & !\uart_rx|contador_ticks[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_ticks[3]~2_combout\,
	datab => \uart_rx|Add2~1_combout\,
	datac => \uart_rx|contador_ticks\(2),
	datad => \uart_rx|contador_ticks[3]~0_combout\,
	combout => \uart_rx|contador_ticks[2]~4_combout\);

-- Location: FF_X28_Y12_N3
\uart_rx|contador_ticks[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_ticks[2]~4_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_ticks\(2));

-- Location: LCCOMB_X28_Y12_N24
\uart_rx|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|LessThan3~0_combout\ = (((!\uart_rx|contador_ticks\(2)) # (!\uart_rx|contador_ticks\(0))) # (!\uart_rx|contador_ticks\(3))) # (!\uart_rx|contador_ticks\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_ticks\(1),
	datab => \uart_rx|contador_ticks\(3),
	datac => \uart_rx|contador_ticks\(0),
	datad => \uart_rx|contador_ticks\(2),
	combout => \uart_rx|LessThan3~0_combout\);

-- Location: LCCOMB_X28_Y12_N8
\uart_rx|contador_ticks[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[3]~1_combout\ = (!\uart_rx|contador_ticks\(3) & (!\Rx_in~input_o\ & !\uart_rx|estado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador_ticks\(3),
	datac => \Rx_in~input_o\,
	datad => \uart_rx|estado~q\,
	combout => \uart_rx|contador_ticks[3]~1_combout\);

-- Location: LCCOMB_X28_Y12_N22
\uart_rx|contador_ticks[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[3]~2_combout\ = (\uart_rx|contador_ticks[3]~0_combout\ & ((\uart_rx|contador_ticks[3]~1_combout\) # ((\uart_rx|estado~q\ & \uart_rx|LessThan3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|estado~q\,
	datab => \uart_rx|LessThan3~0_combout\,
	datac => \uart_rx|contador_ticks[3]~1_combout\,
	datad => \uart_rx|contador_ticks[3]~0_combout\,
	combout => \uart_rx|contador_ticks[3]~2_combout\);

-- Location: LCCOMB_X28_Y12_N16
\uart_rx|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add2~0_combout\ = \uart_rx|contador_ticks\(3) $ (((\uart_rx|contador_ticks\(1) & (\uart_rx|contador_ticks\(0) & \uart_rx|contador_ticks\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_ticks\(1),
	datab => \uart_rx|contador_ticks\(3),
	datac => \uart_rx|contador_ticks\(0),
	datad => \uart_rx|contador_ticks\(2),
	combout => \uart_rx|Add2~0_combout\);

-- Location: LCCOMB_X28_Y12_N0
\uart_rx|contador_ticks[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_ticks[3]~3_combout\ = (\uart_rx|contador_ticks[3]~2_combout\ & ((\uart_rx|Add2~0_combout\) # ((\uart_rx|contador_ticks\(3) & !\uart_rx|contador_ticks[3]~0_combout\)))) # (!\uart_rx|contador_ticks[3]~2_combout\ & 
-- (((\uart_rx|contador_ticks\(3) & !\uart_rx|contador_ticks[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_ticks[3]~2_combout\,
	datab => \uart_rx|Add2~0_combout\,
	datac => \uart_rx|contador_ticks\(3),
	datad => \uart_rx|contador_ticks[3]~0_combout\,
	combout => \uart_rx|contador_ticks[3]~3_combout\);

-- Location: FF_X28_Y12_N1
\uart_rx|contador_ticks[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_ticks[3]~3_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_ticks\(3));

-- Location: LCCOMB_X28_Y12_N14
\uart_rx|estado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|estado~0_combout\ = (!\Rx_in~input_o\ & (\uart_rx|contador_ticks\(3) & (\uart_rx|pulso_muestra~q\ & !\uart_rx|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx_in~input_o\,
	datab => \uart_rx|contador_ticks\(3),
	datac => \uart_rx|pulso_muestra~q\,
	datad => \uart_rx|estado~q\,
	combout => \uart_rx|estado~0_combout\);

-- Location: LCCOMB_X28_Y12_N20
\uart_rx|datonuevo_aux~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|datonuevo_aux~2_combout\ = (\uart_rx|contador_bits\(3) & !\uart_rx|LessThan3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_bits\(3),
	datad => \uart_rx|LessThan3~0_combout\,
	combout => \uart_rx|datonuevo_aux~2_combout\);

-- Location: LCCOMB_X28_Y12_N12
\uart_rx|estado~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|estado~1_combout\ = (\uart_rx|estado~0_combout\) # ((\uart_rx|estado~q\ & ((!\uart_rx|datonuevo_aux~2_combout\) # (!\uart_rx|pulso_muestra~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|pulso_muestra~q\,
	datab => \uart_rx|estado~0_combout\,
	datac => \uart_rx|estado~q\,
	datad => \uart_rx|datonuevo_aux~2_combout\,
	combout => \uart_rx|estado~1_combout\);

-- Location: FF_X28_Y12_N13
\uart_rx|estado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|estado~1_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|estado~q\);

-- Location: LCCOMB_X29_Y12_N28
\uart_rx|contador_bits~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_bits~4_combout\ = (!\uart_rx|contador_bits\(0) & \uart_rx|estado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|contador_bits\(0),
	datad => \uart_rx|estado~q\,
	combout => \uart_rx|contador_bits~4_combout\);

-- Location: LCCOMB_X28_Y12_N10
\uart_rx|contador_bits[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_bits[3]~0_combout\ = (\uart_rx|pulso_muestra~q\ & ((\uart_rx|estado~q\) # ((!\Rx_in~input_o\ & \uart_rx|contador_ticks\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Rx_in~input_o\,
	datab => \uart_rx|contador_ticks\(3),
	datac => \uart_rx|pulso_muestra~q\,
	datad => \uart_rx|estado~q\,
	combout => \uart_rx|contador_bits[3]~0_combout\);

-- Location: LCCOMB_X29_Y12_N14
\uart_rx|contador_bits[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_bits[3]~1_combout\ = (\uart_rx|contador_bits[3]~0_combout\ & (((!\uart_rx|LessThan3~0_combout\ & !\uart_rx|contador_bits\(3))) # (!\uart_rx|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|estado~q\,
	datab => \uart_rx|LessThan3~0_combout\,
	datac => \uart_rx|contador_bits\(3),
	datad => \uart_rx|contador_bits[3]~0_combout\,
	combout => \uart_rx|contador_bits[3]~1_combout\);

-- Location: FF_X29_Y12_N29
\uart_rx|contador_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_bits~4_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|contador_bits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_bits\(0));

-- Location: LCCOMB_X29_Y12_N6
\uart_rx|contador_bits~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_bits~5_combout\ = (\uart_rx|estado~q\ & (\uart_rx|contador_bits\(1) $ (\uart_rx|contador_bits\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|estado~q\,
	datac => \uart_rx|contador_bits\(1),
	datad => \uart_rx|contador_bits\(0),
	combout => \uart_rx|contador_bits~5_combout\);

-- Location: FF_X29_Y12_N7
\uart_rx|contador_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_bits~5_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|contador_bits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_bits\(1));

-- Location: LCCOMB_X29_Y12_N18
\uart_rx|contador_bits~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_bits~3_combout\ = (\uart_rx|estado~q\ & (\uart_rx|contador_bits\(2) $ (((\uart_rx|contador_bits\(0) & \uart_rx|contador_bits\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|estado~q\,
	datab => \uart_rx|contador_bits\(0),
	datac => \uart_rx|contador_bits\(2),
	datad => \uart_rx|contador_bits\(1),
	combout => \uart_rx|contador_bits~3_combout\);

-- Location: FF_X29_Y12_N19
\uart_rx|contador_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_bits~3_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|contador_bits[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_bits\(2));

-- Location: LCCOMB_X29_Y12_N24
\uart_rx|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add3~0_combout\ = \uart_rx|contador_bits\(3) $ (((\uart_rx|contador_bits\(1) & (\uart_rx|contador_bits\(0) & \uart_rx|contador_bits\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_bits\(1),
	datab => \uart_rx|contador_bits\(0),
	datac => \uart_rx|contador_bits\(3),
	datad => \uart_rx|contador_bits\(2),
	combout => \uart_rx|Add3~0_combout\);

-- Location: LCCOMB_X28_Y12_N6
\uart_rx|contador_bits[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|contador_bits[3]~2_combout\ = (\uart_rx|contador_bits[3]~1_combout\ & (\uart_rx|estado~q\ & (\uart_rx|Add3~0_combout\))) # (!\uart_rx|contador_bits[3]~1_combout\ & (((\uart_rx|contador_bits\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|estado~q\,
	datab => \uart_rx|Add3~0_combout\,
	datac => \uart_rx|contador_bits\(3),
	datad => \uart_rx|contador_bits[3]~1_combout\,
	combout => \uart_rx|contador_bits[3]~2_combout\);

-- Location: FF_X28_Y12_N7
\uart_rx|contador_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|contador_bits[3]~2_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador_bits\(3));

-- Location: LCCOMB_X33_Y9_N6
\uart_rx|datonuevo_aux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|datonuevo_aux~0_combout\ = \uart_rx|datonuevo_aux~q\ $ ((((\uart_rx|LessThan3~0_combout\) # (!\uart_rx|estado~q\)) # (!\uart_rx|contador_bits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador_bits\(3),
	datab => \uart_rx|estado~q\,
	datac => \uart_rx|datonuevo_aux~q\,
	datad => \uart_rx|LessThan3~0_combout\,
	combout => \uart_rx|datonuevo_aux~0_combout\);

-- Location: LCCOMB_X32_Y10_N0
\uart_rx|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~0_combout\ = (!\uart_rx|Add4~2_combout\ & (!\uart_rx|Add4~0_combout\ & (!\uart_rx|Add4~6_combout\ & !\uart_rx|Add4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Add4~2_combout\,
	datab => \uart_rx|Add4~0_combout\,
	datac => \uart_rx|Add4~6_combout\,
	datad => \uart_rx|Add4~4_combout\,
	combout => \uart_rx|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y10_N4
\uart_rx|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~2_combout\ = (!\uart_rx|Add4~20_combout\ & (!\uart_rx|Add4~18_combout\ & (!\uart_rx|Add4~16_combout\ & !\uart_rx|Add4~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Add4~20_combout\,
	datab => \uart_rx|Add4~18_combout\,
	datac => \uart_rx|Add4~16_combout\,
	datad => \uart_rx|Add4~22_combout\,
	combout => \uart_rx|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y10_N2
\uart_rx|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~1_combout\ = (!\uart_rx|Add4~10_combout\ & (\uart_rx|Add4~14_combout\ & (!\uart_rx|Add4~12_combout\ & !\uart_rx|Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Add4~10_combout\,
	datab => \uart_rx|Add4~14_combout\,
	datac => \uart_rx|Add4~12_combout\,
	datad => \uart_rx|Add4~8_combout\,
	combout => \uart_rx|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y9_N12
\uart_rx|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~3_combout\ = (\uart_rx|Add4~28_combout\ & (\uart_rx|Add4~30_combout\ & (\uart_rx|Add4~26_combout\ & \uart_rx|Add4~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Add4~28_combout\,
	datab => \uart_rx|Add4~30_combout\,
	datac => \uart_rx|Add4~26_combout\,
	datad => \uart_rx|Add4~24_combout\,
	combout => \uart_rx|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y9_N4
\uart_rx|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~4_combout\ = (\uart_rx|Equal0~0_combout\ & (\uart_rx|Equal0~2_combout\ & (\uart_rx|Equal0~1_combout\ & \uart_rx|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Equal0~0_combout\,
	datab => \uart_rx|Equal0~2_combout\,
	datac => \uart_rx|Equal0~1_combout\,
	datad => \uart_rx|Equal0~3_combout\,
	combout => \uart_rx|Equal0~4_combout\);

-- Location: FF_X32_Y9_N25
\uart_rx|contador1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(25));

-- Location: LCCOMB_X32_Y9_N14
\uart_rx|Add4~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~40_combout\ = (\uart_rx|contador1\(20) & (\uart_rx|Add4~39\ $ (GND))) # (!\uart_rx|contador1\(20) & (!\uart_rx|Add4~39\ & VCC))
-- \uart_rx|Add4~41\ = CARRY((\uart_rx|contador1\(20) & !\uart_rx|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(20),
	datad => VCC,
	cin => \uart_rx|Add4~39\,
	combout => \uart_rx|Add4~40_combout\,
	cout => \uart_rx|Add4~41\);

-- Location: FF_X32_Y9_N15
\uart_rx|contador1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(20));

-- Location: LCCOMB_X32_Y9_N16
\uart_rx|Add4~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~42_combout\ = (\uart_rx|contador1\(21) & (!\uart_rx|Add4~41\)) # (!\uart_rx|contador1\(21) & ((\uart_rx|Add4~41\) # (GND)))
-- \uart_rx|Add4~43\ = CARRY((!\uart_rx|Add4~41\) # (!\uart_rx|contador1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(21),
	datad => VCC,
	cin => \uart_rx|Add4~41\,
	combout => \uart_rx|Add4~42_combout\,
	cout => \uart_rx|Add4~43\);

-- Location: FF_X32_Y9_N17
\uart_rx|contador1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(21));

-- Location: LCCOMB_X32_Y9_N18
\uart_rx|Add4~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~44_combout\ = (\uart_rx|contador1\(22) & (\uart_rx|Add4~43\ $ (GND))) # (!\uart_rx|contador1\(22) & (!\uart_rx|Add4~43\ & VCC))
-- \uart_rx|Add4~45\ = CARRY((\uart_rx|contador1\(22) & !\uart_rx|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(22),
	datad => VCC,
	cin => \uart_rx|Add4~43\,
	combout => \uart_rx|Add4~44_combout\,
	cout => \uart_rx|Add4~45\);

-- Location: FF_X32_Y9_N19
\uart_rx|contador1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(22));

-- Location: LCCOMB_X32_Y9_N20
\uart_rx|Add4~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~46_combout\ = (\uart_rx|contador1\(23) & (!\uart_rx|Add4~45\)) # (!\uart_rx|contador1\(23) & ((\uart_rx|Add4~45\) # (GND)))
-- \uart_rx|Add4~47\ = CARRY((!\uart_rx|Add4~45\) # (!\uart_rx|contador1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(23),
	datad => VCC,
	cin => \uart_rx|Add4~45\,
	combout => \uart_rx|Add4~46_combout\,
	cout => \uart_rx|Add4~47\);

-- Location: FF_X32_Y9_N21
\uart_rx|contador1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(23));

-- Location: LCCOMB_X32_Y9_N22
\uart_rx|Add4~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~48_combout\ = (\uart_rx|contador1\(24) & (\uart_rx|Add4~47\ $ (GND))) # (!\uart_rx|contador1\(24) & (!\uart_rx|Add4~47\ & VCC))
-- \uart_rx|Add4~49\ = CARRY((\uart_rx|contador1\(24) & !\uart_rx|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|contador1\(24),
	datad => VCC,
	cin => \uart_rx|Add4~47\,
	combout => \uart_rx|Add4~48_combout\,
	cout => \uart_rx|Add4~49\);

-- Location: FF_X32_Y9_N23
\uart_rx|contador1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|contador1\(24));

-- Location: LCCOMB_X32_Y9_N24
\uart_rx|Add4~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Add4~50_combout\ = \uart_rx|contador1\(25) $ (\uart_rx|Add4~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|contador1\(25),
	cin => \uart_rx|Add4~49\,
	combout => \uart_rx|Add4~50_combout\);

-- Location: LCCOMB_X32_Y9_N28
\uart_rx|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~6_combout\ = (\uart_rx|Add4~42_combout\ & (\uart_rx|Add4~44_combout\ & (\uart_rx|Add4~40_combout\ & \uart_rx|Add4~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Add4~42_combout\,
	datab => \uart_rx|Add4~44_combout\,
	datac => \uart_rx|Add4~40_combout\,
	datad => \uart_rx|Add4~46_combout\,
	combout => \uart_rx|Equal0~6_combout\);

-- Location: LCCOMB_X32_Y9_N30
\uart_rx|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|Equal0~7_combout\ = (\uart_rx|Add4~50_combout\ & (!\uart_rx|Add4~48_combout\ & \uart_rx|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx|Add4~50_combout\,
	datac => \uart_rx|Add4~48_combout\,
	datad => \uart_rx|Equal0~6_combout\,
	combout => \uart_rx|Equal0~7_combout\);

-- Location: LCCOMB_X33_Y9_N8
\uart_rx|datonuevo_aux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|datonuevo_aux~1_combout\ = (!\uart_rx|datonuevo_aux~0_combout\ & (((!\uart_rx|Equal0~7_combout\) # (!\uart_rx|Equal0~4_combout\)) # (!\uart_rx|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|Equal0~5_combout\,
	datab => \uart_rx|datonuevo_aux~0_combout\,
	datac => \uart_rx|Equal0~4_combout\,
	datad => \uart_rx|Equal0~7_combout\,
	combout => \uart_rx|datonuevo_aux~1_combout\);

-- Location: FF_X33_Y9_N9
\uart_rx|datonuevo_aux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|datonuevo_aux~1_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|datonuevo_aux~q\);

-- Location: CLKCTRL_G6
\uart_rx|datonuevo_aux~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart_rx|datonuevo_aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart_rx|datonuevo_aux~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y12_N18
\uart_rx|registro[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[8]~feeder_combout\ = \Rx_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Rx_in~input_o\,
	combout => \uart_rx|registro[8]~feeder_combout\);

-- Location: LCCOMB_X30_Y12_N8
\uart_rx|registro[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[1]~0_combout\ = (\Rst_n~input_o\ & \uart_rx|contador_bits[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Rst_n~input_o\,
	datad => \uart_rx|contador_bits[3]~1_combout\,
	combout => \uart_rx|registro[1]~0_combout\);

-- Location: FF_X30_Y12_N19
\uart_rx|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[8]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(8));

-- Location: LCCOMB_X30_Y12_N30
\uart_rx|registro[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[7]~feeder_combout\ = \uart_rx|registro\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(8),
	combout => \uart_rx|registro[7]~feeder_combout\);

-- Location: FF_X30_Y12_N31
\uart_rx|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[7]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(7));

-- Location: LCCOMB_X30_Y12_N26
\uart_rx|registro[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[6]~feeder_combout\ = \uart_rx|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(7),
	combout => \uart_rx|registro[6]~feeder_combout\);

-- Location: FF_X30_Y12_N27
\uart_rx|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[6]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(6));

-- Location: LCCOMB_X30_Y12_N2
\uart_rx|registro[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[5]~feeder_combout\ = \uart_rx|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(6),
	combout => \uart_rx|registro[5]~feeder_combout\);

-- Location: FF_X30_Y12_N3
\uart_rx|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[5]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(5));

-- Location: LCCOMB_X30_Y12_N16
\uart_rx|registro[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[4]~feeder_combout\ = \uart_rx|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(5),
	combout => \uart_rx|registro[4]~feeder_combout\);

-- Location: FF_X30_Y12_N17
\uart_rx|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[4]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(4));

-- Location: LCCOMB_X22_Y20_N12
\uart_rx|salida[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[3]~feeder_combout\ = \uart_rx|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(4),
	combout => \uart_rx|salida[3]~feeder_combout\);

-- Location: LCCOMB_X28_Y12_N30
\uart_rx|salida[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[7]~1_combout\ = (\uart_rx|estado~q\ & (\Rst_n~input_o\ & (\uart_rx|pulso_muestra~q\ & \uart_rx|datonuevo_aux~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|estado~q\,
	datab => \Rst_n~input_o\,
	datac => \uart_rx|pulso_muestra~q\,
	datad => \uart_rx|datonuevo_aux~2_combout\,
	combout => \uart_rx|salida[7]~1_combout\);

-- Location: FF_X22_Y20_N13
\uart_rx|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[3]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(3));

-- Location: LCCOMB_X22_Y20_N6
\componente|acumulado_aux[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[19]~feeder_combout\ = \uart_rx|salida\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|salida\(3),
	combout => \componente|acumulado_aux[19]~feeder_combout\);

-- Location: FF_X22_Y20_N7
\componente|acumulado_aux[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(19));

-- Location: LCCOMB_X22_Y20_N18
\componente|acumulado_aux[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[11]~feeder_combout\ = \componente|acumulado_aux\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(19),
	combout => \componente|acumulado_aux[11]~feeder_combout\);

-- Location: FF_X22_Y20_N19
\componente|acumulado_aux[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(11));

-- Location: LCCOMB_X22_Y20_N4
\componente|acumulado_aux[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[3]~feeder_combout\ = \componente|acumulado_aux\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(11),
	combout => \componente|acumulado_aux[3]~feeder_combout\);

-- Location: FF_X22_Y20_N5
\componente|acumulado_aux[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(3));

-- Location: LCCOMB_X23_Y20_N22
\comp2|contrasenia[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[3]~feeder_combout\ = \componente|acumulado_aux\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(3),
	combout => \comp2|contrasenia[3]~feeder_combout\);

-- Location: LCCOMB_X30_Y12_N24
\uart_rx|registro[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[3]~feeder_combout\ = \uart_rx|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(4),
	combout => \uart_rx|registro[3]~feeder_combout\);

-- Location: FF_X30_Y12_N25
\uart_rx|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[3]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(3));

-- Location: LCCOMB_X30_Y12_N20
\uart_rx|registro[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[2]~feeder_combout\ = \uart_rx|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(3),
	combout => \uart_rx|registro[2]~feeder_combout\);

-- Location: FF_X30_Y12_N21
\uart_rx|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[2]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(2));

-- Location: LCCOMB_X22_Y20_N26
\uart_rx|salida[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[1]~feeder_combout\ = \uart_rx|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(2),
	combout => \uart_rx|salida[1]~feeder_combout\);

-- Location: FF_X22_Y20_N27
\uart_rx|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[1]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(1));

-- Location: LCCOMB_X22_Y20_N20
\componente|acumulado_aux[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[17]~feeder_combout\ = \uart_rx|salida\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|salida\(1),
	combout => \componente|acumulado_aux[17]~feeder_combout\);

-- Location: FF_X22_Y20_N21
\componente|acumulado_aux[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(17));

-- Location: LCCOMB_X22_Y20_N10
\componente|acumulado_aux[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[9]~feeder_combout\ = \componente|acumulado_aux\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(17),
	combout => \componente|acumulado_aux[9]~feeder_combout\);

-- Location: FF_X22_Y20_N11
\componente|acumulado_aux[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(9));

-- Location: LCCOMB_X30_Y12_N22
\uart_rx|registro[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|registro[1]~feeder_combout\ = \uart_rx|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(2),
	combout => \uart_rx|registro[1]~feeder_combout\);

-- Location: FF_X30_Y12_N23
\uart_rx|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|registro[1]~feeder_combout\,
	ena => \uart_rx|registro[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|registro\(1));

-- Location: LCCOMB_X22_Y20_N16
\uart_rx|salida[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[0]~feeder_combout\ = \uart_rx|registro\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(1),
	combout => \uart_rx|salida[0]~feeder_combout\);

-- Location: FF_X22_Y20_N17
\uart_rx|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[0]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(0));

-- Location: LCCOMB_X22_Y20_N22
\componente|acumulado_aux[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[16]~feeder_combout\ = \uart_rx|salida\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|salida\(0),
	combout => \componente|acumulado_aux[16]~feeder_combout\);

-- Location: FF_X22_Y20_N23
\componente|acumulado_aux[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(16));

-- Location: LCCOMB_X22_Y20_N28
\componente|acumulado_aux[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[8]~feeder_combout\ = \componente|acumulado_aux\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(16),
	combout => \componente|acumulado_aux[8]~feeder_combout\);

-- Location: FF_X22_Y20_N29
\componente|acumulado_aux[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(8));

-- Location: FF_X23_Y20_N1
\comp2|contrasenia[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(9),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(9));

-- Location: LCCOMB_X23_Y20_N24
\comp2|contrasenia[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[8]~3_combout\ = !\componente|acumulado_aux\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(8),
	combout => \comp2|contrasenia[8]~3_combout\);

-- Location: FF_X23_Y20_N25
\comp2|contrasenia[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[8]~3_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(8));

-- Location: LCCOMB_X23_Y20_N0
\comp2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~5_combout\ = (\componente|acumulado_aux\(9) & (\comp2|contrasenia\(9) & (\componente|acumulado_aux\(8) $ (\comp2|contrasenia\(8))))) # (!\componente|acumulado_aux\(9) & (!\comp2|contrasenia\(9) & (\componente|acumulado_aux\(8) $ 
-- (\comp2|contrasenia\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(9),
	datab => \componente|acumulado_aux\(8),
	datac => \comp2|contrasenia\(9),
	datad => \comp2|contrasenia\(8),
	combout => \comp2|Equal0~5_combout\);

-- Location: LCCOMB_X22_Y20_N2
\uart_rx|salida[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[2]~feeder_combout\ = \uart_rx|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(3),
	combout => \uart_rx|salida[2]~feeder_combout\);

-- Location: FF_X22_Y20_N3
\uart_rx|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[2]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(2));

-- Location: LCCOMB_X22_Y20_N24
\componente|acumulado_aux[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[18]~feeder_combout\ = \uart_rx|salida\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|salida\(2),
	combout => \componente|acumulado_aux[18]~feeder_combout\);

-- Location: FF_X22_Y20_N25
\componente|acumulado_aux[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(18));

-- Location: LCCOMB_X23_Y20_N30
\componente|acumulado_aux[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[10]~feeder_combout\ = \componente|acumulado_aux\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(18),
	combout => \componente|acumulado_aux[10]~feeder_combout\);

-- Location: FF_X23_Y20_N31
\componente|acumulado_aux[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(10));

-- Location: FF_X23_Y20_N7
\comp2|contrasenia[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(10),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(10));

-- Location: LCCOMB_X23_Y20_N20
\comp2|contrasenia[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[11]~feeder_combout\ = \componente|acumulado_aux\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(11),
	combout => \comp2|contrasenia[11]~feeder_combout\);

-- Location: FF_X23_Y20_N21
\comp2|contrasenia[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[11]~feeder_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(11));

-- Location: LCCOMB_X23_Y20_N6
\comp2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~6_combout\ = (\componente|acumulado_aux\(10) & (\comp2|contrasenia\(10) & (\componente|acumulado_aux\(11) $ (!\comp2|contrasenia\(11))))) # (!\componente|acumulado_aux\(10) & (!\comp2|contrasenia\(10) & (\componente|acumulado_aux\(11) $ 
-- (!\comp2|contrasenia\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(10),
	datab => \componente|acumulado_aux\(11),
	datac => \comp2|contrasenia\(10),
	datad => \comp2|contrasenia\(11),
	combout => \comp2|Equal0~6_combout\);

-- Location: LCCOMB_X22_Y19_N28
\uart_rx|salida[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[4]~feeder_combout\ = \uart_rx|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(5),
	combout => \uart_rx|salida[4]~feeder_combout\);

-- Location: FF_X22_Y19_N29
\uart_rx|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[4]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(4));

-- Location: LCCOMB_X22_Y19_N14
\componente|acumulado_aux[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[20]~feeder_combout\ = \uart_rx|salida\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|salida\(4),
	combout => \componente|acumulado_aux[20]~feeder_combout\);

-- Location: FF_X22_Y19_N15
\componente|acumulado_aux[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(20));

-- Location: LCCOMB_X22_Y19_N6
\componente|acumulado_aux[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[12]~feeder_combout\ = \componente|acumulado_aux\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(20),
	combout => \componente|acumulado_aux[12]~feeder_combout\);

-- Location: FF_X22_Y19_N7
\componente|acumulado_aux[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(12));

-- Location: LCCOMB_X23_Y19_N22
\comp2|contrasenia[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[12]~4_combout\ = !\componente|acumulado_aux\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(12),
	combout => \comp2|contrasenia[12]~4_combout\);

-- Location: FF_X23_Y19_N23
\comp2|contrasenia[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[12]~4_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(12));

-- Location: LCCOMB_X22_Y19_N26
\uart_rx|salida[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[5]~feeder_combout\ = \uart_rx|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(6),
	combout => \uart_rx|salida[5]~feeder_combout\);

-- Location: FF_X22_Y19_N27
\uart_rx|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[5]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(5));

-- Location: FF_X23_Y19_N1
\componente|acumulado_aux[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	asdata => \uart_rx|salida\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(21));

-- Location: LCCOMB_X23_Y19_N14
\componente|acumulado_aux[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[13]~feeder_combout\ = \componente|acumulado_aux\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(21),
	combout => \componente|acumulado_aux[13]~feeder_combout\);

-- Location: FF_X23_Y19_N15
\componente|acumulado_aux[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(13));

-- Location: LCCOMB_X23_Y19_N6
\comp2|contrasenia[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[13]~5_combout\ = !\componente|acumulado_aux\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(13),
	combout => \comp2|contrasenia[13]~5_combout\);

-- Location: FF_X23_Y19_N7
\comp2|contrasenia[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[13]~5_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(13));

-- Location: LCCOMB_X23_Y19_N4
\comp2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~7_combout\ = (\comp2|contrasenia\(12) & (!\componente|acumulado_aux\(12) & (\componente|acumulado_aux\(13) $ (\comp2|contrasenia\(13))))) # (!\comp2|contrasenia\(12) & (\componente|acumulado_aux\(12) & (\componente|acumulado_aux\(13) $ 
-- (\comp2|contrasenia\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|contrasenia\(12),
	datab => \componente|acumulado_aux\(13),
	datac => \componente|acumulado_aux\(12),
	datad => \comp2|contrasenia\(13),
	combout => \comp2|Equal0~7_combout\);

-- Location: LCCOMB_X22_Y19_N2
\uart_rx|salida[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[7]~feeder_combout\ = \uart_rx|registro\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(8),
	combout => \uart_rx|salida[7]~feeder_combout\);

-- Location: FF_X22_Y19_N3
\uart_rx|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[7]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(7));

-- Location: LCCOMB_X22_Y19_N18
\componente|acumulado_aux[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[23]~feeder_combout\ = \uart_rx|salida\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|salida\(7),
	combout => \componente|acumulado_aux[23]~feeder_combout\);

-- Location: FF_X22_Y19_N19
\componente|acumulado_aux[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(23));

-- Location: LCCOMB_X22_Y19_N16
\componente|acumulado_aux[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[15]~feeder_combout\ = \componente|acumulado_aux\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(23),
	combout => \componente|acumulado_aux[15]~feeder_combout\);

-- Location: FF_X22_Y19_N17
\componente|acumulado_aux[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(15));

-- Location: LCCOMB_X22_Y19_N24
\uart_rx|salida[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[6]~feeder_combout\ = \uart_rx|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(7),
	combout => \uart_rx|salida[6]~feeder_combout\);

-- Location: FF_X22_Y19_N25
\uart_rx|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|salida[6]~feeder_combout\,
	ena => \uart_rx|salida[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|salida\(6));

-- Location: LCCOMB_X22_Y19_N0
\componente|acumulado_aux[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[22]~feeder_combout\ = \uart_rx|salida\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|salida\(6),
	combout => \componente|acumulado_aux[22]~feeder_combout\);

-- Location: FF_X22_Y19_N1
\componente|acumulado_aux[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(22));

-- Location: LCCOMB_X23_Y19_N30
\componente|acumulado_aux[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[14]~feeder_combout\ = \componente|acumulado_aux\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(22),
	combout => \componente|acumulado_aux[14]~feeder_combout\);

-- Location: FF_X23_Y19_N31
\componente|acumulado_aux[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(14));

-- Location: FF_X23_Y19_N17
\comp2|contrasenia[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(14),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(14));

-- Location: LCCOMB_X23_Y19_N28
\comp2|contrasenia[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[15]~feeder_combout\ = \componente|acumulado_aux\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(15),
	combout => \comp2|contrasenia[15]~feeder_combout\);

-- Location: FF_X23_Y19_N29
\comp2|contrasenia[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[15]~feeder_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(15));

-- Location: LCCOMB_X23_Y19_N16
\comp2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~8_combout\ = (\componente|acumulado_aux\(15) & (\comp2|contrasenia\(15) & (\componente|acumulado_aux\(14) $ (!\comp2|contrasenia\(14))))) # (!\componente|acumulado_aux\(15) & (!\comp2|contrasenia\(15) & (\componente|acumulado_aux\(14) $ 
-- (!\comp2|contrasenia\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(15),
	datab => \componente|acumulado_aux\(14),
	datac => \comp2|contrasenia\(14),
	datad => \comp2|contrasenia\(15),
	combout => \comp2|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y20_N8
\comp2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~9_combout\ = (\comp2|Equal0~5_combout\ & (\comp2|Equal0~6_combout\ & (\comp2|Equal0~7_combout\ & \comp2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|Equal0~5_combout\,
	datab => \comp2|Equal0~6_combout\,
	datac => \comp2|Equal0~7_combout\,
	datad => \comp2|Equal0~8_combout\,
	combout => \comp2|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y20_N4
\comp2|contrasenia[16]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[16]~6_combout\ = !\componente|acumulado_aux\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(16),
	combout => \comp2|contrasenia[16]~6_combout\);

-- Location: FF_X23_Y20_N5
\comp2|contrasenia[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[16]~6_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(16));

-- Location: FF_X23_Y20_N11
\comp2|contrasenia[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(17),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(17));

-- Location: LCCOMB_X23_Y20_N10
\comp2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~10_combout\ = (\componente|acumulado_aux\(17) & (\comp2|contrasenia\(17) & (\comp2|contrasenia\(16) $ (\componente|acumulado_aux\(16))))) # (!\componente|acumulado_aux\(17) & (!\comp2|contrasenia\(17) & (\comp2|contrasenia\(16) $ 
-- (\componente|acumulado_aux\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(17),
	datab => \comp2|contrasenia\(16),
	datac => \comp2|contrasenia\(17),
	datad => \componente|acumulado_aux\(16),
	combout => \comp2|Equal0~10_combout\);

-- Location: LCCOMB_X23_Y19_N20
\comp2|contrasenia[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[20]~7_combout\ = !\componente|acumulado_aux\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(20),
	combout => \comp2|contrasenia[20]~7_combout\);

-- Location: FF_X23_Y19_N21
\comp2|contrasenia[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[20]~7_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(20));

-- Location: LCCOMB_X23_Y19_N2
\comp2|contrasenia[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[21]~8_combout\ = !\componente|acumulado_aux\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(21),
	combout => \comp2|contrasenia[21]~8_combout\);

-- Location: FF_X23_Y19_N3
\comp2|contrasenia[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[21]~8_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(21));

-- Location: LCCOMB_X23_Y19_N0
\comp2|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~12_combout\ = (\componente|acumulado_aux\(20) & (!\comp2|contrasenia\(20) & (\componente|acumulado_aux\(21) $ (\comp2|contrasenia\(21))))) # (!\componente|acumulado_aux\(20) & (\comp2|contrasenia\(20) & (\componente|acumulado_aux\(21) $ 
-- (\comp2|contrasenia\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(20),
	datab => \comp2|contrasenia\(20),
	datac => \componente|acumulado_aux\(21),
	datad => \comp2|contrasenia\(21),
	combout => \comp2|Equal0~12_combout\);

-- Location: FF_X23_Y20_N17
\comp2|contrasenia[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(18),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(18));

-- Location: LCCOMB_X23_Y20_N12
\comp2|contrasenia[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[19]~feeder_combout\ = \componente|acumulado_aux\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(19),
	combout => \comp2|contrasenia[19]~feeder_combout\);

-- Location: FF_X23_Y20_N13
\comp2|contrasenia[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[19]~feeder_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(19));

-- Location: LCCOMB_X23_Y20_N16
\comp2|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~11_combout\ = (\componente|acumulado_aux\(18) & (\comp2|contrasenia\(18) & (\componente|acumulado_aux\(19) $ (!\comp2|contrasenia\(19))))) # (!\componente|acumulado_aux\(18) & (!\comp2|contrasenia\(18) & (\componente|acumulado_aux\(19) $ 
-- (!\comp2|contrasenia\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(18),
	datab => \componente|acumulado_aux\(19),
	datac => \comp2|contrasenia\(18),
	datad => \comp2|contrasenia\(19),
	combout => \comp2|Equal0~11_combout\);

-- Location: FF_X23_Y20_N15
\comp2|contrasenia[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(22),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(22));

-- Location: LCCOMB_X23_Y20_N2
\comp2|contrasenia[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[23]~feeder_combout\ = \componente|acumulado_aux\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(23),
	combout => \comp2|contrasenia[23]~feeder_combout\);

-- Location: FF_X23_Y20_N3
\comp2|contrasenia[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[23]~feeder_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(23));

-- Location: LCCOMB_X23_Y20_N14
\comp2|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~13_combout\ = (\componente|acumulado_aux\(22) & (\comp2|contrasenia\(22) & (\componente|acumulado_aux\(23) $ (!\comp2|contrasenia\(23))))) # (!\componente|acumulado_aux\(22) & (!\comp2|contrasenia\(22) & (\componente|acumulado_aux\(23) $ 
-- (!\comp2|contrasenia\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(22),
	datab => \componente|acumulado_aux\(23),
	datac => \comp2|contrasenia\(22),
	datad => \comp2|contrasenia\(23),
	combout => \comp2|Equal0~13_combout\);

-- Location: LCCOMB_X24_Y20_N12
\comp2|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~14_combout\ = (\comp2|Equal0~10_combout\ & (\comp2|Equal0~12_combout\ & (\comp2|Equal0~11_combout\ & \comp2|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|Equal0~10_combout\,
	datab => \comp2|Equal0~12_combout\,
	datac => \comp2|Equal0~11_combout\,
	datad => \comp2|Equal0~13_combout\,
	combout => \comp2|Equal0~14_combout\);

-- Location: LCCOMB_X24_Y20_N18
\comp2|a1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|a1~0_combout\ = (\comp2|c~q\) # ((\comp2|Equal0~9_combout\ & (\comp2|Equal0~4_combout\ & \comp2|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|c~q\,
	datab => \comp2|Equal0~9_combout\,
	datac => \comp2|Equal0~4_combout\,
	datad => \comp2|Equal0~14_combout\,
	combout => \comp2|a1~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\comp2|c~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|c~feeder_combout\ = \comp2|a1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comp2|a1~0_combout\,
	combout => \comp2|c~feeder_combout\);

-- Location: FF_X24_Y20_N11
\comp2|c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|c~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|c~q\);

-- Location: FF_X23_Y20_N23
\comp2|contrasenia[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[3]~feeder_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(3));

-- Location: LCCOMB_X23_Y20_N8
\componente|acumulado_aux[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[2]~feeder_combout\ = \componente|acumulado_aux\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(10),
	combout => \componente|acumulado_aux[2]~feeder_combout\);

-- Location: FF_X23_Y20_N9
\componente|acumulado_aux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(2));

-- Location: FF_X23_Y20_N27
\comp2|contrasenia[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(2),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(2));

-- Location: LCCOMB_X23_Y20_N26
\comp2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~1_combout\ = (\comp2|contrasenia\(3) & (\componente|acumulado_aux\(3) & (\componente|acumulado_aux\(2) $ (!\comp2|contrasenia\(2))))) # (!\comp2|contrasenia\(3) & (!\componente|acumulado_aux\(3) & (\componente|acumulado_aux\(2) $ 
-- (!\comp2|contrasenia\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|contrasenia\(3),
	datab => \componente|acumulado_aux\(2),
	datac => \comp2|contrasenia\(2),
	datad => \componente|acumulado_aux\(3),
	combout => \comp2|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y20_N0
\componente|acumulado_aux[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[1]~feeder_combout\ = \componente|acumulado_aux\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(9),
	combout => \componente|acumulado_aux[1]~feeder_combout\);

-- Location: FF_X22_Y20_N1
\componente|acumulado_aux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(1));

-- Location: LCCOMB_X22_Y20_N30
\componente|acumulado_aux[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[0]~feeder_combout\ = \componente|acumulado_aux\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(8),
	combout => \componente|acumulado_aux[0]~feeder_combout\);

-- Location: FF_X22_Y20_N31
\componente|acumulado_aux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(0));

-- Location: FF_X23_Y20_N19
\comp2|contrasenia[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(1),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(1));

-- Location: LCCOMB_X23_Y20_N28
\comp2|contrasenia[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[0]~0_combout\ = !\componente|acumulado_aux\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(0),
	combout => \comp2|contrasenia[0]~0_combout\);

-- Location: FF_X23_Y20_N29
\comp2|contrasenia[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[0]~0_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(0));

-- Location: LCCOMB_X23_Y20_N18
\comp2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~0_combout\ = (\componente|acumulado_aux\(1) & (\comp2|contrasenia\(1) & (\componente|acumulado_aux\(0) $ (\comp2|contrasenia\(0))))) # (!\componente|acumulado_aux\(1) & (!\comp2|contrasenia\(1) & (\componente|acumulado_aux\(0) $ 
-- (\comp2|contrasenia\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(1),
	datab => \componente|acumulado_aux\(0),
	datac => \comp2|contrasenia\(1),
	datad => \comp2|contrasenia\(0),
	combout => \comp2|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\componente|acumulado_aux[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[7]~feeder_combout\ = \componente|acumulado_aux\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(15),
	combout => \componente|acumulado_aux[7]~feeder_combout\);

-- Location: FF_X22_Y19_N13
\componente|acumulado_aux[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(7));

-- Location: LCCOMB_X23_Y19_N18
\componente|acumulado_aux[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \componente|acumulado_aux[6]~feeder_combout\ = \componente|acumulado_aux\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(14),
	combout => \componente|acumulado_aux[6]~feeder_combout\);

-- Location: FF_X23_Y19_N19
\componente|acumulado_aux[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	d => \componente|acumulado_aux[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(6));

-- Location: FF_X23_Y19_N11
\comp2|contrasenia[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	asdata => \componente|acumulado_aux\(6),
	sload => VCC,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(6));

-- Location: LCCOMB_X23_Y19_N8
\comp2|contrasenia[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[7]~feeder_combout\ = \componente|acumulado_aux\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \componente|acumulado_aux\(7),
	combout => \comp2|contrasenia[7]~feeder_combout\);

-- Location: FF_X23_Y19_N9
\comp2|contrasenia[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[7]~feeder_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(7));

-- Location: LCCOMB_X23_Y19_N10
\comp2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~3_combout\ = (\componente|acumulado_aux\(7) & (\comp2|contrasenia\(7) & (\componente|acumulado_aux\(6) $ (!\comp2|contrasenia\(6))))) # (!\componente|acumulado_aux\(7) & (!\comp2|contrasenia\(7) & (\componente|acumulado_aux\(6) $ 
-- (!\comp2|contrasenia\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \componente|acumulado_aux\(7),
	datab => \componente|acumulado_aux\(6),
	datac => \comp2|contrasenia\(6),
	datad => \comp2|contrasenia\(7),
	combout => \comp2|Equal0~3_combout\);

-- Location: FF_X23_Y19_N5
\componente|acumulado_aux[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	asdata => \componente|acumulado_aux\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(4));

-- Location: LCCOMB_X23_Y19_N12
\comp2|contrasenia[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[4]~1_combout\ = !\componente|acumulado_aux\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(4),
	combout => \comp2|contrasenia[4]~1_combout\);

-- Location: FF_X23_Y19_N13
\comp2|contrasenia[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[4]~1_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(4));

-- Location: FF_X23_Y19_N27
\componente|acumulado_aux[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart_rx|ALT_INV_datonuevo_aux~clkctrl_outclk\,
	asdata => \componente|acumulado_aux\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \componente|acumulado_aux\(5));

-- Location: LCCOMB_X23_Y19_N24
\comp2|contrasenia[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|contrasenia[5]~2_combout\ = !\componente|acumulado_aux\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \componente|acumulado_aux\(5),
	combout => \comp2|contrasenia[5]~2_combout\);

-- Location: FF_X23_Y19_N25
\comp2|contrasenia[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|contrasenia[5]~2_combout\,
	ena => \comp2|c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|contrasenia\(5));

-- Location: LCCOMB_X23_Y19_N26
\comp2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~2_combout\ = (\comp2|contrasenia\(4) & (!\componente|acumulado_aux\(4) & (\componente|acumulado_aux\(5) $ (\comp2|contrasenia\(5))))) # (!\comp2|contrasenia\(4) & (\componente|acumulado_aux\(4) & (\componente|acumulado_aux\(5) $ 
-- (\comp2|contrasenia\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|contrasenia\(4),
	datab => \componente|acumulado_aux\(4),
	datac => \componente|acumulado_aux\(5),
	datad => \comp2|contrasenia\(5),
	combout => \comp2|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\comp2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~4_combout\ = (\comp2|Equal0~1_combout\ & (\comp2|Equal0~0_combout\ & (\comp2|Equal0~3_combout\ & \comp2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|Equal0~1_combout\,
	datab => \comp2|Equal0~0_combout\,
	datac => \comp2|Equal0~3_combout\,
	datad => \comp2|Equal0~2_combout\,
	combout => \comp2|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y20_N30
\comp2|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|Equal0~15_combout\ = (\comp2|Equal0~4_combout\ & (\comp2|Equal0~9_combout\ & \comp2|Equal0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp2|Equal0~4_combout\,
	datac => \comp2|Equal0~9_combout\,
	datad => \comp2|Equal0~14_combout\,
	combout => \comp2|Equal0~15_combout\);

-- Location: FF_X24_Y19_N1
\comp2|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[0]~32_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(0));

-- Location: LCCOMB_X24_Y19_N2
\comp2|cuenta[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[1]~34_combout\ = (\comp2|cuenta\(1) & (!\comp2|cuenta[0]~33\)) # (!\comp2|cuenta\(1) & ((\comp2|cuenta[0]~33\) # (GND)))
-- \comp2|cuenta[1]~35\ = CARRY((!\comp2|cuenta[0]~33\) # (!\comp2|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(1),
	datad => VCC,
	cin => \comp2|cuenta[0]~33\,
	combout => \comp2|cuenta[1]~34_combout\,
	cout => \comp2|cuenta[1]~35\);

-- Location: FF_X24_Y19_N3
\comp2|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[1]~34_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(1));

-- Location: LCCOMB_X24_Y19_N4
\comp2|cuenta[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[2]~36_combout\ = (\comp2|cuenta\(2) & (\comp2|cuenta[1]~35\ $ (GND))) # (!\comp2|cuenta\(2) & (!\comp2|cuenta[1]~35\ & VCC))
-- \comp2|cuenta[2]~37\ = CARRY((\comp2|cuenta\(2) & !\comp2|cuenta[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(2),
	datad => VCC,
	cin => \comp2|cuenta[1]~35\,
	combout => \comp2|cuenta[2]~36_combout\,
	cout => \comp2|cuenta[2]~37\);

-- Location: FF_X24_Y19_N5
\comp2|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[2]~36_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(2));

-- Location: LCCOMB_X24_Y19_N6
\comp2|cuenta[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[3]~38_combout\ = (\comp2|cuenta\(3) & (!\comp2|cuenta[2]~37\)) # (!\comp2|cuenta\(3) & ((\comp2|cuenta[2]~37\) # (GND)))
-- \comp2|cuenta[3]~39\ = CARRY((!\comp2|cuenta[2]~37\) # (!\comp2|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(3),
	datad => VCC,
	cin => \comp2|cuenta[2]~37\,
	combout => \comp2|cuenta[3]~38_combout\,
	cout => \comp2|cuenta[3]~39\);

-- Location: FF_X24_Y19_N7
\comp2|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[3]~38_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(3));

-- Location: LCCOMB_X24_Y19_N8
\comp2|cuenta[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[4]~40_combout\ = (\comp2|cuenta\(4) & (\comp2|cuenta[3]~39\ $ (GND))) # (!\comp2|cuenta\(4) & (!\comp2|cuenta[3]~39\ & VCC))
-- \comp2|cuenta[4]~41\ = CARRY((\comp2|cuenta\(4) & !\comp2|cuenta[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(4),
	datad => VCC,
	cin => \comp2|cuenta[3]~39\,
	combout => \comp2|cuenta[4]~40_combout\,
	cout => \comp2|cuenta[4]~41\);

-- Location: FF_X24_Y19_N9
\comp2|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[4]~40_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(4));

-- Location: LCCOMB_X24_Y19_N10
\comp2|cuenta[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[5]~42_combout\ = (\comp2|cuenta\(5) & (!\comp2|cuenta[4]~41\)) # (!\comp2|cuenta\(5) & ((\comp2|cuenta[4]~41\) # (GND)))
-- \comp2|cuenta[5]~43\ = CARRY((!\comp2|cuenta[4]~41\) # (!\comp2|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(5),
	datad => VCC,
	cin => \comp2|cuenta[4]~41\,
	combout => \comp2|cuenta[5]~42_combout\,
	cout => \comp2|cuenta[5]~43\);

-- Location: FF_X24_Y19_N11
\comp2|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[5]~42_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(5));

-- Location: LCCOMB_X24_Y19_N12
\comp2|cuenta[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[6]~44_combout\ = (\comp2|cuenta\(6) & (\comp2|cuenta[5]~43\ $ (GND))) # (!\comp2|cuenta\(6) & (!\comp2|cuenta[5]~43\ & VCC))
-- \comp2|cuenta[6]~45\ = CARRY((\comp2|cuenta\(6) & !\comp2|cuenta[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(6),
	datad => VCC,
	cin => \comp2|cuenta[5]~43\,
	combout => \comp2|cuenta[6]~44_combout\,
	cout => \comp2|cuenta[6]~45\);

-- Location: FF_X24_Y19_N13
\comp2|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[6]~44_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(6));

-- Location: LCCOMB_X24_Y19_N14
\comp2|cuenta[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[7]~46_combout\ = (\comp2|cuenta\(7) & (!\comp2|cuenta[6]~45\)) # (!\comp2|cuenta\(7) & ((\comp2|cuenta[6]~45\) # (GND)))
-- \comp2|cuenta[7]~47\ = CARRY((!\comp2|cuenta[6]~45\) # (!\comp2|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(7),
	datad => VCC,
	cin => \comp2|cuenta[6]~45\,
	combout => \comp2|cuenta[7]~46_combout\,
	cout => \comp2|cuenta[7]~47\);

-- Location: FF_X24_Y19_N15
\comp2|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[7]~46_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(7));

-- Location: LCCOMB_X24_Y19_N16
\comp2|cuenta[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[8]~48_combout\ = (\comp2|cuenta\(8) & (\comp2|cuenta[7]~47\ $ (GND))) # (!\comp2|cuenta\(8) & (!\comp2|cuenta[7]~47\ & VCC))
-- \comp2|cuenta[8]~49\ = CARRY((\comp2|cuenta\(8) & !\comp2|cuenta[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(8),
	datad => VCC,
	cin => \comp2|cuenta[7]~47\,
	combout => \comp2|cuenta[8]~48_combout\,
	cout => \comp2|cuenta[8]~49\);

-- Location: FF_X24_Y19_N17
\comp2|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[8]~48_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(8));

-- Location: LCCOMB_X24_Y19_N18
\comp2|cuenta[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[9]~50_combout\ = (\comp2|cuenta\(9) & (!\comp2|cuenta[8]~49\)) # (!\comp2|cuenta\(9) & ((\comp2|cuenta[8]~49\) # (GND)))
-- \comp2|cuenta[9]~51\ = CARRY((!\comp2|cuenta[8]~49\) # (!\comp2|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(9),
	datad => VCC,
	cin => \comp2|cuenta[8]~49\,
	combout => \comp2|cuenta[9]~50_combout\,
	cout => \comp2|cuenta[9]~51\);

-- Location: FF_X24_Y19_N19
\comp2|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[9]~50_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(9));

-- Location: LCCOMB_X24_Y19_N20
\comp2|cuenta[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[10]~52_combout\ = (\comp2|cuenta\(10) & (\comp2|cuenta[9]~51\ $ (GND))) # (!\comp2|cuenta\(10) & (!\comp2|cuenta[9]~51\ & VCC))
-- \comp2|cuenta[10]~53\ = CARRY((\comp2|cuenta\(10) & !\comp2|cuenta[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(10),
	datad => VCC,
	cin => \comp2|cuenta[9]~51\,
	combout => \comp2|cuenta[10]~52_combout\,
	cout => \comp2|cuenta[10]~53\);

-- Location: FF_X24_Y19_N21
\comp2|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[10]~52_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(10));

-- Location: LCCOMB_X24_Y19_N22
\comp2|cuenta[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[11]~54_combout\ = (\comp2|cuenta\(11) & (!\comp2|cuenta[10]~53\)) # (!\comp2|cuenta\(11) & ((\comp2|cuenta[10]~53\) # (GND)))
-- \comp2|cuenta[11]~55\ = CARRY((!\comp2|cuenta[10]~53\) # (!\comp2|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(11),
	datad => VCC,
	cin => \comp2|cuenta[10]~53\,
	combout => \comp2|cuenta[11]~54_combout\,
	cout => \comp2|cuenta[11]~55\);

-- Location: FF_X24_Y19_N23
\comp2|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[11]~54_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(11));

-- Location: LCCOMB_X24_Y19_N24
\comp2|cuenta[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[12]~56_combout\ = (\comp2|cuenta\(12) & (\comp2|cuenta[11]~55\ $ (GND))) # (!\comp2|cuenta\(12) & (!\comp2|cuenta[11]~55\ & VCC))
-- \comp2|cuenta[12]~57\ = CARRY((\comp2|cuenta\(12) & !\comp2|cuenta[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(12),
	datad => VCC,
	cin => \comp2|cuenta[11]~55\,
	combout => \comp2|cuenta[12]~56_combout\,
	cout => \comp2|cuenta[12]~57\);

-- Location: FF_X24_Y19_N25
\comp2|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[12]~56_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(12));

-- Location: LCCOMB_X24_Y19_N26
\comp2|cuenta[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[13]~58_combout\ = (\comp2|cuenta\(13) & (!\comp2|cuenta[12]~57\)) # (!\comp2|cuenta\(13) & ((\comp2|cuenta[12]~57\) # (GND)))
-- \comp2|cuenta[13]~59\ = CARRY((!\comp2|cuenta[12]~57\) # (!\comp2|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(13),
	datad => VCC,
	cin => \comp2|cuenta[12]~57\,
	combout => \comp2|cuenta[13]~58_combout\,
	cout => \comp2|cuenta[13]~59\);

-- Location: FF_X24_Y19_N27
\comp2|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[13]~58_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(13));

-- Location: LCCOMB_X24_Y19_N28
\comp2|cuenta[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[14]~60_combout\ = (\comp2|cuenta\(14) & (\comp2|cuenta[13]~59\ $ (GND))) # (!\comp2|cuenta\(14) & (!\comp2|cuenta[13]~59\ & VCC))
-- \comp2|cuenta[14]~61\ = CARRY((\comp2|cuenta\(14) & !\comp2|cuenta[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(14),
	datad => VCC,
	cin => \comp2|cuenta[13]~59\,
	combout => \comp2|cuenta[14]~60_combout\,
	cout => \comp2|cuenta[14]~61\);

-- Location: FF_X24_Y19_N29
\comp2|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[14]~60_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(14));

-- Location: LCCOMB_X24_Y19_N30
\comp2|cuenta[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[15]~62_combout\ = (\comp2|cuenta\(15) & (!\comp2|cuenta[14]~61\)) # (!\comp2|cuenta\(15) & ((\comp2|cuenta[14]~61\) # (GND)))
-- \comp2|cuenta[15]~63\ = CARRY((!\comp2|cuenta[14]~61\) # (!\comp2|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(15),
	datad => VCC,
	cin => \comp2|cuenta[14]~61\,
	combout => \comp2|cuenta[15]~62_combout\,
	cout => \comp2|cuenta[15]~63\);

-- Location: FF_X24_Y19_N31
\comp2|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[15]~62_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(15));

-- Location: LCCOMB_X24_Y18_N0
\comp2|cuenta[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[16]~64_combout\ = (\comp2|cuenta\(16) & (\comp2|cuenta[15]~63\ $ (GND))) # (!\comp2|cuenta\(16) & (!\comp2|cuenta[15]~63\ & VCC))
-- \comp2|cuenta[16]~65\ = CARRY((\comp2|cuenta\(16) & !\comp2|cuenta[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(16),
	datad => VCC,
	cin => \comp2|cuenta[15]~63\,
	combout => \comp2|cuenta[16]~64_combout\,
	cout => \comp2|cuenta[16]~65\);

-- Location: FF_X24_Y18_N1
\comp2|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[16]~64_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(16));

-- Location: LCCOMB_X24_Y18_N2
\comp2|cuenta[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[17]~66_combout\ = (\comp2|cuenta\(17) & (!\comp2|cuenta[16]~65\)) # (!\comp2|cuenta\(17) & ((\comp2|cuenta[16]~65\) # (GND)))
-- \comp2|cuenta[17]~67\ = CARRY((!\comp2|cuenta[16]~65\) # (!\comp2|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(17),
	datad => VCC,
	cin => \comp2|cuenta[16]~65\,
	combout => \comp2|cuenta[17]~66_combout\,
	cout => \comp2|cuenta[17]~67\);

-- Location: FF_X24_Y18_N3
\comp2|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[17]~66_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(17));

-- Location: LCCOMB_X24_Y18_N4
\comp2|cuenta[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[18]~68_combout\ = (\comp2|cuenta\(18) & (\comp2|cuenta[17]~67\ $ (GND))) # (!\comp2|cuenta\(18) & (!\comp2|cuenta[17]~67\ & VCC))
-- \comp2|cuenta[18]~69\ = CARRY((\comp2|cuenta\(18) & !\comp2|cuenta[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(18),
	datad => VCC,
	cin => \comp2|cuenta[17]~67\,
	combout => \comp2|cuenta[18]~68_combout\,
	cout => \comp2|cuenta[18]~69\);

-- Location: FF_X24_Y18_N5
\comp2|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[18]~68_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(18));

-- Location: LCCOMB_X24_Y18_N6
\comp2|cuenta[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[19]~70_combout\ = (\comp2|cuenta\(19) & (!\comp2|cuenta[18]~69\)) # (!\comp2|cuenta\(19) & ((\comp2|cuenta[18]~69\) # (GND)))
-- \comp2|cuenta[19]~71\ = CARRY((!\comp2|cuenta[18]~69\) # (!\comp2|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(19),
	datad => VCC,
	cin => \comp2|cuenta[18]~69\,
	combout => \comp2|cuenta[19]~70_combout\,
	cout => \comp2|cuenta[19]~71\);

-- Location: FF_X24_Y18_N7
\comp2|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[19]~70_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(19));

-- Location: LCCOMB_X24_Y18_N8
\comp2|cuenta[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[20]~72_combout\ = (\comp2|cuenta\(20) & (\comp2|cuenta[19]~71\ $ (GND))) # (!\comp2|cuenta\(20) & (!\comp2|cuenta[19]~71\ & VCC))
-- \comp2|cuenta[20]~73\ = CARRY((\comp2|cuenta\(20) & !\comp2|cuenta[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(20),
	datad => VCC,
	cin => \comp2|cuenta[19]~71\,
	combout => \comp2|cuenta[20]~72_combout\,
	cout => \comp2|cuenta[20]~73\);

-- Location: FF_X24_Y18_N9
\comp2|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[20]~72_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(20));

-- Location: LCCOMB_X24_Y18_N10
\comp2|cuenta[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[21]~74_combout\ = (\comp2|cuenta\(21) & (!\comp2|cuenta[20]~73\)) # (!\comp2|cuenta\(21) & ((\comp2|cuenta[20]~73\) # (GND)))
-- \comp2|cuenta[21]~75\ = CARRY((!\comp2|cuenta[20]~73\) # (!\comp2|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(21),
	datad => VCC,
	cin => \comp2|cuenta[20]~73\,
	combout => \comp2|cuenta[21]~74_combout\,
	cout => \comp2|cuenta[21]~75\);

-- Location: FF_X24_Y18_N11
\comp2|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[21]~74_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(21));

-- Location: LCCOMB_X24_Y18_N12
\comp2|cuenta[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[22]~76_combout\ = (\comp2|cuenta\(22) & (\comp2|cuenta[21]~75\ $ (GND))) # (!\comp2|cuenta\(22) & (!\comp2|cuenta[21]~75\ & VCC))
-- \comp2|cuenta[22]~77\ = CARRY((\comp2|cuenta\(22) & !\comp2|cuenta[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(22),
	datad => VCC,
	cin => \comp2|cuenta[21]~75\,
	combout => \comp2|cuenta[22]~76_combout\,
	cout => \comp2|cuenta[22]~77\);

-- Location: FF_X24_Y18_N13
\comp2|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[22]~76_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(22));

-- Location: LCCOMB_X24_Y18_N14
\comp2|cuenta[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[23]~78_combout\ = (\comp2|cuenta\(23) & (!\comp2|cuenta[22]~77\)) # (!\comp2|cuenta\(23) & ((\comp2|cuenta[22]~77\) # (GND)))
-- \comp2|cuenta[23]~79\ = CARRY((!\comp2|cuenta[22]~77\) # (!\comp2|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(23),
	datad => VCC,
	cin => \comp2|cuenta[22]~77\,
	combout => \comp2|cuenta[23]~78_combout\,
	cout => \comp2|cuenta[23]~79\);

-- Location: FF_X24_Y18_N15
\comp2|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[23]~78_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(23));

-- Location: LCCOMB_X24_Y18_N16
\comp2|cuenta[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[24]~80_combout\ = (\comp2|cuenta\(24) & (\comp2|cuenta[23]~79\ $ (GND))) # (!\comp2|cuenta\(24) & (!\comp2|cuenta[23]~79\ & VCC))
-- \comp2|cuenta[24]~81\ = CARRY((\comp2|cuenta\(24) & !\comp2|cuenta[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(24),
	datad => VCC,
	cin => \comp2|cuenta[23]~79\,
	combout => \comp2|cuenta[24]~80_combout\,
	cout => \comp2|cuenta[24]~81\);

-- Location: FF_X24_Y18_N17
\comp2|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[24]~80_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(24));

-- Location: LCCOMB_X24_Y18_N18
\comp2|cuenta[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[25]~82_combout\ = (\comp2|cuenta\(25) & (!\comp2|cuenta[24]~81\)) # (!\comp2|cuenta\(25) & ((\comp2|cuenta[24]~81\) # (GND)))
-- \comp2|cuenta[25]~83\ = CARRY((!\comp2|cuenta[24]~81\) # (!\comp2|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(25),
	datad => VCC,
	cin => \comp2|cuenta[24]~81\,
	combout => \comp2|cuenta[25]~82_combout\,
	cout => \comp2|cuenta[25]~83\);

-- Location: FF_X24_Y18_N19
\comp2|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[25]~82_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(25));

-- Location: LCCOMB_X24_Y18_N20
\comp2|cuenta[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[26]~84_combout\ = (\comp2|cuenta\(26) & (\comp2|cuenta[25]~83\ $ (GND))) # (!\comp2|cuenta\(26) & (!\comp2|cuenta[25]~83\ & VCC))
-- \comp2|cuenta[26]~85\ = CARRY((\comp2|cuenta\(26) & !\comp2|cuenta[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(26),
	datad => VCC,
	cin => \comp2|cuenta[25]~83\,
	combout => \comp2|cuenta[26]~84_combout\,
	cout => \comp2|cuenta[26]~85\);

-- Location: FF_X24_Y18_N21
\comp2|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[26]~84_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(26));

-- Location: LCCOMB_X24_Y18_N22
\comp2|cuenta[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[27]~86_combout\ = (\comp2|cuenta\(27) & (!\comp2|cuenta[26]~85\)) # (!\comp2|cuenta\(27) & ((\comp2|cuenta[26]~85\) # (GND)))
-- \comp2|cuenta[27]~87\ = CARRY((!\comp2|cuenta[26]~85\) # (!\comp2|cuenta\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(27),
	datad => VCC,
	cin => \comp2|cuenta[26]~85\,
	combout => \comp2|cuenta[27]~86_combout\,
	cout => \comp2|cuenta[27]~87\);

-- Location: FF_X24_Y18_N23
\comp2|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[27]~86_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(27));

-- Location: LCCOMB_X24_Y18_N24
\comp2|cuenta[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[28]~88_combout\ = (\comp2|cuenta\(28) & (\comp2|cuenta[27]~87\ $ (GND))) # (!\comp2|cuenta\(28) & (!\comp2|cuenta[27]~87\ & VCC))
-- \comp2|cuenta[28]~89\ = CARRY((\comp2|cuenta\(28) & !\comp2|cuenta[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(28),
	datad => VCC,
	cin => \comp2|cuenta[27]~87\,
	combout => \comp2|cuenta[28]~88_combout\,
	cout => \comp2|cuenta[28]~89\);

-- Location: FF_X24_Y18_N25
\comp2|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[28]~88_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(28));

-- Location: LCCOMB_X24_Y18_N26
\comp2|cuenta[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[29]~90_combout\ = (\comp2|cuenta\(29) & (!\comp2|cuenta[28]~89\)) # (!\comp2|cuenta\(29) & ((\comp2|cuenta[28]~89\) # (GND)))
-- \comp2|cuenta[29]~91\ = CARRY((!\comp2|cuenta[28]~89\) # (!\comp2|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(29),
	datad => VCC,
	cin => \comp2|cuenta[28]~89\,
	combout => \comp2|cuenta[29]~90_combout\,
	cout => \comp2|cuenta[29]~91\);

-- Location: FF_X24_Y18_N27
\comp2|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[29]~90_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(29));

-- Location: LCCOMB_X24_Y18_N28
\comp2|cuenta[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[30]~92_combout\ = (\comp2|cuenta\(30) & (\comp2|cuenta[29]~91\ $ (GND))) # (!\comp2|cuenta\(30) & (!\comp2|cuenta[29]~91\ & VCC))
-- \comp2|cuenta[30]~93\ = CARRY((\comp2|cuenta\(30) & !\comp2|cuenta[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta\(30),
	datad => VCC,
	cin => \comp2|cuenta[29]~91\,
	combout => \comp2|cuenta[30]~92_combout\,
	cout => \comp2|cuenta[30]~93\);

-- Location: FF_X24_Y18_N29
\comp2|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[30]~92_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(30));

-- Location: LCCOMB_X24_Y18_N30
\comp2|cuenta[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta[31]~94_combout\ = \comp2|cuenta\(31) $ (\comp2|cuenta[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(31),
	cin => \comp2|cuenta[30]~93\,
	combout => \comp2|cuenta[31]~94_combout\);

-- Location: FF_X24_Y18_N31
\comp2|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta[31]~94_combout\,
	sclr => \comp2|Equal0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta\(31));

-- Location: LCCOMB_X23_Y18_N12
\comp2|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~5_combout\ = (!\comp2|cuenta\(18) & (!\comp2|cuenta\(16) & (!\comp2|cuenta\(17) & !\comp2|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(18),
	datab => \comp2|cuenta\(16),
	datac => \comp2|cuenta\(17),
	datad => \comp2|cuenta\(19),
	combout => \comp2|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y18_N10
\comp2|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~6_combout\ = (!\comp2|cuenta\(20) & (!\comp2|cuenta\(23) & (!\comp2|cuenta\(22) & !\comp2|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(20),
	datab => \comp2|cuenta\(23),
	datac => \comp2|cuenta\(22),
	datad => \comp2|cuenta\(21),
	combout => \comp2|LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y18_N0
\comp2|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~7_combout\ = (!\comp2|cuenta\(26) & (!\comp2|cuenta\(25) & (!\comp2|cuenta\(27) & !\comp2|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(26),
	datab => \comp2|cuenta\(25),
	datac => \comp2|cuenta\(27),
	datad => \comp2|cuenta\(24),
	combout => \comp2|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y20_N8
\comp2|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~8_combout\ = (!\comp2|cuenta\(28) & (!\comp2|cuenta\(30) & (!\comp2|cuenta\(29) & \comp2|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(28),
	datab => \comp2|cuenta\(30),
	datac => \comp2|cuenta\(29),
	datad => \comp2|LessThan0~7_combout\,
	combout => \comp2|LessThan0~8_combout\);

-- Location: LCCOMB_X21_Y19_N6
\comp2|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~3_combout\ = (!\comp2|cuenta\(14) & (!\comp2|cuenta\(13) & (!\comp2|cuenta\(12) & !\comp2|cuenta\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(14),
	datab => \comp2|cuenta\(13),
	datac => \comp2|cuenta\(12),
	datad => \comp2|cuenta\(15),
	combout => \comp2|LessThan0~3_combout\);

-- Location: LCCOMB_X21_Y19_N0
\comp2|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~2_combout\ = (!\comp2|cuenta\(8) & (!\comp2|cuenta\(9) & (!\comp2|cuenta\(10) & !\comp2|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(8),
	datab => \comp2|cuenta\(9),
	datac => \comp2|cuenta\(10),
	datad => \comp2|cuenta\(11),
	combout => \comp2|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y19_N2
\comp2|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~1_combout\ = (!\comp2|cuenta\(6) & (!\comp2|cuenta\(4) & (!\comp2|cuenta\(5) & !\comp2|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(6),
	datab => \comp2|cuenta\(4),
	datac => \comp2|cuenta\(5),
	datad => \comp2|cuenta\(7),
	combout => \comp2|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y19_N16
\comp2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~0_combout\ = (!\comp2|cuenta\(3) & (!\comp2|cuenta\(2) & ((!\comp2|cuenta\(1)) # (!\comp2|cuenta\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(3),
	datab => \comp2|cuenta\(0),
	datac => \comp2|cuenta\(1),
	datad => \comp2|cuenta\(2),
	combout => \comp2|LessThan0~0_combout\);

-- Location: LCCOMB_X21_Y20_N28
\comp2|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~4_combout\ = (\comp2|LessThan0~3_combout\ & (\comp2|LessThan0~2_combout\ & (\comp2|LessThan0~1_combout\ & \comp2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|LessThan0~3_combout\,
	datab => \comp2|LessThan0~2_combout\,
	datac => \comp2|LessThan0~1_combout\,
	datad => \comp2|LessThan0~0_combout\,
	combout => \comp2|LessThan0~4_combout\);

-- Location: LCCOMB_X21_Y20_N18
\comp2|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan0~9_combout\ = (\comp2|LessThan0~5_combout\ & (\comp2|LessThan0~6_combout\ & (\comp2|LessThan0~8_combout\ & \comp2|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|LessThan0~5_combout\,
	datab => \comp2|LessThan0~6_combout\,
	datac => \comp2|LessThan0~8_combout\,
	datad => \comp2|LessThan0~4_combout\,
	combout => \comp2|LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y20_N12
\comp2|a~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|a~0_combout\ = (!\comp2|Equal0~15_combout\ & ((\comp2|a~q\) # ((!\comp2|cuenta\(31) & !\comp2|LessThan0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta\(31),
	datab => \comp2|Equal0~15_combout\,
	datac => \comp2|a~q\,
	datad => \comp2|LessThan0~9_combout\,
	combout => \comp2|a~0_combout\);

-- Location: FF_X21_Y20_N13
\comp2|a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~inputclkctrl_outclk\,
	d => \comp2|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|a~q\);

-- Location: LCCOMB_X25_Y20_N0
\comp2|cuenta1[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[0]~32_combout\ = \comp2|cuenta1\(0) $ (VCC)
-- \comp2|cuenta1[0]~33\ = CARRY(\comp2|cuenta1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(0),
	datad => VCC,
	combout => \comp2|cuenta1[0]~32_combout\,
	cout => \comp2|cuenta1[0]~33\);

-- Location: LCCOMB_X24_Y20_N14
\comp2|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|process_1~0_combout\ = (!\comp2|c~q\ & (\comp2|Equal0~9_combout\ & (\comp2|Equal0~4_combout\ & \comp2|Equal0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|c~q\,
	datab => \comp2|Equal0~9_combout\,
	datac => \comp2|Equal0~4_combout\,
	datad => \comp2|Equal0~14_combout\,
	combout => \comp2|process_1~0_combout\);

-- Location: FF_X25_Y20_N1
\comp2|cuenta1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[0]~32_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(0));

-- Location: LCCOMB_X25_Y20_N2
\comp2|cuenta1[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[1]~34_combout\ = (\comp2|cuenta1\(1) & (!\comp2|cuenta1[0]~33\)) # (!\comp2|cuenta1\(1) & ((\comp2|cuenta1[0]~33\) # (GND)))
-- \comp2|cuenta1[1]~35\ = CARRY((!\comp2|cuenta1[0]~33\) # (!\comp2|cuenta1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(1),
	datad => VCC,
	cin => \comp2|cuenta1[0]~33\,
	combout => \comp2|cuenta1[1]~34_combout\,
	cout => \comp2|cuenta1[1]~35\);

-- Location: FF_X25_Y20_N3
\comp2|cuenta1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[1]~34_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(1));

-- Location: LCCOMB_X25_Y20_N4
\comp2|cuenta1[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[2]~36_combout\ = (\comp2|cuenta1\(2) & (\comp2|cuenta1[1]~35\ $ (GND))) # (!\comp2|cuenta1\(2) & (!\comp2|cuenta1[1]~35\ & VCC))
-- \comp2|cuenta1[2]~37\ = CARRY((\comp2|cuenta1\(2) & !\comp2|cuenta1[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(2),
	datad => VCC,
	cin => \comp2|cuenta1[1]~35\,
	combout => \comp2|cuenta1[2]~36_combout\,
	cout => \comp2|cuenta1[2]~37\);

-- Location: FF_X25_Y20_N5
\comp2|cuenta1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[2]~36_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(2));

-- Location: LCCOMB_X25_Y20_N6
\comp2|cuenta1[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[3]~38_combout\ = (\comp2|cuenta1\(3) & (!\comp2|cuenta1[2]~37\)) # (!\comp2|cuenta1\(3) & ((\comp2|cuenta1[2]~37\) # (GND)))
-- \comp2|cuenta1[3]~39\ = CARRY((!\comp2|cuenta1[2]~37\) # (!\comp2|cuenta1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(3),
	datad => VCC,
	cin => \comp2|cuenta1[2]~37\,
	combout => \comp2|cuenta1[3]~38_combout\,
	cout => \comp2|cuenta1[3]~39\);

-- Location: FF_X25_Y20_N7
\comp2|cuenta1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[3]~38_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(3));

-- Location: LCCOMB_X25_Y20_N8
\comp2|cuenta1[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[4]~40_combout\ = (\comp2|cuenta1\(4) & (\comp2|cuenta1[3]~39\ $ (GND))) # (!\comp2|cuenta1\(4) & (!\comp2|cuenta1[3]~39\ & VCC))
-- \comp2|cuenta1[4]~41\ = CARRY((\comp2|cuenta1\(4) & !\comp2|cuenta1[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(4),
	datad => VCC,
	cin => \comp2|cuenta1[3]~39\,
	combout => \comp2|cuenta1[4]~40_combout\,
	cout => \comp2|cuenta1[4]~41\);

-- Location: FF_X25_Y20_N9
\comp2|cuenta1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[4]~40_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(4));

-- Location: LCCOMB_X25_Y20_N10
\comp2|cuenta1[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[5]~42_combout\ = (\comp2|cuenta1\(5) & (!\comp2|cuenta1[4]~41\)) # (!\comp2|cuenta1\(5) & ((\comp2|cuenta1[4]~41\) # (GND)))
-- \comp2|cuenta1[5]~43\ = CARRY((!\comp2|cuenta1[4]~41\) # (!\comp2|cuenta1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(5),
	datad => VCC,
	cin => \comp2|cuenta1[4]~41\,
	combout => \comp2|cuenta1[5]~42_combout\,
	cout => \comp2|cuenta1[5]~43\);

-- Location: FF_X25_Y20_N11
\comp2|cuenta1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[5]~42_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(5));

-- Location: LCCOMB_X25_Y20_N12
\comp2|cuenta1[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[6]~44_combout\ = (\comp2|cuenta1\(6) & (\comp2|cuenta1[5]~43\ $ (GND))) # (!\comp2|cuenta1\(6) & (!\comp2|cuenta1[5]~43\ & VCC))
-- \comp2|cuenta1[6]~45\ = CARRY((\comp2|cuenta1\(6) & !\comp2|cuenta1[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(6),
	datad => VCC,
	cin => \comp2|cuenta1[5]~43\,
	combout => \comp2|cuenta1[6]~44_combout\,
	cout => \comp2|cuenta1[6]~45\);

-- Location: FF_X25_Y20_N13
\comp2|cuenta1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[6]~44_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(6));

-- Location: LCCOMB_X25_Y20_N14
\comp2|cuenta1[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[7]~46_combout\ = (\comp2|cuenta1\(7) & (!\comp2|cuenta1[6]~45\)) # (!\comp2|cuenta1\(7) & ((\comp2|cuenta1[6]~45\) # (GND)))
-- \comp2|cuenta1[7]~47\ = CARRY((!\comp2|cuenta1[6]~45\) # (!\comp2|cuenta1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(7),
	datad => VCC,
	cin => \comp2|cuenta1[6]~45\,
	combout => \comp2|cuenta1[7]~46_combout\,
	cout => \comp2|cuenta1[7]~47\);

-- Location: FF_X25_Y20_N15
\comp2|cuenta1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[7]~46_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(7));

-- Location: LCCOMB_X25_Y20_N16
\comp2|cuenta1[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[8]~48_combout\ = (\comp2|cuenta1\(8) & (\comp2|cuenta1[7]~47\ $ (GND))) # (!\comp2|cuenta1\(8) & (!\comp2|cuenta1[7]~47\ & VCC))
-- \comp2|cuenta1[8]~49\ = CARRY((\comp2|cuenta1\(8) & !\comp2|cuenta1[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(8),
	datad => VCC,
	cin => \comp2|cuenta1[7]~47\,
	combout => \comp2|cuenta1[8]~48_combout\,
	cout => \comp2|cuenta1[8]~49\);

-- Location: FF_X25_Y20_N17
\comp2|cuenta1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[8]~48_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(8));

-- Location: LCCOMB_X25_Y20_N18
\comp2|cuenta1[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[9]~50_combout\ = (\comp2|cuenta1\(9) & (!\comp2|cuenta1[8]~49\)) # (!\comp2|cuenta1\(9) & ((\comp2|cuenta1[8]~49\) # (GND)))
-- \comp2|cuenta1[9]~51\ = CARRY((!\comp2|cuenta1[8]~49\) # (!\comp2|cuenta1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(9),
	datad => VCC,
	cin => \comp2|cuenta1[8]~49\,
	combout => \comp2|cuenta1[9]~50_combout\,
	cout => \comp2|cuenta1[9]~51\);

-- Location: FF_X25_Y20_N19
\comp2|cuenta1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[9]~50_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(9));

-- Location: LCCOMB_X25_Y20_N20
\comp2|cuenta1[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[10]~52_combout\ = (\comp2|cuenta1\(10) & (\comp2|cuenta1[9]~51\ $ (GND))) # (!\comp2|cuenta1\(10) & (!\comp2|cuenta1[9]~51\ & VCC))
-- \comp2|cuenta1[10]~53\ = CARRY((\comp2|cuenta1\(10) & !\comp2|cuenta1[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(10),
	datad => VCC,
	cin => \comp2|cuenta1[9]~51\,
	combout => \comp2|cuenta1[10]~52_combout\,
	cout => \comp2|cuenta1[10]~53\);

-- Location: FF_X25_Y20_N21
\comp2|cuenta1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[10]~52_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(10));

-- Location: LCCOMB_X25_Y20_N22
\comp2|cuenta1[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[11]~54_combout\ = (\comp2|cuenta1\(11) & (!\comp2|cuenta1[10]~53\)) # (!\comp2|cuenta1\(11) & ((\comp2|cuenta1[10]~53\) # (GND)))
-- \comp2|cuenta1[11]~55\ = CARRY((!\comp2|cuenta1[10]~53\) # (!\comp2|cuenta1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(11),
	datad => VCC,
	cin => \comp2|cuenta1[10]~53\,
	combout => \comp2|cuenta1[11]~54_combout\,
	cout => \comp2|cuenta1[11]~55\);

-- Location: FF_X25_Y20_N23
\comp2|cuenta1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[11]~54_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(11));

-- Location: LCCOMB_X25_Y20_N24
\comp2|cuenta1[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[12]~56_combout\ = (\comp2|cuenta1\(12) & (\comp2|cuenta1[11]~55\ $ (GND))) # (!\comp2|cuenta1\(12) & (!\comp2|cuenta1[11]~55\ & VCC))
-- \comp2|cuenta1[12]~57\ = CARRY((\comp2|cuenta1\(12) & !\comp2|cuenta1[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(12),
	datad => VCC,
	cin => \comp2|cuenta1[11]~55\,
	combout => \comp2|cuenta1[12]~56_combout\,
	cout => \comp2|cuenta1[12]~57\);

-- Location: FF_X25_Y20_N25
\comp2|cuenta1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[12]~56_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(12));

-- Location: LCCOMB_X25_Y20_N26
\comp2|cuenta1[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[13]~58_combout\ = (\comp2|cuenta1\(13) & (!\comp2|cuenta1[12]~57\)) # (!\comp2|cuenta1\(13) & ((\comp2|cuenta1[12]~57\) # (GND)))
-- \comp2|cuenta1[13]~59\ = CARRY((!\comp2|cuenta1[12]~57\) # (!\comp2|cuenta1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(13),
	datad => VCC,
	cin => \comp2|cuenta1[12]~57\,
	combout => \comp2|cuenta1[13]~58_combout\,
	cout => \comp2|cuenta1[13]~59\);

-- Location: FF_X25_Y20_N27
\comp2|cuenta1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[13]~58_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(13));

-- Location: LCCOMB_X25_Y20_N28
\comp2|cuenta1[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[14]~60_combout\ = (\comp2|cuenta1\(14) & (\comp2|cuenta1[13]~59\ $ (GND))) # (!\comp2|cuenta1\(14) & (!\comp2|cuenta1[13]~59\ & VCC))
-- \comp2|cuenta1[14]~61\ = CARRY((\comp2|cuenta1\(14) & !\comp2|cuenta1[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(14),
	datad => VCC,
	cin => \comp2|cuenta1[13]~59\,
	combout => \comp2|cuenta1[14]~60_combout\,
	cout => \comp2|cuenta1[14]~61\);

-- Location: FF_X25_Y20_N29
\comp2|cuenta1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[14]~60_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(14));

-- Location: LCCOMB_X25_Y20_N30
\comp2|cuenta1[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[15]~62_combout\ = (\comp2|cuenta1\(15) & (!\comp2|cuenta1[14]~61\)) # (!\comp2|cuenta1\(15) & ((\comp2|cuenta1[14]~61\) # (GND)))
-- \comp2|cuenta1[15]~63\ = CARRY((!\comp2|cuenta1[14]~61\) # (!\comp2|cuenta1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(15),
	datad => VCC,
	cin => \comp2|cuenta1[14]~61\,
	combout => \comp2|cuenta1[15]~62_combout\,
	cout => \comp2|cuenta1[15]~63\);

-- Location: FF_X25_Y20_N31
\comp2|cuenta1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[15]~62_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(15));

-- Location: LCCOMB_X25_Y19_N0
\comp2|cuenta1[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[16]~64_combout\ = (\comp2|cuenta1\(16) & (\comp2|cuenta1[15]~63\ $ (GND))) # (!\comp2|cuenta1\(16) & (!\comp2|cuenta1[15]~63\ & VCC))
-- \comp2|cuenta1[16]~65\ = CARRY((\comp2|cuenta1\(16) & !\comp2|cuenta1[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(16),
	datad => VCC,
	cin => \comp2|cuenta1[15]~63\,
	combout => \comp2|cuenta1[16]~64_combout\,
	cout => \comp2|cuenta1[16]~65\);

-- Location: FF_X25_Y19_N1
\comp2|cuenta1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[16]~64_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(16));

-- Location: LCCOMB_X25_Y19_N2
\comp2|cuenta1[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[17]~66_combout\ = (\comp2|cuenta1\(17) & (!\comp2|cuenta1[16]~65\)) # (!\comp2|cuenta1\(17) & ((\comp2|cuenta1[16]~65\) # (GND)))
-- \comp2|cuenta1[17]~67\ = CARRY((!\comp2|cuenta1[16]~65\) # (!\comp2|cuenta1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(17),
	datad => VCC,
	cin => \comp2|cuenta1[16]~65\,
	combout => \comp2|cuenta1[17]~66_combout\,
	cout => \comp2|cuenta1[17]~67\);

-- Location: FF_X25_Y19_N3
\comp2|cuenta1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[17]~66_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(17));

-- Location: LCCOMB_X25_Y19_N4
\comp2|cuenta1[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[18]~68_combout\ = (\comp2|cuenta1\(18) & (\comp2|cuenta1[17]~67\ $ (GND))) # (!\comp2|cuenta1\(18) & (!\comp2|cuenta1[17]~67\ & VCC))
-- \comp2|cuenta1[18]~69\ = CARRY((\comp2|cuenta1\(18) & !\comp2|cuenta1[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(18),
	datad => VCC,
	cin => \comp2|cuenta1[17]~67\,
	combout => \comp2|cuenta1[18]~68_combout\,
	cout => \comp2|cuenta1[18]~69\);

-- Location: FF_X25_Y19_N5
\comp2|cuenta1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[18]~68_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(18));

-- Location: LCCOMB_X25_Y19_N6
\comp2|cuenta1[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[19]~70_combout\ = (\comp2|cuenta1\(19) & (!\comp2|cuenta1[18]~69\)) # (!\comp2|cuenta1\(19) & ((\comp2|cuenta1[18]~69\) # (GND)))
-- \comp2|cuenta1[19]~71\ = CARRY((!\comp2|cuenta1[18]~69\) # (!\comp2|cuenta1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(19),
	datad => VCC,
	cin => \comp2|cuenta1[18]~69\,
	combout => \comp2|cuenta1[19]~70_combout\,
	cout => \comp2|cuenta1[19]~71\);

-- Location: FF_X25_Y19_N7
\comp2|cuenta1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[19]~70_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(19));

-- Location: LCCOMB_X25_Y19_N8
\comp2|cuenta1[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[20]~72_combout\ = (\comp2|cuenta1\(20) & (\comp2|cuenta1[19]~71\ $ (GND))) # (!\comp2|cuenta1\(20) & (!\comp2|cuenta1[19]~71\ & VCC))
-- \comp2|cuenta1[20]~73\ = CARRY((\comp2|cuenta1\(20) & !\comp2|cuenta1[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(20),
	datad => VCC,
	cin => \comp2|cuenta1[19]~71\,
	combout => \comp2|cuenta1[20]~72_combout\,
	cout => \comp2|cuenta1[20]~73\);

-- Location: FF_X25_Y19_N9
\comp2|cuenta1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[20]~72_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(20));

-- Location: LCCOMB_X25_Y19_N10
\comp2|cuenta1[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[21]~74_combout\ = (\comp2|cuenta1\(21) & (!\comp2|cuenta1[20]~73\)) # (!\comp2|cuenta1\(21) & ((\comp2|cuenta1[20]~73\) # (GND)))
-- \comp2|cuenta1[21]~75\ = CARRY((!\comp2|cuenta1[20]~73\) # (!\comp2|cuenta1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(21),
	datad => VCC,
	cin => \comp2|cuenta1[20]~73\,
	combout => \comp2|cuenta1[21]~74_combout\,
	cout => \comp2|cuenta1[21]~75\);

-- Location: FF_X25_Y19_N11
\comp2|cuenta1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[21]~74_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(21));

-- Location: LCCOMB_X25_Y19_N12
\comp2|cuenta1[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[22]~76_combout\ = (\comp2|cuenta1\(22) & (\comp2|cuenta1[21]~75\ $ (GND))) # (!\comp2|cuenta1\(22) & (!\comp2|cuenta1[21]~75\ & VCC))
-- \comp2|cuenta1[22]~77\ = CARRY((\comp2|cuenta1\(22) & !\comp2|cuenta1[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(22),
	datad => VCC,
	cin => \comp2|cuenta1[21]~75\,
	combout => \comp2|cuenta1[22]~76_combout\,
	cout => \comp2|cuenta1[22]~77\);

-- Location: FF_X25_Y19_N13
\comp2|cuenta1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[22]~76_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(22));

-- Location: LCCOMB_X25_Y19_N14
\comp2|cuenta1[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[23]~78_combout\ = (\comp2|cuenta1\(23) & (!\comp2|cuenta1[22]~77\)) # (!\comp2|cuenta1\(23) & ((\comp2|cuenta1[22]~77\) # (GND)))
-- \comp2|cuenta1[23]~79\ = CARRY((!\comp2|cuenta1[22]~77\) # (!\comp2|cuenta1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(23),
	datad => VCC,
	cin => \comp2|cuenta1[22]~77\,
	combout => \comp2|cuenta1[23]~78_combout\,
	cout => \comp2|cuenta1[23]~79\);

-- Location: FF_X25_Y19_N15
\comp2|cuenta1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[23]~78_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(23));

-- Location: LCCOMB_X25_Y19_N16
\comp2|cuenta1[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[24]~80_combout\ = (\comp2|cuenta1\(24) & (\comp2|cuenta1[23]~79\ $ (GND))) # (!\comp2|cuenta1\(24) & (!\comp2|cuenta1[23]~79\ & VCC))
-- \comp2|cuenta1[24]~81\ = CARRY((\comp2|cuenta1\(24) & !\comp2|cuenta1[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(24),
	datad => VCC,
	cin => \comp2|cuenta1[23]~79\,
	combout => \comp2|cuenta1[24]~80_combout\,
	cout => \comp2|cuenta1[24]~81\);

-- Location: FF_X25_Y19_N17
\comp2|cuenta1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[24]~80_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(24));

-- Location: LCCOMB_X25_Y19_N18
\comp2|cuenta1[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[25]~82_combout\ = (\comp2|cuenta1\(25) & (!\comp2|cuenta1[24]~81\)) # (!\comp2|cuenta1\(25) & ((\comp2|cuenta1[24]~81\) # (GND)))
-- \comp2|cuenta1[25]~83\ = CARRY((!\comp2|cuenta1[24]~81\) # (!\comp2|cuenta1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(25),
	datad => VCC,
	cin => \comp2|cuenta1[24]~81\,
	combout => \comp2|cuenta1[25]~82_combout\,
	cout => \comp2|cuenta1[25]~83\);

-- Location: FF_X25_Y19_N19
\comp2|cuenta1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[25]~82_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(25));

-- Location: LCCOMB_X25_Y19_N20
\comp2|cuenta1[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[26]~84_combout\ = (\comp2|cuenta1\(26) & (\comp2|cuenta1[25]~83\ $ (GND))) # (!\comp2|cuenta1\(26) & (!\comp2|cuenta1[25]~83\ & VCC))
-- \comp2|cuenta1[26]~85\ = CARRY((\comp2|cuenta1\(26) & !\comp2|cuenta1[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(26),
	datad => VCC,
	cin => \comp2|cuenta1[25]~83\,
	combout => \comp2|cuenta1[26]~84_combout\,
	cout => \comp2|cuenta1[26]~85\);

-- Location: FF_X25_Y19_N21
\comp2|cuenta1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[26]~84_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(26));

-- Location: LCCOMB_X25_Y19_N22
\comp2|cuenta1[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[27]~86_combout\ = (\comp2|cuenta1\(27) & (!\comp2|cuenta1[26]~85\)) # (!\comp2|cuenta1\(27) & ((\comp2|cuenta1[26]~85\) # (GND)))
-- \comp2|cuenta1[27]~87\ = CARRY((!\comp2|cuenta1[26]~85\) # (!\comp2|cuenta1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(27),
	datad => VCC,
	cin => \comp2|cuenta1[26]~85\,
	combout => \comp2|cuenta1[27]~86_combout\,
	cout => \comp2|cuenta1[27]~87\);

-- Location: FF_X25_Y19_N23
\comp2|cuenta1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[27]~86_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(27));

-- Location: LCCOMB_X25_Y19_N24
\comp2|cuenta1[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[28]~88_combout\ = (\comp2|cuenta1\(28) & (\comp2|cuenta1[27]~87\ $ (GND))) # (!\comp2|cuenta1\(28) & (!\comp2|cuenta1[27]~87\ & VCC))
-- \comp2|cuenta1[28]~89\ = CARRY((\comp2|cuenta1\(28) & !\comp2|cuenta1[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(28),
	datad => VCC,
	cin => \comp2|cuenta1[27]~87\,
	combout => \comp2|cuenta1[28]~88_combout\,
	cout => \comp2|cuenta1[28]~89\);

-- Location: FF_X25_Y19_N25
\comp2|cuenta1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[28]~88_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(28));

-- Location: LCCOMB_X25_Y19_N26
\comp2|cuenta1[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[29]~90_combout\ = (\comp2|cuenta1\(29) & (!\comp2|cuenta1[28]~89\)) # (!\comp2|cuenta1\(29) & ((\comp2|cuenta1[28]~89\) # (GND)))
-- \comp2|cuenta1[29]~91\ = CARRY((!\comp2|cuenta1[28]~89\) # (!\comp2|cuenta1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(29),
	datad => VCC,
	cin => \comp2|cuenta1[28]~89\,
	combout => \comp2|cuenta1[29]~90_combout\,
	cout => \comp2|cuenta1[29]~91\);

-- Location: FF_X25_Y19_N27
\comp2|cuenta1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[29]~90_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(29));

-- Location: LCCOMB_X25_Y19_N28
\comp2|cuenta1[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[30]~92_combout\ = (\comp2|cuenta1\(30) & (\comp2|cuenta1[29]~91\ $ (GND))) # (!\comp2|cuenta1\(30) & (!\comp2|cuenta1[29]~91\ & VCC))
-- \comp2|cuenta1[30]~93\ = CARRY((\comp2|cuenta1\(30) & !\comp2|cuenta1[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp2|cuenta1\(30),
	datad => VCC,
	cin => \comp2|cuenta1[29]~91\,
	combout => \comp2|cuenta1[30]~92_combout\,
	cout => \comp2|cuenta1[30]~93\);

-- Location: FF_X25_Y19_N29
\comp2|cuenta1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[30]~92_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(30));

-- Location: LCCOMB_X25_Y19_N30
\comp2|cuenta1[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|cuenta1[31]~94_combout\ = \comp2|cuenta1\(31) $ (\comp2|cuenta1[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(31),
	cin => \comp2|cuenta1[30]~93\,
	combout => \comp2|cuenta1[31]~94_combout\);

-- Location: FF_X25_Y19_N31
\comp2|cuenta1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|cuenta1[31]~94_combout\,
	sclr => \comp2|process_1~0_combout\,
	ena => \comp2|ALT_INV_c~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|cuenta1\(31));

-- Location: LCCOMB_X25_Y18_N12
\comp2|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~5_combout\ = (!\comp2|cuenta1\(19) & (!\comp2|cuenta1\(18) & (!\comp2|cuenta1\(16) & !\comp2|cuenta1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(19),
	datab => \comp2|cuenta1\(18),
	datac => \comp2|cuenta1\(16),
	datad => \comp2|cuenta1\(17),
	combout => \comp2|LessThan1~5_combout\);

-- Location: LCCOMB_X24_Y20_N20
\comp2|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~7_combout\ = (!\comp2|cuenta1\(25) & (!\comp2|cuenta1\(27) & (!\comp2|cuenta1\(24) & !\comp2|cuenta1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(25),
	datab => \comp2|cuenta1\(27),
	datac => \comp2|cuenta1\(24),
	datad => \comp2|cuenta1\(26),
	combout => \comp2|LessThan1~7_combout\);

-- Location: LCCOMB_X24_Y20_N24
\comp2|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~8_combout\ = (!\comp2|cuenta1\(30) & (!\comp2|cuenta1\(29) & (!\comp2|cuenta1\(28) & \comp2|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(30),
	datab => \comp2|cuenta1\(29),
	datac => \comp2|cuenta1\(28),
	datad => \comp2|LessThan1~7_combout\,
	combout => \comp2|LessThan1~8_combout\);

-- Location: LCCOMB_X26_Y19_N0
\comp2|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~6_combout\ = (!\comp2|cuenta1\(20) & (!\comp2|cuenta1\(21) & (!\comp2|cuenta1\(22) & !\comp2|cuenta1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(20),
	datab => \comp2|cuenta1\(21),
	datac => \comp2|cuenta1\(22),
	datad => \comp2|cuenta1\(23),
	combout => \comp2|LessThan1~6_combout\);

-- Location: LCCOMB_X26_Y20_N22
\comp2|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~1_combout\ = (!\comp2|cuenta1\(6) & (!\comp2|cuenta1\(5) & (!\comp2|cuenta1\(7) & !\comp2|cuenta1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(6),
	datab => \comp2|cuenta1\(5),
	datac => \comp2|cuenta1\(7),
	datad => \comp2|cuenta1\(4),
	combout => \comp2|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y20_N28
\comp2|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~3_combout\ = (!\comp2|cuenta1\(13) & (!\comp2|cuenta1\(12) & (!\comp2|cuenta1\(15) & !\comp2|cuenta1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(13),
	datab => \comp2|cuenta1\(12),
	datac => \comp2|cuenta1\(15),
	datad => \comp2|cuenta1\(14),
	combout => \comp2|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y20_N26
\comp2|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~2_combout\ = (!\comp2|cuenta1\(10) & (!\comp2|cuenta1\(9) & (!\comp2|cuenta1\(8) & !\comp2|cuenta1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(10),
	datab => \comp2|cuenta1\(9),
	datac => \comp2|cuenta1\(8),
	datad => \comp2|cuenta1\(11),
	combout => \comp2|LessThan1~2_combout\);

-- Location: LCCOMB_X26_Y20_N4
\comp2|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~0_combout\ = (!\comp2|cuenta1\(2) & (!\comp2|cuenta1\(3) & ((!\comp2|cuenta1\(1)) # (!\comp2|cuenta1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(0),
	datab => \comp2|cuenta1\(2),
	datac => \comp2|cuenta1\(3),
	datad => \comp2|cuenta1\(1),
	combout => \comp2|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\comp2|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~4_combout\ = (\comp2|LessThan1~1_combout\ & (\comp2|LessThan1~3_combout\ & (\comp2|LessThan1~2_combout\ & \comp2|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|LessThan1~1_combout\,
	datab => \comp2|LessThan1~3_combout\,
	datac => \comp2|LessThan1~2_combout\,
	datad => \comp2|LessThan1~0_combout\,
	combout => \comp2|LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y20_N16
\comp2|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|LessThan1~9_combout\ = (\comp2|LessThan1~5_combout\ & (\comp2|LessThan1~8_combout\ & (\comp2|LessThan1~6_combout\ & \comp2|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|LessThan1~5_combout\,
	datab => \comp2|LessThan1~8_combout\,
	datac => \comp2|LessThan1~6_combout\,
	datad => \comp2|LessThan1~4_combout\,
	combout => \comp2|LessThan1~9_combout\);

-- Location: LCCOMB_X24_Y20_N22
\comp2|a1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|a1~1_combout\ = (!\comp2|a1~0_combout\ & ((\comp2|a1~q\) # ((!\comp2|cuenta1\(31) & !\comp2|LessThan1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|cuenta1\(31),
	datab => \comp2|a1~0_combout\,
	datac => \comp2|a1~q\,
	datad => \comp2|LessThan1~9_combout\,
	combout => \comp2|a1~1_combout\);

-- Location: FF_X24_Y20_N23
\comp2|a1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cambiar_in~inputclkctrl_outclk\,
	d => \comp2|a1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|a1~q\);

-- Location: LCCOMB_X21_Y20_N6
\comp2|alarma~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|alarma~0_combout\ = (\comp2|a~q\) # (\comp2|a1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|a~q\,
	datad => \comp2|a1~q\,
	combout => \comp2|alarma~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\pir_2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pir_2,
	o => \pir_2~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\selector~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector,
	o => \selector~input_o\);

-- Location: LCCOMB_X24_Y20_N0
\comp2|acti~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|acti~0_combout\ = \comp2|acti~q\ $ (((\comp2|Equal0~9_combout\ & (\comp2|Equal0~14_combout\ & \comp2|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp2|Equal0~9_combout\,
	datab => \comp2|Equal0~14_combout\,
	datac => \comp2|Equal0~4_combout\,
	datad => \comp2|acti~q\,
	combout => \comp2|acti~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\comp2|acti~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp2|acti~feeder_combout\ = \comp2|acti~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \comp2|acti~0_combout\,
	combout => \comp2|acti~feeder_combout\);

-- Location: FF_X24_Y20_N7
\comp2|acti\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comprobar_in~input_o\,
	d => \comp2|acti~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp2|acti~q\);

-- Location: IOIBUF_X16_Y0_N8
\pir_1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pir_1,
	o => \pir_1~input_o\);

-- Location: LCCOMB_X25_Y5_N14
\comp3|PWM1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~10_combout\ = (\comp2|acti~q\ & ((\pir_2~input_o\) # ((\pir_1~input_o\) # (!\selector~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_2~input_o\,
	datab => \selector~input_o\,
	datac => \comp2|acti~q\,
	datad => \pir_1~input_o\,
	combout => \comp3|PWM1~10_combout\);

-- Location: LCCOMB_X24_Y5_N10
\comp3|PWM_Count[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[0]~48_combout\ = \comp2|acti~q\ $ (\comp3|PWM_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp2|acti~q\,
	datac => \comp3|PWM_Count\(0),
	combout => \comp3|PWM_Count[0]~48_combout\);

-- Location: FF_X24_Y5_N11
\comp3|PWM_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(0));

-- Location: LCCOMB_X24_Y5_N14
\comp3|PWM_Count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[1]~18_combout\ = (\comp3|PWM_Count\(0) & (\comp3|PWM_Count\(1) & VCC)) # (!\comp3|PWM_Count\(0) & (\comp3|PWM_Count\(1) $ (VCC)))
-- \comp3|PWM_Count[1]~19\ = CARRY((!\comp3|PWM_Count\(0) & \comp3|PWM_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(0),
	datab => \comp3|PWM_Count\(1),
	datad => VCC,
	combout => \comp3|PWM_Count[1]~18_combout\,
	cout => \comp3|PWM_Count[1]~19\);

-- Location: FF_X24_Y5_N15
\comp3|PWM_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[1]~18_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(1));

-- Location: LCCOMB_X24_Y5_N16
\comp3|PWM_Count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[2]~20_combout\ = (\comp3|PWM_Count\(2) & (!\comp3|PWM_Count[1]~19\)) # (!\comp3|PWM_Count\(2) & ((\comp3|PWM_Count[1]~19\) # (GND)))
-- \comp3|PWM_Count[2]~21\ = CARRY((!\comp3|PWM_Count[1]~19\) # (!\comp3|PWM_Count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(2),
	datad => VCC,
	cin => \comp3|PWM_Count[1]~19\,
	combout => \comp3|PWM_Count[2]~20_combout\,
	cout => \comp3|PWM_Count[2]~21\);

-- Location: FF_X24_Y5_N17
\comp3|PWM_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[2]~20_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(2));

-- Location: LCCOMB_X24_Y5_N18
\comp3|PWM_Count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[3]~22_combout\ = (\comp3|PWM_Count\(3) & (\comp3|PWM_Count[2]~21\ $ (GND))) # (!\comp3|PWM_Count\(3) & (!\comp3|PWM_Count[2]~21\ & VCC))
-- \comp3|PWM_Count[3]~23\ = CARRY((\comp3|PWM_Count\(3) & !\comp3|PWM_Count[2]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(3),
	datad => VCC,
	cin => \comp3|PWM_Count[2]~21\,
	combout => \comp3|PWM_Count[3]~22_combout\,
	cout => \comp3|PWM_Count[3]~23\);

-- Location: FF_X24_Y5_N19
\comp3|PWM_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[3]~22_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(3));

-- Location: LCCOMB_X24_Y5_N20
\comp3|PWM_Count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[4]~24_combout\ = (\comp3|PWM_Count\(4) & (!\comp3|PWM_Count[3]~23\)) # (!\comp3|PWM_Count\(4) & ((\comp3|PWM_Count[3]~23\) # (GND)))
-- \comp3|PWM_Count[4]~25\ = CARRY((!\comp3|PWM_Count[3]~23\) # (!\comp3|PWM_Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(4),
	datad => VCC,
	cin => \comp3|PWM_Count[3]~23\,
	combout => \comp3|PWM_Count[4]~24_combout\,
	cout => \comp3|PWM_Count[4]~25\);

-- Location: FF_X24_Y5_N21
\comp3|PWM_Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[4]~24_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(4));

-- Location: LCCOMB_X24_Y5_N22
\comp3|PWM_Count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[5]~26_combout\ = (\comp3|PWM_Count\(5) & (\comp3|PWM_Count[4]~25\ $ (GND))) # (!\comp3|PWM_Count\(5) & (!\comp3|PWM_Count[4]~25\ & VCC))
-- \comp3|PWM_Count[5]~27\ = CARRY((\comp3|PWM_Count\(5) & !\comp3|PWM_Count[4]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(5),
	datad => VCC,
	cin => \comp3|PWM_Count[4]~25\,
	combout => \comp3|PWM_Count[5]~26_combout\,
	cout => \comp3|PWM_Count[5]~27\);

-- Location: FF_X24_Y5_N23
\comp3|PWM_Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[5]~26_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(5));

-- Location: LCCOMB_X24_Y5_N24
\comp3|PWM_Count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[6]~28_combout\ = (\comp3|PWM_Count\(6) & (!\comp3|PWM_Count[5]~27\)) # (!\comp3|PWM_Count\(6) & ((\comp3|PWM_Count[5]~27\) # (GND)))
-- \comp3|PWM_Count[6]~29\ = CARRY((!\comp3|PWM_Count[5]~27\) # (!\comp3|PWM_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(6),
	datad => VCC,
	cin => \comp3|PWM_Count[5]~27\,
	combout => \comp3|PWM_Count[6]~28_combout\,
	cout => \comp3|PWM_Count[6]~29\);

-- Location: FF_X24_Y5_N25
\comp3|PWM_Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[6]~28_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(6));

-- Location: LCCOMB_X24_Y5_N26
\comp3|PWM_Count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[7]~30_combout\ = (\comp3|PWM_Count\(7) & (\comp3|PWM_Count[6]~29\ $ (GND))) # (!\comp3|PWM_Count\(7) & (!\comp3|PWM_Count[6]~29\ & VCC))
-- \comp3|PWM_Count[7]~31\ = CARRY((\comp3|PWM_Count\(7) & !\comp3|PWM_Count[6]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(7),
	datad => VCC,
	cin => \comp3|PWM_Count[6]~29\,
	combout => \comp3|PWM_Count[7]~30_combout\,
	cout => \comp3|PWM_Count[7]~31\);

-- Location: FF_X24_Y5_N27
\comp3|PWM_Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[7]~30_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(7));

-- Location: LCCOMB_X24_Y5_N28
\comp3|PWM_Count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[8]~32_combout\ = (\comp3|PWM_Count\(8) & (!\comp3|PWM_Count[7]~31\)) # (!\comp3|PWM_Count\(8) & ((\comp3|PWM_Count[7]~31\) # (GND)))
-- \comp3|PWM_Count[8]~33\ = CARRY((!\comp3|PWM_Count[7]~31\) # (!\comp3|PWM_Count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(8),
	datad => VCC,
	cin => \comp3|PWM_Count[7]~31\,
	combout => \comp3|PWM_Count[8]~32_combout\,
	cout => \comp3|PWM_Count[8]~33\);

-- Location: FF_X24_Y5_N29
\comp3|PWM_Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[8]~32_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(8));

-- Location: LCCOMB_X24_Y5_N30
\comp3|PWM_Count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[9]~34_combout\ = (\comp3|PWM_Count\(9) & (\comp3|PWM_Count[8]~33\ $ (GND))) # (!\comp3|PWM_Count\(9) & (!\comp3|PWM_Count[8]~33\ & VCC))
-- \comp3|PWM_Count[9]~35\ = CARRY((\comp3|PWM_Count\(9) & !\comp3|PWM_Count[8]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(9),
	datad => VCC,
	cin => \comp3|PWM_Count[8]~33\,
	combout => \comp3|PWM_Count[9]~34_combout\,
	cout => \comp3|PWM_Count[9]~35\);

-- Location: FF_X24_Y5_N31
\comp3|PWM_Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[9]~34_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(9));

-- Location: LCCOMB_X24_Y4_N0
\comp3|PWM_Count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[10]~36_combout\ = (\comp3|PWM_Count\(10) & (!\comp3|PWM_Count[9]~35\)) # (!\comp3|PWM_Count\(10) & ((\comp3|PWM_Count[9]~35\) # (GND)))
-- \comp3|PWM_Count[10]~37\ = CARRY((!\comp3|PWM_Count[9]~35\) # (!\comp3|PWM_Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(10),
	datad => VCC,
	cin => \comp3|PWM_Count[9]~35\,
	combout => \comp3|PWM_Count[10]~36_combout\,
	cout => \comp3|PWM_Count[10]~37\);

-- Location: FF_X24_Y4_N1
\comp3|PWM_Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[10]~36_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(10));

-- Location: LCCOMB_X24_Y4_N2
\comp3|PWM_Count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[11]~38_combout\ = (\comp3|PWM_Count\(11) & (\comp3|PWM_Count[10]~37\ $ (GND))) # (!\comp3|PWM_Count\(11) & (!\comp3|PWM_Count[10]~37\ & VCC))
-- \comp3|PWM_Count[11]~39\ = CARRY((\comp3|PWM_Count\(11) & !\comp3|PWM_Count[10]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(11),
	datad => VCC,
	cin => \comp3|PWM_Count[10]~37\,
	combout => \comp3|PWM_Count[11]~38_combout\,
	cout => \comp3|PWM_Count[11]~39\);

-- Location: FF_X24_Y4_N3
\comp3|PWM_Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[11]~38_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(11));

-- Location: LCCOMB_X24_Y4_N4
\comp3|PWM_Count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[12]~40_combout\ = (\comp3|PWM_Count\(12) & (!\comp3|PWM_Count[11]~39\)) # (!\comp3|PWM_Count\(12) & ((\comp3|PWM_Count[11]~39\) # (GND)))
-- \comp3|PWM_Count[12]~41\ = CARRY((!\comp3|PWM_Count[11]~39\) # (!\comp3|PWM_Count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(12),
	datad => VCC,
	cin => \comp3|PWM_Count[11]~39\,
	combout => \comp3|PWM_Count[12]~40_combout\,
	cout => \comp3|PWM_Count[12]~41\);

-- Location: FF_X24_Y4_N5
\comp3|PWM_Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[12]~40_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(12));

-- Location: LCCOMB_X24_Y4_N6
\comp3|PWM_Count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[13]~42_combout\ = (\comp3|PWM_Count\(13) & (\comp3|PWM_Count[12]~41\ $ (GND))) # (!\comp3|PWM_Count\(13) & (!\comp3|PWM_Count[12]~41\ & VCC))
-- \comp3|PWM_Count[13]~43\ = CARRY((\comp3|PWM_Count\(13) & !\comp3|PWM_Count[12]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(13),
	datad => VCC,
	cin => \comp3|PWM_Count[12]~41\,
	combout => \comp3|PWM_Count[13]~42_combout\,
	cout => \comp3|PWM_Count[13]~43\);

-- Location: FF_X24_Y4_N7
\comp3|PWM_Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[13]~42_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(13));

-- Location: LCCOMB_X24_Y4_N8
\comp3|PWM_Count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[14]~44_combout\ = (\comp3|PWM_Count\(14) & (!\comp3|PWM_Count[13]~43\)) # (!\comp3|PWM_Count\(14) & ((\comp3|PWM_Count[13]~43\) # (GND)))
-- \comp3|PWM_Count[14]~45\ = CARRY((!\comp3|PWM_Count[13]~43\) # (!\comp3|PWM_Count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(14),
	datad => VCC,
	cin => \comp3|PWM_Count[13]~43\,
	combout => \comp3|PWM_Count[14]~44_combout\,
	cout => \comp3|PWM_Count[14]~45\);

-- Location: FF_X24_Y4_N9
\comp3|PWM_Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[14]~44_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(14));

-- Location: LCCOMB_X24_Y4_N10
\comp3|PWM_Count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[15]~46_combout\ = (\comp3|PWM_Count\(15) & (\comp3|PWM_Count[14]~45\ $ (GND))) # (!\comp3|PWM_Count\(15) & (!\comp3|PWM_Count[14]~45\ & VCC))
-- \comp3|PWM_Count[15]~47\ = CARRY((\comp3|PWM_Count\(15) & !\comp3|PWM_Count[14]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(15),
	datad => VCC,
	cin => \comp3|PWM_Count[14]~45\,
	combout => \comp3|PWM_Count[15]~46_combout\,
	cout => \comp3|PWM_Count[15]~47\);

-- Location: FF_X24_Y4_N11
\comp3|PWM_Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[15]~46_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(15));

-- Location: LCCOMB_X24_Y4_N18
\comp3|PWM1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~0_combout\ = (\pir_2~input_o\ & (\selector~input_o\ & (\comp3|PWM_Count\(14) & \comp3|PWM_Count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_2~input_o\,
	datab => \selector~input_o\,
	datac => \comp3|PWM_Count\(14),
	datad => \comp3|PWM_Count\(15),
	combout => \comp3|PWM1~0_combout\);

-- Location: LCCOMB_X25_Y5_N2
\comp3|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan1~4_combout\ = (\comp3|PWM_Count\(8) & \comp3|PWM_Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(8),
	datad => \comp3|PWM_Count\(9),
	combout => \comp3|LessThan1~4_combout\);

-- Location: LCCOMB_X24_Y5_N4
\comp3|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan1~1_combout\ = (\comp3|PWM_Count\(7)) # ((\comp3|PWM_Count\(5) & \comp3|PWM_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(7),
	datac => \comp3|PWM_Count\(5),
	datad => \comp3|PWM_Count\(6),
	combout => \comp3|LessThan1~1_combout\);

-- Location: LCCOMB_X24_Y5_N0
\comp3|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan1~2_combout\ = (\comp3|PWM_Count\(0) & (!\comp3|PWM_Count\(2) & (!\comp3|PWM_Count\(1) & !\comp3|PWM_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(0),
	datab => \comp3|PWM_Count\(2),
	datac => \comp3|PWM_Count\(1),
	datad => \comp3|PWM_Count\(3),
	combout => \comp3|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y5_N2
\comp3|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan1~3_combout\ = (\comp3|LessThan1~1_combout\) # ((\comp3|PWM_Count\(6) & (\comp3|PWM_Count\(4) & !\comp3|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(6),
	datab => \comp3|PWM_Count\(4),
	datac => \comp3|LessThan1~1_combout\,
	datad => \comp3|LessThan1~2_combout\,
	combout => \comp3|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y4_N24
\comp3|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan1~0_combout\ = (\comp3|PWM_Count\(13)) # ((\comp3|PWM_Count\(10)) # ((\comp3|PWM_Count\(12)) # (\comp3|PWM_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(13),
	datab => \comp3|PWM_Count\(10),
	datac => \comp3|PWM_Count\(12),
	datad => \comp3|PWM_Count\(11),
	combout => \comp3|LessThan1~0_combout\);

-- Location: LCCOMB_X25_Y5_N22
\comp3|PWM1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~1_combout\ = (\comp3|PWM1~0_combout\ & ((\comp3|LessThan1~0_combout\) # ((\comp3|LessThan1~4_combout\ & \comp3|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM1~0_combout\,
	datab => \comp3|LessThan1~4_combout\,
	datac => \comp3|LessThan1~3_combout\,
	datad => \comp3|LessThan1~0_combout\,
	combout => \comp3|PWM1~1_combout\);

-- Location: LCCOMB_X24_Y4_N12
\comp3|PWM_Count[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[16]~49_combout\ = (\comp3|PWM_Count\(16) & (!\comp3|PWM_Count[15]~47\)) # (!\comp3|PWM_Count\(16) & ((\comp3|PWM_Count[15]~47\) # (GND)))
-- \comp3|PWM_Count[16]~50\ = CARRY((!\comp3|PWM_Count[15]~47\) # (!\comp3|PWM_Count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(16),
	datad => VCC,
	cin => \comp3|PWM_Count[15]~47\,
	combout => \comp3|PWM_Count[16]~49_combout\,
	cout => \comp3|PWM_Count[16]~50\);

-- Location: FF_X24_Y4_N13
\comp3|PWM_Count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[16]~49_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(16));

-- Location: LCCOMB_X24_Y4_N30
\comp3|PWM1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~8_combout\ = (!\selector~input_o\ & \comp3|PWM_Count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \selector~input_o\,
	datad => \comp3|PWM_Count\(16),
	combout => \comp3|PWM1~8_combout\);

-- Location: LCCOMB_X24_Y4_N20
\comp3|PWM1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~4_combout\ = (\comp3|PWM_Count\(16) & (\selector~input_o\ & \comp3|PWM_Count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(16),
	datac => \selector~input_o\,
	datad => \comp3|PWM_Count\(15),
	combout => \comp3|PWM1~4_combout\);

-- Location: LCCOMB_X25_Y5_N8
\comp3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan0~1_combout\ = (\comp3|PWM_Count\(8)) # ((\comp3|PWM_Count\(7) & \comp3|PWM_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(8),
	datac => \comp3|PWM_Count\(7),
	datad => \comp3|PWM_Count\(6),
	combout => \comp3|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y5_N12
\comp3|PWM1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~5_combout\ = (\comp3|PWM_Count\(7) & (\comp3|PWM_Count\(5) & ((\comp3|PWM_Count\(4)) # (!\comp3|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(7),
	datab => \comp3|PWM_Count\(4),
	datac => \comp3|PWM_Count\(5),
	datad => \comp3|LessThan1~2_combout\,
	combout => \comp3|PWM1~5_combout\);

-- Location: LCCOMB_X25_Y5_N16
\comp3|PWM1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~6_combout\ = (\comp3|PWM_Count\(9) & (\comp3|PWM_Count\(10) & ((\comp3|LessThan0~1_combout\) # (\comp3|PWM1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(9),
	datab => \comp3|PWM_Count\(10),
	datac => \comp3|LessThan0~1_combout\,
	datad => \comp3|PWM1~5_combout\,
	combout => \comp3|PWM1~6_combout\);

-- Location: LCCOMB_X24_Y4_N22
\comp3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan0~0_combout\ = (\comp3|PWM_Count\(13)) # ((\comp3|PWM_Count\(14)) # ((\comp3|PWM_Count\(12)) # (\comp3|PWM_Count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(13),
	datab => \comp3|PWM_Count\(14),
	datac => \comp3|PWM_Count\(12),
	datad => \comp3|PWM_Count\(11),
	combout => \comp3|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y4_N14
\comp3|PWM_Count[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[17]~51_combout\ = (\comp3|PWM_Count\(17) & (\comp3|PWM_Count[16]~50\ $ (GND))) # (!\comp3|PWM_Count\(17) & (!\comp3|PWM_Count[16]~50\ & VCC))
-- \comp3|PWM_Count[17]~52\ = CARRY((\comp3|PWM_Count\(17) & !\comp3|PWM_Count[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(17),
	datad => VCC,
	cin => \comp3|PWM_Count[16]~50\,
	combout => \comp3|PWM_Count[17]~51_combout\,
	cout => \comp3|PWM_Count[17]~52\);

-- Location: FF_X24_Y4_N15
\comp3|PWM_Count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[17]~51_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(17));

-- Location: LCCOMB_X24_Y4_N16
\comp3|PWM_Count[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM_Count[18]~53_combout\ = \comp3|PWM_Count[17]~52\ $ (\comp3|PWM_Count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \comp3|PWM_Count\(18),
	cin => \comp3|PWM_Count[17]~52\,
	combout => \comp3|PWM_Count[18]~53_combout\);

-- Location: FF_X24_Y4_N17
\comp3|PWM_Count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comp3|PWM_Count[18]~53_combout\,
	ena => \comp2|acti~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comp3|PWM_Count\(18));

-- Location: LCCOMB_X24_Y4_N28
\comp3|PWM1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~2_combout\ = (\comp3|PWM_Count\(17)) # ((\pir_2~input_o\ & (\selector~input_o\ & \comp3|PWM_Count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_2~input_o\,
	datab => \selector~input_o\,
	datac => \comp3|PWM_Count\(17),
	datad => \comp3|PWM_Count\(16),
	combout => \comp3|PWM1~2_combout\);

-- Location: LCCOMB_X24_Y4_N26
\comp3|PWM1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~3_combout\ = (\comp3|PWM_Count\(18)) # (\comp3|PWM1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(18),
	datad => \comp3|PWM1~2_combout\,
	combout => \comp3|PWM1~3_combout\);

-- Location: LCCOMB_X25_Y5_N4
\comp3|PWM1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~7_combout\ = (\comp3|PWM1~3_combout\) # ((\comp3|PWM1~4_combout\ & ((\comp3|PWM1~6_combout\) # (\comp3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM1~4_combout\,
	datab => \comp3|PWM1~6_combout\,
	datac => \comp3|LessThan0~0_combout\,
	datad => \comp3|PWM1~3_combout\,
	combout => \comp3|PWM1~7_combout\);

-- Location: LCCOMB_X25_Y5_N26
\comp3|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan2~0_combout\ = (\comp3|PWM_Count\(8)) # (\comp3|PWM_Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comp3|PWM_Count\(8),
	datad => \comp3|PWM_Count\(9),
	combout => \comp3|LessThan2~0_combout\);

-- Location: LCCOMB_X24_Y5_N6
\comp3|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan2~1_combout\ = (\comp3|PWM_Count\(3) & (((\comp3|PWM_Count\(1)) # (\comp3|PWM_Count\(2))) # (!\comp3|PWM_Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(0),
	datab => \comp3|PWM_Count\(3),
	datac => \comp3|PWM_Count\(1),
	datad => \comp3|PWM_Count\(2),
	combout => \comp3|LessThan2~1_combout\);

-- Location: LCCOMB_X24_Y5_N8
\comp3|LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan2~2_combout\ = (\comp3|PWM_Count\(5) & (\comp3|PWM_Count\(6) & (\comp3|PWM_Count\(7) & \comp3|PWM_Count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(5),
	datab => \comp3|PWM_Count\(6),
	datac => \comp3|PWM_Count\(7),
	datad => \comp3|PWM_Count\(4),
	combout => \comp3|LessThan2~2_combout\);

-- Location: LCCOMB_X25_Y5_N28
\comp3|LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan2~3_combout\ = (\comp3|PWM_Count\(10) & ((\comp3|LessThan2~0_combout\) # ((\comp3|LessThan2~1_combout\ & \comp3|LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|LessThan2~0_combout\,
	datab => \comp3|PWM_Count\(10),
	datac => \comp3|LessThan2~1_combout\,
	datad => \comp3|LessThan2~2_combout\,
	combout => \comp3|LessThan2~3_combout\);

-- Location: LCCOMB_X25_Y5_N18
\comp3|LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan2~4_combout\ = (\comp3|PWM_Count\(13) & ((\comp3|PWM_Count\(11)) # ((\comp3|PWM_Count\(12)) # (\comp3|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(11),
	datab => \comp3|PWM_Count\(12),
	datac => \comp3|PWM_Count\(13),
	datad => \comp3|LessThan2~3_combout\,
	combout => \comp3|LessThan2~4_combout\);

-- Location: LCCOMB_X25_Y5_N12
\comp3|LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|LessThan2~5_combout\ = (\comp3|PWM_Count\(14)) # ((\comp3|PWM_Count\(15)) # (\comp3|LessThan2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM_Count\(14),
	datab => \comp3|PWM_Count\(15),
	datad => \comp3|LessThan2~4_combout\,
	combout => \comp3|LessThan2~5_combout\);

-- Location: LCCOMB_X25_Y5_N10
\comp3|PWM1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~9_combout\ = (\comp3|PWM1~1_combout\) # ((\comp3|PWM1~7_combout\) # ((\comp3|PWM1~8_combout\ & \comp3|LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM1~1_combout\,
	datab => \comp3|PWM1~8_combout\,
	datac => \comp3|PWM1~7_combout\,
	datad => \comp3|LessThan2~5_combout\,
	combout => \comp3|PWM1~9_combout\);

-- Location: LCCOMB_X25_Y5_N30
\comp3|PWM1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comp3|PWM1~combout\ = (\comp3|PWM1~10_combout\ & ((!\comp3|PWM1~9_combout\))) # (!\comp3|PWM1~10_combout\ & (\comp3|PWM1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comp3|PWM1~combout\,
	datac => \comp3|PWM1~10_combout\,
	datad => \comp3|PWM1~9_combout\,
	combout => \comp3|PWM1~combout\);

-- Location: LCCOMB_X29_Y12_N16
\uart_rx|salida[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|salida[7]~0_combout\ = (\uart_rx|pulso_muestra~q\ & (!\uart_rx|LessThan3~0_combout\ & (\uart_rx|contador_bits\(3) & \uart_rx|estado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx|pulso_muestra~q\,
	datab => \uart_rx|LessThan3~0_combout\,
	datac => \uart_rx|contador_bits\(3),
	datad => \uart_rx|estado~q\,
	combout => \uart_rx|salida[7]~0_combout\);

-- Location: FF_X30_Y12_N9
\uart_rx|palabra[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \uart_rx|registro\(1),
	clrn => \Rst_n~input_o\,
	sload => VCC,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(0));

-- Location: LCCOMB_X30_Y12_N0
\uart_rx|palabra[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[1]~feeder_combout\ = \uart_rx|registro\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(2),
	combout => \uart_rx|palabra[1]~feeder_combout\);

-- Location: FF_X30_Y12_N1
\uart_rx|palabra[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[1]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(1));

-- Location: LCCOMB_X30_Y12_N12
\uart_rx|palabra[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[2]~feeder_combout\ = \uart_rx|registro\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(3),
	combout => \uart_rx|palabra[2]~feeder_combout\);

-- Location: FF_X30_Y12_N13
\uart_rx|palabra[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[2]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(2));

-- Location: LCCOMB_X30_Y12_N14
\uart_rx|palabra[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[3]~feeder_combout\ = \uart_rx|registro\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(4),
	combout => \uart_rx|palabra[3]~feeder_combout\);

-- Location: FF_X30_Y12_N15
\uart_rx|palabra[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[3]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(3));

-- Location: LCCOMB_X30_Y12_N4
\uart_rx|palabra[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[4]~feeder_combout\ = \uart_rx|registro\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(5),
	combout => \uart_rx|palabra[4]~feeder_combout\);

-- Location: FF_X30_Y12_N5
\uart_rx|palabra[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[4]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(4));

-- Location: LCCOMB_X30_Y12_N6
\uart_rx|palabra[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[5]~feeder_combout\ = \uart_rx|registro\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(6),
	combout => \uart_rx|palabra[5]~feeder_combout\);

-- Location: FF_X30_Y12_N7
\uart_rx|palabra[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[5]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(5));

-- Location: LCCOMB_X30_Y12_N28
\uart_rx|palabra[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[6]~feeder_combout\ = \uart_rx|registro\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx|registro\(7),
	combout => \uart_rx|palabra[6]~feeder_combout\);

-- Location: FF_X30_Y12_N29
\uart_rx|palabra[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[6]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(6));

-- Location: LCCOMB_X30_Y12_N10
\uart_rx|palabra[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart_rx|palabra[7]~feeder_combout\ = \uart_rx|registro\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx|registro\(8),
	combout => \uart_rx|palabra[7]~feeder_combout\);

-- Location: FF_X30_Y12_N11
\uart_rx|palabra[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uart_rx|palabra[7]~feeder_combout\,
	clrn => \Rst_n~input_o\,
	ena => \uart_rx|salida[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx|palabra\(7));

-- Location: LCCOMB_X29_Y5_N0
\transmite|contador_bit[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[0]~32_combout\ = \transmite|contador_bit\(0) $ (VCC)
-- \transmite|contador_bit[0]~33\ = CARRY(\transmite|contador_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(0),
	datad => VCC,
	combout => \transmite|contador_bit[0]~32_combout\,
	cout => \transmite|contador_bit[0]~33\);

-- Location: LCCOMB_X28_Y4_N10
\transmite|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector1~0_combout\ = (!\transmite|estado.inicial~q\ & (((!\pir_2~input_o\ & !\pir_1~input_o\)) # (!\comp2|acti~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_2~input_o\,
	datab => \transmite|estado.inicial~q\,
	datac => \pir_1~input_o\,
	datad => \comp2|acti~q\,
	combout => \transmite|Selector1~0_combout\);

-- Location: LCCOMB_X29_Y5_N6
\transmite|contador_bit[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[3]~40_combout\ = (\transmite|contador_bit\(3) & (!\transmite|contador_bit[2]~39\)) # (!\transmite|contador_bit\(3) & ((\transmite|contador_bit[2]~39\) # (GND)))
-- \transmite|contador_bit[3]~41\ = CARRY((!\transmite|contador_bit[2]~39\) # (!\transmite|contador_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(3),
	datad => VCC,
	cin => \transmite|contador_bit[2]~39\,
	combout => \transmite|contador_bit[3]~40_combout\,
	cout => \transmite|contador_bit[3]~41\);

-- Location: LCCOMB_X29_Y5_N8
\transmite|contador_bit[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[4]~42_combout\ = (\transmite|contador_bit\(4) & (\transmite|contador_bit[3]~41\ $ (GND))) # (!\transmite|contador_bit\(4) & (!\transmite|contador_bit[3]~41\ & VCC))
-- \transmite|contador_bit[4]~43\ = CARRY((\transmite|contador_bit\(4) & !\transmite|contador_bit[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(4),
	datad => VCC,
	cin => \transmite|contador_bit[3]~41\,
	combout => \transmite|contador_bit[4]~42_combout\,
	cout => \transmite|contador_bit[4]~43\);

-- Location: LCCOMB_X29_Y4_N14
\transmite|contador_bit[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[23]~80_combout\ = (\transmite|contador_bit\(23) & (!\transmite|contador_bit[22]~79\)) # (!\transmite|contador_bit\(23) & ((\transmite|contador_bit[22]~79\) # (GND)))
-- \transmite|contador_bit[23]~81\ = CARRY((!\transmite|contador_bit[22]~79\) # (!\transmite|contador_bit\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(23),
	datad => VCC,
	cin => \transmite|contador_bit[22]~79\,
	combout => \transmite|contador_bit[23]~80_combout\,
	cout => \transmite|contador_bit[23]~81\);

-- Location: LCCOMB_X29_Y4_N16
\transmite|contador_bit[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[24]~82_combout\ = (\transmite|contador_bit\(24) & (\transmite|contador_bit[23]~81\ $ (GND))) # (!\transmite|contador_bit\(24) & (!\transmite|contador_bit[23]~81\ & VCC))
-- \transmite|contador_bit[24]~83\ = CARRY((\transmite|contador_bit\(24) & !\transmite|contador_bit[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(24),
	datad => VCC,
	cin => \transmite|contador_bit[23]~81\,
	combout => \transmite|contador_bit[24]~82_combout\,
	cout => \transmite|contador_bit[24]~83\);

-- Location: FF_X29_Y4_N17
\transmite|contador_bit[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[24]~82_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(24));

-- Location: LCCOMB_X29_Y4_N18
\transmite|contador_bit[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[25]~84_combout\ = (\transmite|contador_bit\(25) & (!\transmite|contador_bit[24]~83\)) # (!\transmite|contador_bit\(25) & ((\transmite|contador_bit[24]~83\) # (GND)))
-- \transmite|contador_bit[25]~85\ = CARRY((!\transmite|contador_bit[24]~83\) # (!\transmite|contador_bit\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(25),
	datad => VCC,
	cin => \transmite|contador_bit[24]~83\,
	combout => \transmite|contador_bit[25]~84_combout\,
	cout => \transmite|contador_bit[25]~85\);

-- Location: FF_X29_Y4_N19
\transmite|contador_bit[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[25]~84_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(25));

-- Location: LCCOMB_X29_Y4_N20
\transmite|contador_bit[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[26]~86_combout\ = (\transmite|contador_bit\(26) & (\transmite|contador_bit[25]~85\ $ (GND))) # (!\transmite|contador_bit\(26) & (!\transmite|contador_bit[25]~85\ & VCC))
-- \transmite|contador_bit[26]~87\ = CARRY((\transmite|contador_bit\(26) & !\transmite|contador_bit[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(26),
	datad => VCC,
	cin => \transmite|contador_bit[25]~85\,
	combout => \transmite|contador_bit[26]~86_combout\,
	cout => \transmite|contador_bit[26]~87\);

-- Location: FF_X29_Y4_N21
\transmite|contador_bit[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[26]~86_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(26));

-- Location: LCCOMB_X29_Y4_N22
\transmite|contador_bit[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[27]~88_combout\ = (\transmite|contador_bit\(27) & (!\transmite|contador_bit[26]~87\)) # (!\transmite|contador_bit\(27) & ((\transmite|contador_bit[26]~87\) # (GND)))
-- \transmite|contador_bit[27]~89\ = CARRY((!\transmite|contador_bit[26]~87\) # (!\transmite|contador_bit\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(27),
	datad => VCC,
	cin => \transmite|contador_bit[26]~87\,
	combout => \transmite|contador_bit[27]~88_combout\,
	cout => \transmite|contador_bit[27]~89\);

-- Location: FF_X29_Y4_N23
\transmite|contador_bit[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[27]~88_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(27));

-- Location: LCCOMB_X29_Y4_N24
\transmite|contador_bit[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[28]~90_combout\ = (\transmite|contador_bit\(28) & (\transmite|contador_bit[27]~89\ $ (GND))) # (!\transmite|contador_bit\(28) & (!\transmite|contador_bit[27]~89\ & VCC))
-- \transmite|contador_bit[28]~91\ = CARRY((\transmite|contador_bit\(28) & !\transmite|contador_bit[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(28),
	datad => VCC,
	cin => \transmite|contador_bit[27]~89\,
	combout => \transmite|contador_bit[28]~90_combout\,
	cout => \transmite|contador_bit[28]~91\);

-- Location: FF_X29_Y4_N25
\transmite|contador_bit[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[28]~90_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(28));

-- Location: LCCOMB_X29_Y4_N26
\transmite|contador_bit[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[29]~92_combout\ = (\transmite|contador_bit\(29) & (!\transmite|contador_bit[28]~91\)) # (!\transmite|contador_bit\(29) & ((\transmite|contador_bit[28]~91\) # (GND)))
-- \transmite|contador_bit[29]~93\ = CARRY((!\transmite|contador_bit[28]~91\) # (!\transmite|contador_bit\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(29),
	datad => VCC,
	cin => \transmite|contador_bit[28]~91\,
	combout => \transmite|contador_bit[29]~92_combout\,
	cout => \transmite|contador_bit[29]~93\);

-- Location: FF_X29_Y4_N27
\transmite|contador_bit[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[29]~92_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(29));

-- Location: LCCOMB_X29_Y4_N28
\transmite|contador_bit[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[30]~94_combout\ = (\transmite|contador_bit\(30) & (\transmite|contador_bit[29]~93\ $ (GND))) # (!\transmite|contador_bit\(30) & (!\transmite|contador_bit[29]~93\ & VCC))
-- \transmite|contador_bit[30]~95\ = CARRY((\transmite|contador_bit\(30) & !\transmite|contador_bit[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(30),
	datad => VCC,
	cin => \transmite|contador_bit[29]~93\,
	combout => \transmite|contador_bit[30]~94_combout\,
	cout => \transmite|contador_bit[30]~95\);

-- Location: FF_X29_Y4_N29
\transmite|contador_bit[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[30]~94_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(30));

-- Location: LCCOMB_X29_Y4_N30
\transmite|contador_bit[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[31]~96_combout\ = \transmite|contador_bit\(31) $ (\transmite|contador_bit[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(31),
	cin => \transmite|contador_bit[30]~95\,
	combout => \transmite|contador_bit[31]~96_combout\);

-- Location: FF_X29_Y4_N31
\transmite|contador_bit[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[31]~96_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(31));

-- Location: LCCOMB_X28_Y4_N30
\transmite|contador_bit[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[23]~34_combout\ = ((!\transmite|clk_modulo~q\ & \transmite|estado.verificar~q\)) # (!\transmite|estado.inicial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|clk_modulo~q\,
	datab => \transmite|estado.verificar~q\,
	datad => \transmite|estado.inicial~q\,
	combout => \transmite|contador_bit[23]~34_combout\);

-- Location: LCCOMB_X28_Y4_N2
\transmite|contador_bit[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[23]~35_combout\ = (!\transmite|contador_bit[23]~34_combout\ & (((!\transmite|contador_bit\(31) & !\transmite|LessThan1~9_combout\)) # (!\transmite|estado.verificar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(31),
	datab => \transmite|estado.verificar~q\,
	datac => \transmite|contador_bit[23]~34_combout\,
	datad => \transmite|LessThan1~9_combout\,
	combout => \transmite|contador_bit[23]~35_combout\);

-- Location: FF_X29_Y5_N9
\transmite|contador_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[4]~42_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(4));

-- Location: LCCOMB_X29_Y5_N10
\transmite|contador_bit[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[5]~44_combout\ = (\transmite|contador_bit\(5) & (!\transmite|contador_bit[4]~43\)) # (!\transmite|contador_bit\(5) & ((\transmite|contador_bit[4]~43\) # (GND)))
-- \transmite|contador_bit[5]~45\ = CARRY((!\transmite|contador_bit[4]~43\) # (!\transmite|contador_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(5),
	datad => VCC,
	cin => \transmite|contador_bit[4]~43\,
	combout => \transmite|contador_bit[5]~44_combout\,
	cout => \transmite|contador_bit[5]~45\);

-- Location: FF_X29_Y5_N11
\transmite|contador_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[5]~44_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(5));

-- Location: LCCOMB_X29_Y5_N12
\transmite|contador_bit[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[6]~46_combout\ = (\transmite|contador_bit\(6) & (\transmite|contador_bit[5]~45\ $ (GND))) # (!\transmite|contador_bit\(6) & (!\transmite|contador_bit[5]~45\ & VCC))
-- \transmite|contador_bit[6]~47\ = CARRY((\transmite|contador_bit\(6) & !\transmite|contador_bit[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(6),
	datad => VCC,
	cin => \transmite|contador_bit[5]~45\,
	combout => \transmite|contador_bit[6]~46_combout\,
	cout => \transmite|contador_bit[6]~47\);

-- Location: FF_X29_Y5_N13
\transmite|contador_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[6]~46_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(6));

-- Location: LCCOMB_X29_Y5_N14
\transmite|contador_bit[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[7]~48_combout\ = (\transmite|contador_bit\(7) & (!\transmite|contador_bit[6]~47\)) # (!\transmite|contador_bit\(7) & ((\transmite|contador_bit[6]~47\) # (GND)))
-- \transmite|contador_bit[7]~49\ = CARRY((!\transmite|contador_bit[6]~47\) # (!\transmite|contador_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(7),
	datad => VCC,
	cin => \transmite|contador_bit[6]~47\,
	combout => \transmite|contador_bit[7]~48_combout\,
	cout => \transmite|contador_bit[7]~49\);

-- Location: FF_X29_Y5_N15
\transmite|contador_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[7]~48_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(7));

-- Location: LCCOMB_X29_Y5_N16
\transmite|contador_bit[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[8]~50_combout\ = (\transmite|contador_bit\(8) & (\transmite|contador_bit[7]~49\ $ (GND))) # (!\transmite|contador_bit\(8) & (!\transmite|contador_bit[7]~49\ & VCC))
-- \transmite|contador_bit[8]~51\ = CARRY((\transmite|contador_bit\(8) & !\transmite|contador_bit[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(8),
	datad => VCC,
	cin => \transmite|contador_bit[7]~49\,
	combout => \transmite|contador_bit[8]~50_combout\,
	cout => \transmite|contador_bit[8]~51\);

-- Location: FF_X29_Y5_N17
\transmite|contador_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[8]~50_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(8));

-- Location: LCCOMB_X29_Y5_N18
\transmite|contador_bit[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[9]~52_combout\ = (\transmite|contador_bit\(9) & (!\transmite|contador_bit[8]~51\)) # (!\transmite|contador_bit\(9) & ((\transmite|contador_bit[8]~51\) # (GND)))
-- \transmite|contador_bit[9]~53\ = CARRY((!\transmite|contador_bit[8]~51\) # (!\transmite|contador_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(9),
	datad => VCC,
	cin => \transmite|contador_bit[8]~51\,
	combout => \transmite|contador_bit[9]~52_combout\,
	cout => \transmite|contador_bit[9]~53\);

-- Location: FF_X29_Y5_N19
\transmite|contador_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[9]~52_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(9));

-- Location: LCCOMB_X29_Y5_N20
\transmite|contador_bit[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[10]~54_combout\ = (\transmite|contador_bit\(10) & (\transmite|contador_bit[9]~53\ $ (GND))) # (!\transmite|contador_bit\(10) & (!\transmite|contador_bit[9]~53\ & VCC))
-- \transmite|contador_bit[10]~55\ = CARRY((\transmite|contador_bit\(10) & !\transmite|contador_bit[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(10),
	datad => VCC,
	cin => \transmite|contador_bit[9]~53\,
	combout => \transmite|contador_bit[10]~54_combout\,
	cout => \transmite|contador_bit[10]~55\);

-- Location: FF_X29_Y5_N21
\transmite|contador_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[10]~54_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(10));

-- Location: LCCOMB_X29_Y5_N22
\transmite|contador_bit[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[11]~56_combout\ = (\transmite|contador_bit\(11) & (!\transmite|contador_bit[10]~55\)) # (!\transmite|contador_bit\(11) & ((\transmite|contador_bit[10]~55\) # (GND)))
-- \transmite|contador_bit[11]~57\ = CARRY((!\transmite|contador_bit[10]~55\) # (!\transmite|contador_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(11),
	datad => VCC,
	cin => \transmite|contador_bit[10]~55\,
	combout => \transmite|contador_bit[11]~56_combout\,
	cout => \transmite|contador_bit[11]~57\);

-- Location: FF_X29_Y5_N23
\transmite|contador_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[11]~56_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(11));

-- Location: LCCOMB_X29_Y5_N24
\transmite|contador_bit[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[12]~58_combout\ = (\transmite|contador_bit\(12) & (\transmite|contador_bit[11]~57\ $ (GND))) # (!\transmite|contador_bit\(12) & (!\transmite|contador_bit[11]~57\ & VCC))
-- \transmite|contador_bit[12]~59\ = CARRY((\transmite|contador_bit\(12) & !\transmite|contador_bit[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(12),
	datad => VCC,
	cin => \transmite|contador_bit[11]~57\,
	combout => \transmite|contador_bit[12]~58_combout\,
	cout => \transmite|contador_bit[12]~59\);

-- Location: FF_X28_Y4_N9
\transmite|contador_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \transmite|contador_bit[12]~58_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	sload => VCC,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(12));

-- Location: LCCOMB_X29_Y5_N26
\transmite|contador_bit[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[13]~60_combout\ = (\transmite|contador_bit\(13) & (!\transmite|contador_bit[12]~59\)) # (!\transmite|contador_bit\(13) & ((\transmite|contador_bit[12]~59\) # (GND)))
-- \transmite|contador_bit[13]~61\ = CARRY((!\transmite|contador_bit[12]~59\) # (!\transmite|contador_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(13),
	datad => VCC,
	cin => \transmite|contador_bit[12]~59\,
	combout => \transmite|contador_bit[13]~60_combout\,
	cout => \transmite|contador_bit[13]~61\);

-- Location: FF_X29_Y5_N27
\transmite|contador_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[13]~60_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(13));

-- Location: LCCOMB_X29_Y5_N28
\transmite|contador_bit[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[14]~62_combout\ = (\transmite|contador_bit\(14) & (\transmite|contador_bit[13]~61\ $ (GND))) # (!\transmite|contador_bit\(14) & (!\transmite|contador_bit[13]~61\ & VCC))
-- \transmite|contador_bit[14]~63\ = CARRY((\transmite|contador_bit\(14) & !\transmite|contador_bit[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(14),
	datad => VCC,
	cin => \transmite|contador_bit[13]~61\,
	combout => \transmite|contador_bit[14]~62_combout\,
	cout => \transmite|contador_bit[14]~63\);

-- Location: FF_X29_Y5_N29
\transmite|contador_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[14]~62_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(14));

-- Location: LCCOMB_X29_Y5_N30
\transmite|contador_bit[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[15]~64_combout\ = (\transmite|contador_bit\(15) & (!\transmite|contador_bit[14]~63\)) # (!\transmite|contador_bit\(15) & ((\transmite|contador_bit[14]~63\) # (GND)))
-- \transmite|contador_bit[15]~65\ = CARRY((!\transmite|contador_bit[14]~63\) # (!\transmite|contador_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(15),
	datad => VCC,
	cin => \transmite|contador_bit[14]~63\,
	combout => \transmite|contador_bit[15]~64_combout\,
	cout => \transmite|contador_bit[15]~65\);

-- Location: FF_X28_Y4_N31
\transmite|contador_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \transmite|contador_bit[15]~64_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	sload => VCC,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(15));

-- Location: LCCOMB_X29_Y4_N0
\transmite|contador_bit[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[16]~66_combout\ = (\transmite|contador_bit\(16) & (\transmite|contador_bit[15]~65\ $ (GND))) # (!\transmite|contador_bit\(16) & (!\transmite|contador_bit[15]~65\ & VCC))
-- \transmite|contador_bit[16]~67\ = CARRY((\transmite|contador_bit\(16) & !\transmite|contador_bit[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(16),
	datad => VCC,
	cin => \transmite|contador_bit[15]~65\,
	combout => \transmite|contador_bit[16]~66_combout\,
	cout => \transmite|contador_bit[16]~67\);

-- Location: FF_X29_Y4_N1
\transmite|contador_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[16]~66_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(16));

-- Location: LCCOMB_X29_Y4_N2
\transmite|contador_bit[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[17]~68_combout\ = (\transmite|contador_bit\(17) & (!\transmite|contador_bit[16]~67\)) # (!\transmite|contador_bit\(17) & ((\transmite|contador_bit[16]~67\) # (GND)))
-- \transmite|contador_bit[17]~69\ = CARRY((!\transmite|contador_bit[16]~67\) # (!\transmite|contador_bit\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(17),
	datad => VCC,
	cin => \transmite|contador_bit[16]~67\,
	combout => \transmite|contador_bit[17]~68_combout\,
	cout => \transmite|contador_bit[17]~69\);

-- Location: FF_X29_Y4_N3
\transmite|contador_bit[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[17]~68_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(17));

-- Location: LCCOMB_X29_Y4_N4
\transmite|contador_bit[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[18]~70_combout\ = (\transmite|contador_bit\(18) & (\transmite|contador_bit[17]~69\ $ (GND))) # (!\transmite|contador_bit\(18) & (!\transmite|contador_bit[17]~69\ & VCC))
-- \transmite|contador_bit[18]~71\ = CARRY((\transmite|contador_bit\(18) & !\transmite|contador_bit[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(18),
	datad => VCC,
	cin => \transmite|contador_bit[17]~69\,
	combout => \transmite|contador_bit[18]~70_combout\,
	cout => \transmite|contador_bit[18]~71\);

-- Location: FF_X29_Y4_N5
\transmite|contador_bit[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[18]~70_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(18));

-- Location: LCCOMB_X29_Y4_N6
\transmite|contador_bit[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[19]~72_combout\ = (\transmite|contador_bit\(19) & (!\transmite|contador_bit[18]~71\)) # (!\transmite|contador_bit\(19) & ((\transmite|contador_bit[18]~71\) # (GND)))
-- \transmite|contador_bit[19]~73\ = CARRY((!\transmite|contador_bit[18]~71\) # (!\transmite|contador_bit\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(19),
	datad => VCC,
	cin => \transmite|contador_bit[18]~71\,
	combout => \transmite|contador_bit[19]~72_combout\,
	cout => \transmite|contador_bit[19]~73\);

-- Location: FF_X29_Y4_N7
\transmite|contador_bit[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[19]~72_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(19));

-- Location: LCCOMB_X29_Y4_N8
\transmite|contador_bit[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[20]~74_combout\ = (\transmite|contador_bit\(20) & (\transmite|contador_bit[19]~73\ $ (GND))) # (!\transmite|contador_bit\(20) & (!\transmite|contador_bit[19]~73\ & VCC))
-- \transmite|contador_bit[20]~75\ = CARRY((\transmite|contador_bit\(20) & !\transmite|contador_bit[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(20),
	datad => VCC,
	cin => \transmite|contador_bit[19]~73\,
	combout => \transmite|contador_bit[20]~74_combout\,
	cout => \transmite|contador_bit[20]~75\);

-- Location: FF_X29_Y4_N9
\transmite|contador_bit[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[20]~74_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(20));

-- Location: LCCOMB_X29_Y4_N10
\transmite|contador_bit[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[21]~76_combout\ = (\transmite|contador_bit\(21) & (!\transmite|contador_bit[20]~75\)) # (!\transmite|contador_bit\(21) & ((\transmite|contador_bit[20]~75\) # (GND)))
-- \transmite|contador_bit[21]~77\ = CARRY((!\transmite|contador_bit[20]~75\) # (!\transmite|contador_bit\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(21),
	datad => VCC,
	cin => \transmite|contador_bit[20]~75\,
	combout => \transmite|contador_bit[21]~76_combout\,
	cout => \transmite|contador_bit[21]~77\);

-- Location: FF_X29_Y4_N11
\transmite|contador_bit[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[21]~76_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(21));

-- Location: LCCOMB_X29_Y4_N12
\transmite|contador_bit[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[22]~78_combout\ = (\transmite|contador_bit\(22) & (\transmite|contador_bit[21]~77\ $ (GND))) # (!\transmite|contador_bit\(22) & (!\transmite|contador_bit[21]~77\ & VCC))
-- \transmite|contador_bit[22]~79\ = CARRY((\transmite|contador_bit\(22) & !\transmite|contador_bit[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(22),
	datad => VCC,
	cin => \transmite|contador_bit[21]~77\,
	combout => \transmite|contador_bit[22]~78_combout\,
	cout => \transmite|contador_bit[22]~79\);

-- Location: FF_X29_Y4_N13
\transmite|contador_bit[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[22]~78_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(22));

-- Location: FF_X29_Y4_N15
\transmite|contador_bit[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[23]~80_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(23));

-- Location: LCCOMB_X28_Y4_N26
\transmite|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~6_combout\ = (!\transmite|contador_bit\(23) & (!\transmite|contador_bit\(22) & (!\transmite|contador_bit\(21) & !\transmite|contador_bit\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(23),
	datab => \transmite|contador_bit\(22),
	datac => \transmite|contador_bit\(21),
	datad => \transmite|contador_bit\(24),
	combout => \transmite|LessThan1~6_combout\);

-- Location: LCCOMB_X30_Y4_N20
\transmite|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~5_combout\ = (!\transmite|contador_bit\(20) & (!\transmite|contador_bit\(19) & (!\transmite|contador_bit\(18) & !\transmite|contador_bit\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(20),
	datab => \transmite|contador_bit\(19),
	datac => \transmite|contador_bit\(18),
	datad => \transmite|contador_bit\(17),
	combout => \transmite|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y4_N28
\transmite|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~7_combout\ = (!\transmite|contador_bit\(26) & (!\transmite|contador_bit\(28) & (!\transmite|contador_bit\(27) & !\transmite|contador_bit\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(26),
	datab => \transmite|contador_bit\(28),
	datac => \transmite|contador_bit\(27),
	datad => \transmite|contador_bit\(25),
	combout => \transmite|LessThan1~7_combout\);

-- Location: LCCOMB_X28_Y4_N22
\transmite|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~8_combout\ = (!\transmite|contador_bit\(29) & (!\transmite|contador_bit\(30) & \transmite|LessThan1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(29),
	datac => \transmite|contador_bit\(30),
	datad => \transmite|LessThan1~7_combout\,
	combout => \transmite|LessThan1~8_combout\);

-- Location: LCCOMB_X28_Y4_N6
\transmite|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~3_combout\ = (!\transmite|contador_bit\(16) & (!\transmite|contador_bit\(15) & (!\transmite|contador_bit\(13) & !\transmite|contador_bit\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(16),
	datab => \transmite|contador_bit\(15),
	datac => \transmite|contador_bit\(13),
	datad => \transmite|contador_bit\(14),
	combout => \transmite|LessThan1~3_combout\);

-- Location: LCCOMB_X28_Y4_N4
\transmite|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~2_combout\ = (!\transmite|contador_bit\(10) & (!\transmite|contador_bit\(12) & (!\transmite|contador_bit\(9) & !\transmite|contador_bit\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(10),
	datab => \transmite|contador_bit\(12),
	datac => \transmite|contador_bit\(9),
	datad => \transmite|contador_bit\(11),
	combout => \transmite|LessThan1~2_combout\);

-- Location: LCCOMB_X28_Y4_N14
\transmite|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~1_combout\ = (!\transmite|contador_bit\(8) & (!\transmite|contador_bit\(7) & (!\transmite|contador_bit\(6) & !\transmite|contador_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(8),
	datab => \transmite|contador_bit\(7),
	datac => \transmite|contador_bit\(6),
	datad => \transmite|contador_bit\(5),
	combout => \transmite|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y4_N12
\transmite|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~0_combout\ = (!\transmite|contador_bit\(4) & (((!\transmite|contador_bit\(2) & !\transmite|contador_bit\(1))) # (!\transmite|contador_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(2),
	datab => \transmite|contador_bit\(4),
	datac => \transmite|contador_bit\(3),
	datad => \transmite|contador_bit\(1),
	combout => \transmite|LessThan1~0_combout\);

-- Location: LCCOMB_X28_Y4_N16
\transmite|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~4_combout\ = (\transmite|LessThan1~3_combout\ & (\transmite|LessThan1~2_combout\ & (\transmite|LessThan1~1_combout\ & \transmite|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|LessThan1~3_combout\,
	datab => \transmite|LessThan1~2_combout\,
	datac => \transmite|LessThan1~1_combout\,
	datad => \transmite|LessThan1~0_combout\,
	combout => \transmite|LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y4_N0
\transmite|LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan1~9_combout\ = (\transmite|LessThan1~6_combout\ & (\transmite|LessThan1~5_combout\ & (\transmite|LessThan1~8_combout\ & \transmite|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|LessThan1~6_combout\,
	datab => \transmite|LessThan1~5_combout\,
	datac => \transmite|LessThan1~8_combout\,
	datad => \transmite|LessThan1~4_combout\,
	combout => \transmite|LessThan1~9_combout\);

-- Location: LCCOMB_X28_Y4_N18
\transmite|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector1~1_combout\ = (!\transmite|Selector1~0_combout\ & ((\transmite|LessThan1~9_combout\) # ((\transmite|contador_bit\(31)) # (!\transmite|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|Selector1~0_combout\,
	datab => \transmite|LessThan1~9_combout\,
	datac => \transmite|contador_bit\(31),
	datad => \transmite|Selector2~0_combout\,
	combout => \transmite|Selector1~1_combout\);

-- Location: FF_X28_Y4_N19
\transmite|estado.inicial\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|Selector1~1_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|estado.inicial~q\);

-- Location: LCCOMB_X31_Y6_N4
\transmite|cuenta_baudios[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[0]~14_combout\ = \transmite|cuenta_baudios\(0) $ (VCC)
-- \transmite|cuenta_baudios[0]~15\ = CARRY(\transmite|cuenta_baudios\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(0),
	datad => VCC,
	combout => \transmite|cuenta_baudios[0]~14_combout\,
	cout => \transmite|cuenta_baudios[0]~15\);

-- Location: LCCOMB_X31_Y6_N30
\transmite|cuenta_baudios[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[8]~22_combout\ = (!\transmite|LessThan0~2_combout\) # (!\transmite|estado.inicial~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \transmite|estado.inicial~q\,
	datad => \transmite|LessThan0~2_combout\,
	combout => \transmite|cuenta_baudios[8]~22_combout\);

-- Location: FF_X31_Y6_N5
\transmite|cuenta_baudios[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[0]~14_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(0));

-- Location: LCCOMB_X31_Y6_N6
\transmite|cuenta_baudios[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[1]~16_combout\ = (\transmite|cuenta_baudios\(1) & (!\transmite|cuenta_baudios[0]~15\)) # (!\transmite|cuenta_baudios\(1) & ((\transmite|cuenta_baudios[0]~15\) # (GND)))
-- \transmite|cuenta_baudios[1]~17\ = CARRY((!\transmite|cuenta_baudios[0]~15\) # (!\transmite|cuenta_baudios\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(1),
	datad => VCC,
	cin => \transmite|cuenta_baudios[0]~15\,
	combout => \transmite|cuenta_baudios[1]~16_combout\,
	cout => \transmite|cuenta_baudios[1]~17\);

-- Location: FF_X31_Y6_N7
\transmite|cuenta_baudios[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[1]~16_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(1));

-- Location: LCCOMB_X31_Y6_N8
\transmite|cuenta_baudios[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[2]~18_combout\ = (\transmite|cuenta_baudios\(2) & (\transmite|cuenta_baudios[1]~17\ $ (GND))) # (!\transmite|cuenta_baudios\(2) & (!\transmite|cuenta_baudios[1]~17\ & VCC))
-- \transmite|cuenta_baudios[2]~19\ = CARRY((\transmite|cuenta_baudios\(2) & !\transmite|cuenta_baudios[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(2),
	datad => VCC,
	cin => \transmite|cuenta_baudios[1]~17\,
	combout => \transmite|cuenta_baudios[2]~18_combout\,
	cout => \transmite|cuenta_baudios[2]~19\);

-- Location: FF_X31_Y6_N9
\transmite|cuenta_baudios[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[2]~18_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(2));

-- Location: LCCOMB_X31_Y6_N10
\transmite|cuenta_baudios[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[3]~20_combout\ = (\transmite|cuenta_baudios\(3) & (!\transmite|cuenta_baudios[2]~19\)) # (!\transmite|cuenta_baudios\(3) & ((\transmite|cuenta_baudios[2]~19\) # (GND)))
-- \transmite|cuenta_baudios[3]~21\ = CARRY((!\transmite|cuenta_baudios[2]~19\) # (!\transmite|cuenta_baudios\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(3),
	datad => VCC,
	cin => \transmite|cuenta_baudios[2]~19\,
	combout => \transmite|cuenta_baudios[3]~20_combout\,
	cout => \transmite|cuenta_baudios[3]~21\);

-- Location: FF_X31_Y6_N11
\transmite|cuenta_baudios[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[3]~20_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(3));

-- Location: LCCOMB_X31_Y6_N12
\transmite|cuenta_baudios[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[4]~23_combout\ = (\transmite|cuenta_baudios\(4) & (\transmite|cuenta_baudios[3]~21\ $ (GND))) # (!\transmite|cuenta_baudios\(4) & (!\transmite|cuenta_baudios[3]~21\ & VCC))
-- \transmite|cuenta_baudios[4]~24\ = CARRY((\transmite|cuenta_baudios\(4) & !\transmite|cuenta_baudios[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(4),
	datad => VCC,
	cin => \transmite|cuenta_baudios[3]~21\,
	combout => \transmite|cuenta_baudios[4]~23_combout\,
	cout => \transmite|cuenta_baudios[4]~24\);

-- Location: FF_X31_Y6_N13
\transmite|cuenta_baudios[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[4]~23_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(4));

-- Location: LCCOMB_X31_Y6_N14
\transmite|cuenta_baudios[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[5]~25_combout\ = (\transmite|cuenta_baudios\(5) & (!\transmite|cuenta_baudios[4]~24\)) # (!\transmite|cuenta_baudios\(5) & ((\transmite|cuenta_baudios[4]~24\) # (GND)))
-- \transmite|cuenta_baudios[5]~26\ = CARRY((!\transmite|cuenta_baudios[4]~24\) # (!\transmite|cuenta_baudios\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(5),
	datad => VCC,
	cin => \transmite|cuenta_baudios[4]~24\,
	combout => \transmite|cuenta_baudios[5]~25_combout\,
	cout => \transmite|cuenta_baudios[5]~26\);

-- Location: FF_X31_Y6_N15
\transmite|cuenta_baudios[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[5]~25_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(5));

-- Location: LCCOMB_X31_Y6_N16
\transmite|cuenta_baudios[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[6]~27_combout\ = (\transmite|cuenta_baudios\(6) & (\transmite|cuenta_baudios[5]~26\ $ (GND))) # (!\transmite|cuenta_baudios\(6) & (!\transmite|cuenta_baudios[5]~26\ & VCC))
-- \transmite|cuenta_baudios[6]~28\ = CARRY((\transmite|cuenta_baudios\(6) & !\transmite|cuenta_baudios[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(6),
	datad => VCC,
	cin => \transmite|cuenta_baudios[5]~26\,
	combout => \transmite|cuenta_baudios[6]~27_combout\,
	cout => \transmite|cuenta_baudios[6]~28\);

-- Location: FF_X31_Y6_N17
\transmite|cuenta_baudios[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[6]~27_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(6));

-- Location: LCCOMB_X31_Y6_N18
\transmite|cuenta_baudios[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[7]~29_combout\ = (\transmite|cuenta_baudios\(7) & (!\transmite|cuenta_baudios[6]~28\)) # (!\transmite|cuenta_baudios\(7) & ((\transmite|cuenta_baudios[6]~28\) # (GND)))
-- \transmite|cuenta_baudios[7]~30\ = CARRY((!\transmite|cuenta_baudios[6]~28\) # (!\transmite|cuenta_baudios\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(7),
	datad => VCC,
	cin => \transmite|cuenta_baudios[6]~28\,
	combout => \transmite|cuenta_baudios[7]~29_combout\,
	cout => \transmite|cuenta_baudios[7]~30\);

-- Location: FF_X31_Y6_N19
\transmite|cuenta_baudios[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[7]~29_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(7));

-- Location: LCCOMB_X31_Y6_N20
\transmite|cuenta_baudios[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[8]~31_combout\ = (\transmite|cuenta_baudios\(8) & (\transmite|cuenta_baudios[7]~30\ $ (GND))) # (!\transmite|cuenta_baudios\(8) & (!\transmite|cuenta_baudios[7]~30\ & VCC))
-- \transmite|cuenta_baudios[8]~32\ = CARRY((\transmite|cuenta_baudios\(8) & !\transmite|cuenta_baudios[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(8),
	datad => VCC,
	cin => \transmite|cuenta_baudios[7]~30\,
	combout => \transmite|cuenta_baudios[8]~31_combout\,
	cout => \transmite|cuenta_baudios[8]~32\);

-- Location: FF_X31_Y6_N21
\transmite|cuenta_baudios[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[8]~31_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(8));

-- Location: LCCOMB_X31_Y6_N22
\transmite|cuenta_baudios[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[9]~33_combout\ = (\transmite|cuenta_baudios\(9) & (!\transmite|cuenta_baudios[8]~32\)) # (!\transmite|cuenta_baudios\(9) & ((\transmite|cuenta_baudios[8]~32\) # (GND)))
-- \transmite|cuenta_baudios[9]~34\ = CARRY((!\transmite|cuenta_baudios[8]~32\) # (!\transmite|cuenta_baudios\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(9),
	datad => VCC,
	cin => \transmite|cuenta_baudios[8]~32\,
	combout => \transmite|cuenta_baudios[9]~33_combout\,
	cout => \transmite|cuenta_baudios[9]~34\);

-- Location: FF_X31_Y6_N23
\transmite|cuenta_baudios[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[9]~33_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(9));

-- Location: LCCOMB_X31_Y6_N24
\transmite|cuenta_baudios[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[10]~35_combout\ = (\transmite|cuenta_baudios\(10) & (\transmite|cuenta_baudios[9]~34\ $ (GND))) # (!\transmite|cuenta_baudios\(10) & (!\transmite|cuenta_baudios[9]~34\ & VCC))
-- \transmite|cuenta_baudios[10]~36\ = CARRY((\transmite|cuenta_baudios\(10) & !\transmite|cuenta_baudios[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|cuenta_baudios\(10),
	datad => VCC,
	cin => \transmite|cuenta_baudios[9]~34\,
	combout => \transmite|cuenta_baudios[10]~35_combout\,
	cout => \transmite|cuenta_baudios[10]~36\);

-- Location: FF_X31_Y6_N25
\transmite|cuenta_baudios[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[10]~35_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(10));

-- Location: LCCOMB_X31_Y6_N26
\transmite|cuenta_baudios[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[11]~37_combout\ = (\transmite|cuenta_baudios\(11) & (!\transmite|cuenta_baudios[10]~36\)) # (!\transmite|cuenta_baudios\(11) & ((\transmite|cuenta_baudios[10]~36\) # (GND)))
-- \transmite|cuenta_baudios[11]~38\ = CARRY((!\transmite|cuenta_baudios[10]~36\) # (!\transmite|cuenta_baudios\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(11),
	datad => VCC,
	cin => \transmite|cuenta_baudios[10]~36\,
	combout => \transmite|cuenta_baudios[11]~37_combout\,
	cout => \transmite|cuenta_baudios[11]~38\);

-- Location: FF_X31_Y6_N27
\transmite|cuenta_baudios[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[11]~37_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(11));

-- Location: LCCOMB_X31_Y6_N28
\transmite|cuenta_baudios[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|cuenta_baudios[12]~39_combout\ = \transmite|cuenta_baudios[11]~38\ $ (!\transmite|cuenta_baudios\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \transmite|cuenta_baudios\(12),
	cin => \transmite|cuenta_baudios[11]~38\,
	combout => \transmite|cuenta_baudios[12]~39_combout\);

-- Location: FF_X31_Y6_N29
\transmite|cuenta_baudios[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|cuenta_baudios[12]~39_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|cuenta_baudios[8]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|cuenta_baudios\(12));

-- Location: LCCOMB_X30_Y6_N16
\transmite|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan0~0_combout\ = ((!\transmite|cuenta_baudios\(5) & ((!\transmite|cuenta_baudios\(3)) # (!\transmite|cuenta_baudios\(4))))) # (!\transmite|cuenta_baudios\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(4),
	datab => \transmite|cuenta_baudios\(3),
	datac => \transmite|cuenta_baudios\(5),
	datad => \transmite|cuenta_baudios\(6),
	combout => \transmite|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y6_N0
\transmite|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan0~1_combout\ = (!\transmite|cuenta_baudios\(9) & (!\transmite|cuenta_baudios\(8) & (\transmite|LessThan0~0_combout\ & !\transmite|cuenta_baudios\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(9),
	datab => \transmite|cuenta_baudios\(8),
	datac => \transmite|LessThan0~0_combout\,
	datad => \transmite|cuenta_baudios\(7),
	combout => \transmite|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y6_N2
\transmite|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|LessThan0~2_combout\ = ((!\transmite|cuenta_baudios\(11) & ((\transmite|LessThan0~1_combout\) # (!\transmite|cuenta_baudios\(10))))) # (!\transmite|cuenta_baudios\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|cuenta_baudios\(12),
	datab => \transmite|cuenta_baudios\(10),
	datac => \transmite|cuenta_baudios\(11),
	datad => \transmite|LessThan0~1_combout\,
	combout => \transmite|LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y6_N14
\transmite|clk_modulo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|clk_modulo~0_combout\ = (\transmite|estado.inicial~q\ & ((!\transmite|LessThan0~2_combout\))) # (!\transmite|estado.inicial~q\ & (\transmite|clk_modulo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmite|estado.inicial~q\,
	datac => \transmite|clk_modulo~q\,
	datad => \transmite|LessThan0~2_combout\,
	combout => \transmite|clk_modulo~0_combout\);

-- Location: FF_X29_Y6_N15
\transmite|clk_modulo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|clk_modulo~0_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|clk_modulo~q\);

-- Location: LCCOMB_X28_Y4_N8
\transmite|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector2~0_combout\ = (\transmite|clk_modulo~q\ & \transmite|estado.verificar~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|clk_modulo~q\,
	datab => \transmite|estado.verificar~q\,
	combout => \transmite|Selector2~0_combout\);

-- Location: LCCOMB_X28_Y4_N20
\transmite|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector2~1_combout\ = (!\transmite|estado.inicial~q\ & (\comp2|acti~q\ & ((\pir_2~input_o\) # (\pir_1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pir_2~input_o\,
	datab => \pir_1~input_o\,
	datac => \transmite|estado.inicial~q\,
	datad => \comp2|acti~q\,
	combout => \transmite|Selector2~1_combout\);

-- Location: LCCOMB_X28_Y4_N24
\transmite|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector2~2_combout\ = (\transmite|Selector2~1_combout\) # ((\transmite|Selector2~0_combout\ & ((\transmite|LessThan1~9_combout\) # (\transmite|contador_bit\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|Selector2~0_combout\,
	datab => \transmite|LessThan1~9_combout\,
	datac => \transmite|contador_bit\(31),
	datad => \transmite|Selector2~1_combout\,
	combout => \transmite|Selector2~2_combout\);

-- Location: FF_X28_Y4_N25
\transmite|estado.transmision\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|Selector2~2_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|estado.transmision~q\);

-- Location: LCCOMB_X29_Y6_N20
\transmite|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector3~0_combout\ = (\transmite|estado.transmision~q\) # ((\transmite|estado.verificar~q\ & !\transmite|clk_modulo~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \transmite|estado.transmision~q\,
	datac => \transmite|estado.verificar~q\,
	datad => \transmite|clk_modulo~q\,
	combout => \transmite|Selector3~0_combout\);

-- Location: FF_X29_Y6_N21
\transmite|estado.verificar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|Selector3~0_combout\,
	clrn => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|estado.verificar~q\);

-- Location: FF_X29_Y5_N1
\transmite|contador_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[0]~32_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(0));

-- Location: LCCOMB_X29_Y5_N2
\transmite|contador_bit[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[1]~36_combout\ = (\transmite|contador_bit\(1) & (!\transmite|contador_bit[0]~33\)) # (!\transmite|contador_bit\(1) & ((\transmite|contador_bit[0]~33\) # (GND)))
-- \transmite|contador_bit[1]~37\ = CARRY((!\transmite|contador_bit[0]~33\) # (!\transmite|contador_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(1),
	datad => VCC,
	cin => \transmite|contador_bit[0]~33\,
	combout => \transmite|contador_bit[1]~36_combout\,
	cout => \transmite|contador_bit[1]~37\);

-- Location: FF_X29_Y5_N3
\transmite|contador_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[1]~36_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(1));

-- Location: LCCOMB_X29_Y5_N4
\transmite|contador_bit[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|contador_bit[2]~38_combout\ = (\transmite|contador_bit\(2) & (\transmite|contador_bit[1]~37\ $ (GND))) # (!\transmite|contador_bit\(2) & (!\transmite|contador_bit[1]~37\ & VCC))
-- \transmite|contador_bit[2]~39\ = CARRY((\transmite|contador_bit\(2) & !\transmite|contador_bit[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \transmite|contador_bit\(2),
	datad => VCC,
	cin => \transmite|contador_bit[1]~37\,
	combout => \transmite|contador_bit[2]~38_combout\,
	cout => \transmite|contador_bit[2]~39\);

-- Location: FF_X29_Y5_N5
\transmite|contador_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[2]~38_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(2));

-- Location: FF_X29_Y5_N7
\transmite|contador_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|contador_bit[3]~40_combout\,
	clrn => \Rst_n~input_o\,
	sclr => \transmite|estado.verificar~q\,
	ena => \transmite|contador_bit[23]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|contador_bit\(3));

-- Location: LCCOMB_X29_Y6_N26
\transmite|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector0~0_combout\ = ((\transmite|contador_bit\(0) & (\transmite|contador_bit\(3) $ (\transmite|contador_bit\(2))))) # (!\transmite|estado.transmision~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|contador_bit\(3),
	datab => \transmite|contador_bit\(0),
	datac => \transmite|contador_bit\(2),
	datad => \transmite|estado.transmision~q\,
	combout => \transmite|Selector0~0_combout\);

-- Location: LCCOMB_X29_Y6_N12
\transmite|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmite|Selector0~1_combout\ = (\transmite|Selector0~0_combout\ & ((\transmite|tx_temp~q\) # (!\transmite|estado.verificar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmite|Selector0~0_combout\,
	datac => \transmite|tx_temp~q\,
	datad => \transmite|estado.verificar~q\,
	combout => \transmite|Selector0~1_combout\);

-- Location: FF_X29_Y6_N13
\transmite|tx_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \transmite|Selector0~1_combout\,
	ena => \Rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmite|tx_temp~q\);

ww_alarma <= \alarma~output_o\;

ww_PWM1 <= \PWM1~output_o\;

ww_led_datos <= \led_datos~output_o\;

ww_leds_salida(0) <= \leds_salida[0]~output_o\;

ww_leds_salida(1) <= \leds_salida[1]~output_o\;

ww_leds_salida(2) <= \leds_salida[2]~output_o\;

ww_leds_salida(3) <= \leds_salida[3]~output_o\;

ww_leds_salida(4) <= \leds_salida[4]~output_o\;

ww_leds_salida(5) <= \leds_salida[5]~output_o\;

ww_leds_salida(6) <= \leds_salida[6]~output_o\;

ww_leds_salida(7) <= \leds_salida[7]~output_o\;

ww_led_pir <= \led_pir~output_o\;

ww_tx_data <= \tx_data~output_o\;

ww_led_activo <= \led_activo~output_o\;
END structure;


