library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

-- El divisor de frecuencia cuenta con la señal de reloj como entrada 
-- y como salida la señal con frecuencia disminuida

entity div_frec_baud is
generic (
	
		clk_tarjeta: integer := 50_000_000; 	--Frecuencia tarjeta
		baud_seg: 	 integer := 9_600; 			--Baudios por segundo HC-05
		muestreo: 	 integer := 16;          --Muestreo por baudio por segundo
		num_datos:	 integer := 8            --Entrada de 8 bits (ASCII)	
		);

	port(
		-- Input ports
		clk: in  std_logic;
		Rst_n : in std_logic;
		-- Output ports
		f_muestreo: out std_logic;
		f_baud : out std_logic
		);
		
end div_frec_baud;


architecture divisor of div_frec_baud is
signal pulso_baudios  :  std_logic := '0';                    --Pulso por cada baudio
signal pulso_muestra  :  std_logic := '0';                     --Pulso de muestreo
begin	
 process(Rst_n,clk)   -- Divisores de frecuencia
  	 
	 variable cuenta_baudios :  integer range 0 to clk_tarjeta/baud_seg-1 := 0;         	--Período de los baudios
    variable cuenta_muestra :  integer range 0 to clk_tarjeta/baud_seg/muestreo-1 := 0; 	--Periodo del muestreo (En el medio)

	 begin
		
		if Rst_n = '0' then                            
			pulso_baudios <= '0';                               
			pulso_muestra <= '0';                                
			cuenta_baudios := 0;                                  
			cuenta_muestra := 0;  
			
		 elsif (clk'event and clk='1') then
		 
			if (cuenta_baudios < clk_tarjeta/baud_seg-1) then        
			   cuenta_baudios := cuenta_baudios + 1;                   
			   pulso_baudios <= '0';                           
			else                                             
			  cuenta_baudios := 0;                                  
			  pulso_baudios <= '1';                                
			  cuenta_muestra := 0;
			end if;

			if(cuenta_muestra < clk_tarjeta/baud_seg/muestreo-1) then 
			  cuenta_muestra := cuenta_muestra + 1;                         
			  pulso_muestra <= '0';                                     
			else                                             
			  cuenta_muestra := 0;                                   
			  pulso_muestra <= '1';                                  
			end if;
		 end if;
		f_muestreo <=pulso_muestra;
		f_baud <= pulso_baudios;
	end process;
end divisor;