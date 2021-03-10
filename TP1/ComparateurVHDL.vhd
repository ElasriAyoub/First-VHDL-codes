library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ComparateurVHDL is port 
( a : in STD_LOGIC_VECTOR (7 downto 0); 
 b : in STD_LOGIC_VECTOR (7 downto 0); 
 ainfb : out STD_LOGIC; 
 asupb : out STD_LOGIC; 
 aneqb : out STD_LOGIC; 
 aeqb : out STD_LOGIC); 
end ComparateurVHDL; 

architecture Behavioral of ComparateurVHDL is 
begin 
ainfb <= '1' when a < b else '0'; 
asupb <= '1' when a > b else '0'; 
aneqb <= '1' when a /= b else '0'; 
aeqb <= '1' when a = b else '0'; 
end Behavioral; 