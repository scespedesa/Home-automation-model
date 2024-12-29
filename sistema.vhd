library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity sistema is
    port (
		  comprobar, cambiar: in  std_logic;  
		  clave_ingresada : in  std_logic_vector(23  downto 0);  
		  alarma : out std_logic;
		  estado_activo : out std_logic
    );
end entity sistema;

architecture funcionamiento of sistema is

signal acti, c: std_logic := '0';
signal a , a1 : std_logic := '0';
signal cuenta, cuenta1: integer:= 0;
signal contrasenia : std_logic_vector(23  downto 0) := "001100010011000100110001";

begin
	process(comprobar)
		begin
		if rising_edge(comprobar) then	
			if (clave_ingresada = contrasenia) then
				--acti<='1';
				a <= '0';
				acti <= not acti;
				cuenta <= 0;
			else
				cuenta <= cuenta + 1;
				if cuenta >= 3 then
					a <= '1';
				end if;
			end if;
		end if;
	end process;
	
	process(cambiar)
	begin
		if rising_edge(cambiar) then
			if clave_ingresada = contrasenia and c = '0' then
					c <= '1';
					cuenta1 <= 0;
					a1 <= '0';
			elsif clave_ingresada /= contrasenia and c = '0' then
				cuenta1 <= cuenta1 + 1;
				if cuenta1 >= 3 then
					a1 <= '1';
				end if;
			else
				contrasenia <= clave_ingresada;
				a1 <= '0';
			end if;
		end if;
	end process;	
	alarma <= not (a or a1);
	estado_activo <= acti;
end funcionamiento;
