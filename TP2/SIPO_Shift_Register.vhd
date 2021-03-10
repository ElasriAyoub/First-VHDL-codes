Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;



entity SIPO_Shift_Register is 
	PORT ( Clock : in std_logic;
			LEDCOM : out std_logic;
			Sin : in std_logic;
			P : out std_logic_vector ( 3 downto 0 ) );
end SIPO_Shift_Register;

architecture DESCRIPTION of SIPO_Shift_Register is 
	signal Q : std_logic_vector ( 3 downto 0 ) ;
	begin 
		process ( CLOCK ) 
		begin 

		if ( CLOCK = '1' and Clock'event) then 
		Q(2 downto 0) <= Q(3 downto 1);
		Q(3) <= Sin;
		
		end if;
		
		end process;
		P <= Q;
		LEDCOM <= '1';
		
	end DESCRIPTION;