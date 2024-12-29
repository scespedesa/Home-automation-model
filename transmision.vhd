library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity transmision is
    port (
		  clk   : in  std_logic;   --clock de la uart 1/9600 sacarlo con el divde frecuencia
        Rst_n      : in  std_logic;     -- Reset input
		  start: in std_logic;
		 -- letra : in std_logic_vector(9 downto 0);
		 -- datomostrado : out std_logic;
		  tx : out std_logic
    );
end entity transmision;
architecture funcionamiento of transmision is
signal clk_modulo : std_logic := '0';
signal palabra_tx : std_logic_vector(9 downto 0);
signal tx_temp : std_logic;
type estados_transmision is (inicial,transmision,verificar);
signal estado : estados_transmision := inicial;
signal contador_bit : integer :=0;


begin
process(Rst_n,clk)   -- Divisores de frecuencia
  	 
	 variable cuenta_baudios :  integer range 0 to 50000000/9600 := 0;         	--Período de los baudios
	 begin
		
		if Rst_n = '0' then                            
			clk_modulo <= '0';                                                        
			cuenta_baudios := 0;                                  
		elsif (rising_edge(clk)) then
			if(estado = inicial) then
				cuenta_baudios := 0;
			elsif (cuenta_baudios < 50000000/9600) then        
			   cuenta_baudios := cuenta_baudios + 1;                   
			   clk_modulo <= '0';                           
			else                                             
			  cuenta_baudios := 0;                                  
			  clk_modulo <= '1';                                
			end if;
		 end if;	 
end process;

process(clk)
begin 
	if Rst_n = '0' then                                                          
		contador_bit <= 0;
		estado <= inicial;
	elsif (rising_edge(clk)) then
		case estado is
		when inicial =>
			tx_temp <= '1';
			if (start = '1') then
				estado <= transmision;
				palabra_tx <= ('1' & X"50" & '0');
			else 
				estado <= inicial;
			end if;
		when transmision =>
			tx_temp <= palabra_tx(contador_bit);
			contador_bit <= contador_bit + 1 ;
			estado <= verificar;
		when verificar =>
			if(clk_modulo = '1') then 
				if(contador_bit < 10) then
					estado <= transmision;
				else
					estado <= inicial;
					contador_bit <= 0;
				end if;
			else
					estado <= verificar;
			end if;
				when others => estado <= inicial;
		end case;
	end if;
end process;
tx <= tx_temp;
end funcionamiento;