library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DMUXVHDL is
port(O: out bit_vector(0 to 3);Sel: in bit_vector(0 to 1);E:in bit) ;
end DMUXVHDL ;
architecture A of DMUXVHDL is
begin
O(0)<=E when(Sel="00") else '0';
O(1)<=E when(Sel="01") else '0';
O(2)<=E when(Sel="10") else '0';
O(3)<=E when(Sel="11") else '0';
end A;
