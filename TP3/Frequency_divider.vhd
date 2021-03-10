Library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.Frequency_divider_package.all;

entity Frequency_divider is 
	port(clk_in: in std_logic;DE1,DE2,DE3:out std_logic;
			up,down: in std_logic;led:out std_logic_vector(7 downto 0);
			clk_out: out std_logic);
end Frequency_divider;

architecture desc_FD of Frequency_divider is 
signal nd,nu,NOD:integer:=0;

	begin 
	
	DE1<='0';
	DE2<='1';
	DE3<='1';--to enable Y6 the common cathode of the LEDs 27:34
	
process(up,down)
begin
	if(rising_edge(up)) then 
		
		nu<=nu+1;
		
	end if;				
		if(rising_edge(down))then
			nd<=nd+1;
			
		end if;
				NOD<= nd-nu;
end process;
I: FD port map(clk_in,NOD,clk_out);
process(NOD)
begin
	case NOD is 
		when 0 =>led<="10000000";
		when 1 =>led<="01000000";
		when 2 =>led<="00100000";
		when 3 =>led<="00010000";
		when 4 =>led<="00001000";
		when 5 =>led<="00000100";
		when 6 =>led<="00000010";
		when 7 =>led<="00000001";
		when others=>led<="00000000";
	end case;
end process;

end desc_FD;