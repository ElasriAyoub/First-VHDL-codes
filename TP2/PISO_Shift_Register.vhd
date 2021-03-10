Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;



entity PISO_Shift_Register is 
	PORT ( Clock, L : in std_logic;
			LEDCOM : out std_logic;
			dcba : in std_logic_vector (3 downto 0);
			So : out std_logic );
end PISO_Shift_Register;

architecture DESCRIPTION of PISO_Shift_Register is 
	signal Q : std_logic_vector ( 3 downto 0 ) := dcba;
	begin 
		
		process ( CLOCK ) 
		begin 
		
		if (CLOCK = '1' and Clock'event) then 
		if L = '0' then 

		Q(2 downto 0) <= Q(3 downto 1);
		Q(3) <= '0';
		 end if;
		end if;
		
		end process;
		So <= Q(0);
		LEDCOM <= '1';
		
	end DESCRIPTION;