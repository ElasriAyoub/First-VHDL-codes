Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.LCD_package.all;

entity LCD is 
	port(start,clkin,clrn:in std_logic;
		Data:in std_logic_vector(7 downto 0);
		cmd:inout std_logic_vector(2 downto 0);
		EN,RS,RW,clk_inter,led:out std_logic;
		clk_1k:inout std_logic;
		Do:out std_logic_vector(7 downto 0));
end LCD;


architecture behav of LCD is

signal sel:std_logic_vector(2 downto 0):="000"; 
signal clk_100: std_logic;
signal cpt:std_logic_vector(1 downto 0):="00";
 begin 




U2: FD port map(clkin,10000,clk_1k);
U3: ctrl port map(clk_1k,RW,RS,EN);
U4: FD port map(clk_1k,10,clk_100);
process(clk_100)
begin
	if(rising_edge(clk_100)) then 
		sel<=sel+1;
	end if;
cmd<=sel;

end process;

I6: Data_path port map(cmd,"11111111",Do);


end behav;