library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity ingresado is
    port (
		  nuevodato : in std_logic;
		  numero : in std_logic_vector(7 downto 0);
		  acumulado : out std_logic_vector(23  downto 0)
    );
end entity ingresado;

architecture funcionamiento of ingresado is
signal acumulado_aux : std_logic_vector(23  downto 0) := (others => '0');
signal dato_anterior : std_logic;
begin

process(nuevodato)
begin
	if (nuevodato'event and (nuevodato = '1')) then
		acumulado_aux <= numero & acumulado_aux(23 downto 8);
	end if;
end process;

acumulado <= acumulado_aux;

end funcionamiento;