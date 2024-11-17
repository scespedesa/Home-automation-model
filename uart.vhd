library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity uart is
    port (
        clk       : in std_logic;         -- Clock
        Rst_n     : in std_logic;         -- Reset
		  Rx_in 		: in std_logic;
        RxData_out    : out std_logic_vector(7 downto 0); -- Received data
		  pulsador : in std_logic;
		  TxData : out std_logic
	 );
end entity uart;

architecture Behavioral of uart is
--signal clk_modulo : std_logic;
--signal clk_tick : std_logic;
signal salida : std_logic_vector(7 downto 0);
	component Recepcion is
		port (
		  clk   : in  std_logic;   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n      : in  std_logic;     -- Reset input
        --Tick       : in std_logic;     -- Each "BaudRate" pulses we create a tick pulse
		  bit_palabra : in std_logic;
		  palabra	: out std_logic_vector(7 downto 0)
		);
	end component Recepcion;

	component transmision is
		port (
		  clk   : in  std_logic;   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n      : in  std_logic;     -- Reset input
		  start : in std_logic;
		  tx	: out std_logic
		);
	end component transmision;

begin
	  uart_rx : Recepcion 
		port map (
		  clk   => clk,   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n => Rst_n,     -- Reset input
		  bit_palabra => Rx_in,
		  palabra => salida
		);
		
     uart_tx : transmision 
		port map (
		  clk   => clk,   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n => Rst_n,     -- Reset input
		  start => pulsador,
		  tx => TxData
		  );		

RxData_out <= salida;
end Behavioral;