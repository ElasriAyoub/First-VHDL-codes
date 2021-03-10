library ieee;
use ieee.std_logic_1164.all;

entity Demi_add is port( 
A, B : in std_logic;
Ret,Som,Led_com : out std_logic);
end Demi_add;

architecture rtl of Demi_add is
begin
Led_com<='1' ;
Som<= A xor B;
Ret<= A and B;
end rtl;
