Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;

entity Compteur_Synchrone is 
	PORT ( Clock : in std_logic;
			LEDCOM : out std_logic;
			Q : out std_logic_vector ( 3 downto 0 ) );
end Compteur_Synchrone;
architecture DESCRIPTION of Compteur_Synchrone is 
	signal CMP : std_logic_vector ( 3 downto 0 ) ;
	begin 
		process ( CLOCK ) 
		begin 

		if ( CLOCK = '1' and Clock'event) then 
		CMP <= CMP + 1;
		end if;
		end process;
		Q <= CMP;
		LEDCOM <= '1';
	end DESCRIPTION;