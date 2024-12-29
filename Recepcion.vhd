library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity recepcion is
    port (
		  clk   : in  std_logic;   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n      : in  std_logic;     -- Reset input
		  bit_palabra : in std_logic;
		  palabra	: out std_logic_vector(7 downto 0);
		  salida : out std_logic_vector(7 downto 0);
		  datonuevo : out std_logic
    );
end entity recepcion;

architecture comportamiento of recepcion is

type estados_leer is (inicial,lectura);
signal estado : estados_leer;
signal registro  :  std_logic_vector(8 downto 0) := (others => '0'); --Registro
signal pulso_baudios  :  std_logic := '0';                    --Pulso por cada baudio
signal pulso_muestra  :  std_logic := '0';                     --Pulso de muestreo
signal datonuevo_aux : std_logic := '0';
 begin
 process(Rst_n,clk)   -- Divisores de frecuencia
  	 
	 variable cuenta_baudios :  integer range 0 to 50000000/9600-1 := 0;         	--Período de los baudios
    variable cuenta_muestra :  integer range 0 to 50000000/9600/16-1 := 0; 	--Periodo del muestreo (En el medio)

	 begin
		
		if Rst_n = '0' then                            
			pulso_baudios <= '0';                               
			pulso_muestra <= '0';                                
			cuenta_baudios := 0;                                  
			cuenta_muestra := 0;  
			
		 elsif (clk'event and clk='1') then
		 
			if (cuenta_baudios < 50000000/9600-1) then        
			   cuenta_baudios := cuenta_baudios + 1;                   
			   pulso_baudios <= '0';                           
			else                                             
			  cuenta_baudios := 0;                                  
			  pulso_baudios <= '1';                                
			  cuenta_muestra := 0;
			end if;

			if(cuenta_muestra < 50000000/9600/16-1) then 
			  cuenta_muestra := cuenta_muestra + 1;                         
			  pulso_muestra <= '0';                                     
			else                                             
			  cuenta_muestra := 0;                                   
			  pulso_muestra <= '1';                                  
			end if;
		 end if;
	end process;
	
 process(clk,pulso_muestra) is
	variable contador_bits : integer range 0 to 10 :=0;
	variable contador_ticks : integer range 0 to 15 := 0 ;
	variable contador1 : integer range 0 to 50000000 :=0;
 begin
			if Rst_n= '0' then
				contador_ticks := 0;
				contador_bits := 0;
				palabra <= (others => '1');
				datonuevo_aux <= '0';
				estado <= inicial;
			elsif(clk'event and clk='1' and pulso_muestra = '1') then
				--datonuevo_aux <= '0';
				--datonuevo_aux <= not datonuevo_aux;
				 case estado is
				 when inicial => 			 -- No se está en el punto medio del bit inicial	
				 if (bit_palabra = '0') then                                      
					if(contador_ticks < 8) then                        
					  contador_ticks := contador_ticks + 1; 
					  estado <= inicial;
					else                                                --Iniciar la recepción de datos
					  contador_bits := 0;                                         
					  contador_ticks := 0;   
					  registro <= bit_palabra & registro(8 downto 1);				  
					  estado <= lectura;  
					end if;	
				 else                                                   --No se leyó el bit de entrada, se mantiene en estado inicial
					contador_ticks := 0;                                        
					estado <= inicial;		
				 end if;	
						when  lectura => 
							if (contador_ticks < 15) then
								contador_ticks := contador_ticks + 1;
								estado <= lectura;
							elsif(contador_bits < 8 ) then
								contador_ticks := 0;
								contador_bits := contador_bits +1;
								registro <= bit_palabra & registro(8 downto 1);
								estado <= lectura;
							else                                                  	
								palabra <= not (registro(8 downto 1));       --Salida
								salida <= (registro(8 downto 1));
								estado <= inicial;								--Vuelve a estado inicial
								datonuevo_aux <= not datonuevo_aux;
							end if;
						end case;
			end if;	
			if rising_edge(clk) then
				contador1 := contador1 + 1;
				if (contador1 = 50000000) then
					datonuevo_aux <= '0';
				end if;
			end if;	
			
--datonuevo <= datonuevo_aux;
end process;
--datonuevo <= datonuevo_aux;
datonuevo <= not datonuevo_aux;
end comportamiento;