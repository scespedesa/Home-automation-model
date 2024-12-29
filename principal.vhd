library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity principal is
    port (
        clk       : in std_logic;         -- Clock
        --activo     : in std_logic;         -- Reset
		  comprobar_in , cambiar_in : in std_logic;
		   alarma : out std_logic;
		   pir_1 : in std_logic;
			pir_2 : in std_logic;
--			pir_3 : in std_logic;
--			pir_4: in std_logic;
			PWM1 : out std_logic;
			Rst_n     : in std_logic;         -- Reset
			Rx_in : in std_logic;
			led_datos : out std_logic;
			leds_salida :  out std_logic_vector(7 downto 0);
			led_pir : out std_logic;
			
			selector : in std_logic;
			tx_data : out std_logic;
			led_activo : out std_logic
			--Conmuta: out std_logic
	 );
end entity principal;

architecture comportamiento of principal is
signal acumulado_aux : std_logic_vector(23  downto 0);
signal contrasenia :  std_logic_vector(23  downto 0) := "001100010011001000110011" ; --123
signal salida : std_logic_vector(7 downto 0);
signal estado_activo_aux :std_logic;
signal alarma_1 : std_logic :='0' ;
--signal alarma2 :std_logic;
--signal alarma3 :std_logic;
--signal alarma4 :std_logic := '1';
signal clave_ingresada_aux :  std_logic_vector(23  downto 0); 
signal cambiar_contra , comprobar_contra : std_logic;
signal frec_reb : std_logic;
signal nuevodato_aux : std_logic;
signal Rst_n_aux :  std_logic;
signal datonuevo_aux : std_logic := '0';
signal alarma_aux : std_logic :='1';
signal inicia_tx : std_logic := '0';



component div_frec is
		port(
		clk: in  std_logic;
		Nciclos: in	integer;
		f: out std_logic
		);
end component;

component anti_rebote is
		port( clk, pulsador: in std_logic;
		cambio : out std_logic);
end component;

component sistema is
    port (
		  comprobar, cambiar: in  std_logic;  
		  clave_ingresada: in  std_logic_vector(23  downto 0);  
		  alarma : out std_logic;
		  estado_activo : out std_logic
    );
end component sistema;

component ingresado is
    port (
		  nuevodato : in std_logic;
		  numero : in std_logic_vector(7 downto 0);
		  acumulado : out std_logic_vector(23  downto 0)
    );
end component ingresado;
component Recepcion is
		port (
		  clk   : in  std_logic;   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n      : in  std_logic;     -- Reset input
		  bit_palabra : in std_logic;
		  palabra	: out std_logic_vector(7 downto 0);
		  salida : out std_logic_vector(7 downto 0);
		  datonuevo : out std_logic
		);
end component Recepcion;
component Motor_PWM is
 port  (clk :  in  std_logic;--reloj de 50MHz
		pir_1 : in std_logic;
		pir_2 : in std_logic;
		bell : out std_logic;
		led : out std_logic;
		selector :  in std_logic;
		PWM1 :  out  std_logic;--terminal donde sale la señal de PWM
		estado_activo : in std_logic 
	);
end component Motor_PWM;
component transmision is
    port (
		  clk   : in  std_logic;   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n      : in  std_logic;     -- Reset input
		  start: in std_logic;
		  tx : out std_logic
    );
end component transmision;

begin
	transmite : transmision 
    port map(
		  clk  => clk ,
        Rst_n => Rst_n,
		  start => alarma_1,
		  tx => tx_data
    );
	div_anti: div_frec
	port map( 
		clk => clk,
		NCiclos => 100,
		f => frec_reb);
	antireb1 : anti_rebote
	port map(
		pulsador => cambiar_in,
		clk => frec_reb,
		cambio => cambiar_contra);
	antireb2 : anti_rebote
	port map(
		pulsador => comprobar_in,
		clk => frec_reb,
		cambio => comprobar_contra);
	antireb3 : anti_rebote
	port map(
		pulsador => Rst_n,
		clk => frec_reb,
		cambio => Rst_n_aux);
	componente : ingresado
    port map(
		  nuevodato => datonuevo_aux,
		  numero => salida,
		  acumulado => acumulado_aux
    );

 comp2 : sistema
	 port map (
		  comprobar =>comprobar_in,
		  cambiar  =>cambiar_in,
		  clave_ingresada => acumulado_aux, 
		  alarma => alarma_aux,
		  estado_activo => estado_activo_aux);
	 comp3 : Motor_PWM
	 port map ( clk => clk,
		pir_1 => pir_1,
		pir_2 => pir_2,
		bell => alarma_1,
		selector => selector,
		led => led_pir,
		PWM1 => PWM1,
		estado_activo  => estado_activo_aux);
uart_rx : Recepcion 
		port map (
		  clk   => clk,   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n => Rst_n,     -- Reset input
		  bit_palabra => Rx_in,
		  palabra => leds_salida,
		  salida => salida,
		  datonuevo => datonuevo_aux
		);
--alarma <= (alarma1 or alarma4) and not estado_activo_aux ;
led_activo <= not estado_activo_aux ;
led_datos <=  datonuevo_aux ;
alarma <= alarma_aux;

--process(clk)
--variable contador1 : integer := 0;
--begin
--if rising_edge(clk) then
--				contador1 := contador1 + 1;
--				if estado_activo_aux= '1' and alarma_1 = '1' then
--					alarma_1 <=
--				(contador1 = 50000000) then
--					inicia_tx <= '0';
--				else 
--					inicia_tx <= alarma_1;
--				end if;
--end if;	
--end process;

end comportamiento;