library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity DecodeurVHDL is
    port (
        enable      :in  std_logic;                     --  Enable for the decoder
        binary_in   :in  std_logic_vector (3 downto 0); --  4-bit input
        decoder_out :out std_logic_vector (15 downto 0) --  16-bit output

    );
end entity;

architecture behavior of DecodeurVHDL is

begin
    with (binary_in) select
    decoder_out <= X"0001" when X"0",
                   X"0002" when X"1",
                   X"0004" when X"2",
                   X"0008" when X"3",
                   X"0010" when X"4",
                   X"0020" when X"5",
                   X"0040" when X"6",
                   X"0080" when X"7",
                   X"0100" when X"8",
                   X"0200" when X"9",
                   X"0400" when X"A",
                   X"0800" when X"B",
                   X"1000" when X"C",
                   X"2000" when X"D",
                   X"4000" when X"E",
                   X"8000" when X"F",
                   X"0000" when others;
                   
end architecture;