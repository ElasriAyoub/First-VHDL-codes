library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity CodeurVHDL is
    port (
        enable     :in  std_logic;                      --  Enable for the encoder
        encoder_in :in  std_logic_vector (15 downto 0); --  16-bit Input
        binary_out :out std_logic_vector (3 downto 0)   --  4 bit binary Output

    );
end entity;

architecture behavior of codeurVHDL is

begin
    process (enable, encoder_in) begin
        binary_out <= "0000";
        if (enable = '1') then
            if (encoder_in = X"0002") then binary_out <= "0001"; end if;
            if (encoder_in = X"0004") then binary_out <= "0010"; end if;
            if (encoder_in = X"0008") then binary_out <= "0011"; end if;
            if (encoder_in = X"0010") then binary_out <= "0100"; end if;
            if (encoder_in = X"0020") then binary_out <= "0101"; end if;
            if (encoder_in = X"0040") then binary_out <= "0110"; end if;
            if (encoder_in = X"0080") then binary_out <= "0111"; end if;
            if (encoder_in = X"0100") then binary_out <= "1000"; end if;
            if (encoder_in = X"0200") then binary_out <= "1001"; end if;
            if (encoder_in = X"0400") then binary_out <= "1010"; end if;
            if (encoder_in = X"0800") then binary_out <= "1011"; end if;
            if (encoder_in = X"1000") then binary_out <= "1100"; end if;
            if (encoder_in = X"2000") then binary_out <= "1101"; end if;
            if (encoder_in = X"4000") then binary_out <= "1110"; end if;
            if (encoder_in = X"8000") then binary_out <= "1111"; end if;
        end if;
    end process;
end architecture;