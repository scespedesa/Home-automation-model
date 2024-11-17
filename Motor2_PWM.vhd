library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY Motor2_PWM is

    generic( Max: natural := 500000);

    Port ( clk :  in  STD_LOGIC;--reloj de 50MHz
			pir_1 : in std_logic;
			pir_2 : in std_logic;
			pir_3 : in std_logic;
			pir_4: in std_logic;
			bell : out std_logic;
		--	seguridad_activa : in std_logic;
		 selector :  in  STD_LOGIC_VECTOR (1 downto 0);--selecciona las 4 posiciones
		 PWM :  out  STD_LOGIC;--terminal donde sale la señal de PWM
		 led : out std_logic;
		 interruptor : in std_logic;
		 led2 : out std_logic);

end Motor2_PWM;

 

ARCHITECTURE comportamiento of Motor2_PWM is

   signal PWM_Count: integer range 1 to Max;--500000;
	signal alarma : std_logic :='1';

begin


   process( clk, selector,PWM_Count)

		constant pos1: integer := 50000;  --representa a 1.00ms = 0°

		constant pos2: integer := 62500;  --representa a 1.25ms = 45°

		constant pos3: integer := 75000;  --representa a 1.50ms = 90°

		constant pos4: integer := 100000; --representa a 2.00ms = 180°

          begin

			 if rising_edge(clk)then PWM_Count <= PWM_Count + 1;

			 end if;
			 if pir_1='1' then--con el selector en 00 se posiciona en servo en 0°

						if PWM_Count <= pos1 then 
						PWM <= '1';
						else
							PWM <= '0';

						end if;
				end if;
			if    pir_2='1' then-- con el selector en 01 se posiciona en servo en 45°

						if PWM_Count <= pos2 then 
						PWM <= '1';
						else 
						PWM <= '0';

						end if;
			end if;			

			if  pir_3='1' then-- con el selector en 11 se posiciona en servo en 90°

				if PWM_Count <= pos3 then 
				PWM <= '1';
				else                                       
				PWM <= '0';
				end if;

			end if;
			if pir_4='1' then-- con el selector en 10 se posiciona en servo en 180°

				if PWM_Count <= pos4 then 
				PWM <= '1';
				else
				PWM <= '0';

				end if;
		end if;
end process;
process(pir_1,pir_2,pir_3,pir_4)
begin
			 if  (pir_1='1' or pir_2='1' or pir_3='1' or pir_4='1') then
					alarma <= '0';
			end if;
end process;

led <= not pir_1;
led2 <= not pir_2;
--bell <= alarma;
bell <= interruptor; 
end comportamiento;