library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity analogToButtons is
    port (
        analogIn : in std_logic_vector(11 downto 0);
        Led : out std_logic_vector(5 downto 0)
    );
end analogToButtons;

architecture behavior of analogToButtons is
begin
    process(analogIn)
    begin
        case analogIn is
            when "000000000000" =>
                Led <= "000001";
            when "001111010001" | "001111010000" =>
                Led <= "000010";
            when "011101110100" | "011101110011" =>
                Led <= "000100";
            when "101010100100" | "101010100101" =>
                Led <= "001000";
            when "110100000010" =>
                Led <= "010000";
            when others =>
                Led <= "000000";
        end case;
    end process;
end behavior;
