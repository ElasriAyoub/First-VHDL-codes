
Library ieee;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_1164.all;

entity Freq_generator is 
	port (clkin:in std_logic;n:in integer; clko:out std_logic);
end Freq_generator;
architecture beh of Freq_generator is 
signal cpt:integer:=0;
begin 
	process(clkin)
		begin 
			
			if(rising_edge(clkin))then 
				if(cpt<n/2)then
					cpt<=cpt+1;
					clko<='1';
				elsif(cpt<n-1) then
					cpt<=cpt+1;
					clko<='0';
					
					else 
						clko<='0';
						cpt<=0;
					end if;
			end if;
			
		end process;
end beh;
