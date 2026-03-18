library ieee;
use ieee.std_logic_1164.all;

entity jump is
    port (
        pc_plus_2   : in std_logic_vector(15 downto 0);
        imm12       : in std_logic_vector(11 downto 0);
        target      : out std_logic_vector(15 downto 0)
    );
end jump;

architecture behavioral of jump is
begin
    target(15 downto 12) <= pc_plus_2(15 downto 12);
    target(11 downto 0) <= imm12;
end behavioral;