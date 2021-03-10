Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;



entity Async_BCD_Counter is 
	PORT ( Clock : in std_logic;
			LEDCOM : out std_logic;
			Q : out std_logic_vector(3 downto 0));
end Async_BCD_Counter;

architecture DESCRIPTION of Async_BCD_Counter is 
	signal Y : std_logic_vector ( 3 downto 0 );

		begin
		process ( CLOCK ) 
		begin 
		if ( CLOCK = '1' and Clock'event) then
		 
		 if Y = "1001" then Y <= "0000";
		 else
		  Y <= Y + '1';   
		 end if;
		
		end if; 
		end process;
		Q <= Y;
		LEDCOM <= '1';
		
	end DESCRIPTION;