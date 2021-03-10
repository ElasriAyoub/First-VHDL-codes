Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;

entity BCD_Counter is 
	PORT ( Clock : in std_logic;
			LEDCOM : out std_logic;
			Q : out std_logic_vector ( 3 downto 0 ) );
end BCD_Counter;
architecture DESCRIPTION of BCD_Counter is 
	signal CMP : std_logic_vector ( 3 downto 0 ) ;
	begin 
		process ( CLOCK ) 
		begin 

		if ( CLOCK = '1' and Clock'event) then
			if (CMP = "1001") then CMP <= "0000";
			else  
			CMP <= CMP + 1;
			
			end if;
		end if;
		end process;
		Q <= CMP;
		LEDCOM <= '1';
	end DESCRIPTION;