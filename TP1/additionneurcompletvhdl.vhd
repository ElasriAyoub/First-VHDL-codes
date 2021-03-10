library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity additionneurcompletvhdl is port ( 
Ret_in,A,B:in std_logic;
Led_com,Ret_out, Som: out std_logic);
end additionneurcompletvhdl;
architecture rtl of additionneurcompletvhdl is
begin
Led_com<='1';
Som<= (A xor B)xor Ret_in;
Ret_out<=(A and B)or((A xor B)and Ret_in);
end rtl;
