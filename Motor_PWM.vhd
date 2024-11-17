library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

ENTITY Motor_PWM is

    generic( Max: natural := 500000);

    Port ( clk :  in  STD_LOGIC;--reloj de 50MHz
			pir_1 : in std_logic;
			pir_2 : in std_logic;
			selector : in std_logic;
			bell : out std_logic;
		--	seguridad_activa : in std_logic;
		 --selector :  in  STD_LOGIC_VECTOR (1 downto 0);--selecciona las 4 posiciones
		 PWM1 :  out  STD_LOGIC;--terminal donde sale la señal de PWM
		 led : out std_logic;
		 --interruptor : in std_logic;
		 estado_activo : in std_logic);
		 --led2 : out std_logic);

end Motor_PWM;

 

ARCHITECTURE comportamiento of Motor_PWM is

   signal PWM_Count: integer range 1 to Max;--500000;
	--signal alarma : std_logic :='0';

begin


   process( clk, PWM_Count)

		constant pos1: integer := 50000;  --representa a 1.00ms = 0°

		constant pos2: integer := 62500;  --representa a 1.25ms = 45°

		constant pos3: integer := 75000;  --representa a 1.50ms = 90°

		constant pos4: integer := 100000; --representa a 2.00ms = 180°

   begin
		if estado_activo = '1' then	
			 if rising_edge(clk)then PWM_Count <= PWM_Count + 1;

			 end if;
			 if pir_1='1' then--con el selector en 00 se posiciona en servo en 0°

						if PWM_Count <= pos4 then 
						PWM1 <= '1';
						else
							PWM1 <= '0';

						end if;
			end if;
			if    pir_2='1' then-- con el selector en 01 se posiciona en servo en 45°

                                             if PWM_Count <= pos1 then PWM1 <= '1';

                                             else                                        PWM1 <= '0';

                                             end if;
			end if;
			if    selector='0' then-- con el selector en 01 se posiciona en servo en 45°

                                             if PWM_Count <= pos3 then PWM1 <= '1';

                                             else                                        PWM1 <= '0';

                                             end if;
			end if;
			
		end if;
end process;
process(pir_1,pir_2)
begin
			 if  (pir_1='1' or pir_2='1') and estado_activo = '1' then
					bell <= '1';
			else 
				bell <= '0';
			end if;
end process; 
led <= not pir_1;
end comportamiento;