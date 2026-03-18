library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4_1 is
    generic (
        width : integer := 16
    );
    port (
        A3, A2, A1, A0 : in std_logic_vector(width-1 downto 0);
        S : in std_logic_vector(1 downto 0);
        Sout : out std_logic_vector(width-1 downto 0)
    );
end mux_4_1;

architecture behavioral of mux_4_1 is
begin
    Sout <= A0 when S = "00" else
            A1 when S = "01" else
            A2 when S = "10" else
            A3 when S = "11" else
            (others => 'X');
end behavioral;