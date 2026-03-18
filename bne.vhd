library ieee;
use ieee.std_logic_1164.all;

entity bne is
    port (
        pc_plus_2, offset : in std_logic_vector(15 downto 0);
        target : out std_logic_vector(15 downto 0)
    );
end bne;

architecture behavioral of bne is

component ALU_16Bit is
    port (
        A, B : in std_logic_vector(15 downto 0);
        S : in std_logic_vector(1 downto 0);
        Sout : out std_logic_vector(15 downto 0);
        Cout : out std_logic;
        Zero : out std_logic
    );
end component;
signal Zero : std_logic;
signal Carry : std_logic;

begin
    alui: ALU_16Bit port map (
        A => pc_plus_2,
        B => offset,
        S => "00",
        Sout => target,
        Cout => Carry,
        Zero => Zero
    );
end behavioral;