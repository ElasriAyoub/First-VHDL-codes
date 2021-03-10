Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;
Use ieee.std_logic_unsigned.all;



entity Async_4Bits_Binary_Counter is 
	PORT ( Clock : in std_logic;
			LEDCOM : out std_logic;
			up : in std_logic;
			Q : out std_logic_vector(3 downto 0));
end Async_4Bits_Binary_Counter;

architecture DESCRIPTION of Async_4Bits_Binary_Counter is 
	signal Y : std_logic_vector ( 3 downto 0 );

		begin
		process ( CLOCK ) 
		begin 
		if ( CLOCK = '1' and Clock'event) then
		 if up = '1' then 
		 if Y = "1111" then Y <= "0000";
		 else
		  Y <= Y + '1';   
		 end if;
		 elsif up = '0' then 
		if Y = "1111" then Y <= "0000";
		 else
		  Y <= Y - '1';   
		 end if;
		 
		 end if;
		end if; 
		end process;
		Q <= Y;
		LEDCOM <= '1';
		
	end DESCRIPTION;