library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity MUXVHDL is
port(I: in bit_vector(0 to 3);Sel: in bit_vector(0 to 1);S:out bit) ;
end MUXVHDL;

architecture A of MUXVHDL is
begin
--Autre syntaxe possible :
S<=I(0) when(Sel="00") else
--with Sel select
I(1) when(Sel="01") else
-- S<= I(0)  when  "00",
I(2) when(Sel="10") else
--         I(1)  when  "01",
I(3);
--         I(2)  when  "10",
end A;