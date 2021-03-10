Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;



entity Johnson_Counter is 
	PORT ( Clock : in std_logic;
			LEDCOM : out std_logic;
			Clrn : in std_logic;
			Q : out std_logic_vector(3 downto 0));
end Johnson_Counter;

architecture DESCRIPTION of Johnson_Counter is 
	signal Y : std_logic_vector ( 3 downto 0 );

		begin
		process ( CLOCK ) 
		begin 
		if (Clrn = '1') then Y<=(others=>'0');
		elsif ( CLOCK = '1' and Clock'event) then
		  Y(1)<=Y(0); 
		  Y(2)<=Y(1); 
		  Y(3)<=Y(2); 
		  Y(0)<=not Y(3);    
		 end if;
		end process;
		Q <= Y;
		LEDCOM <= '1';
		
	end DESCRIPTION;