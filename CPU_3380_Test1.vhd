library ieee;
use ieee.std_logic_1164.all;


entity CPU_3380_Test is
end entity CPU_3380_Test;


architecture mixed of CPU_3380_Test is
    constant tick : time := 100 ns;
	 constant RUN_TIME : integer := 18;
    signal reset, clock : std_logic;
	 signal mem_dump : std_logic := '0';
--    signal instr : std_logic_vector(0 to 15);
begin
    uut : entity work.CPU_3380
        port map(
            clk		    => clock,
            clear       => reset,
			mem_dump    => mem_dump
        );

    driver : process is
    begin
        -- reset the system
        reset <= '0'; 
		  wait for 50 ns;
        reset <= '1';

			for i in  1 to RUN_TIME loop
				wait for tick;
			end loop;
----			addi r3, r0, 5
--            instr <= x"4305";
--            wait for 50 ns;
            
----			addi r4, r0, 2
--            instr <= x"4402";
--            wait for 50 ns;
            
----			slt r11, r3, r4
--            instr <= x"7B34";
--            wait for 50 ns;
            
----			sw r3, 0(r0)
--            instr <= x"C300";
--            wait for 50 ns;
            
----			sw r4, 4(r0)
--            instr <= x"C404";
--            wait for 50 ns;
            
----			addi r6, r0, 4
--            instr <= x"4604";
--            wait for 50 ns;
            
----			lw r7, 0(r6)
--            instr <= x"8760";
--            wait for 50 ns;
            
----			lw r8, 0(r0)
--            instr <= x"8800";
--            wait for 50 ns;
            
----			add r9, r7, r8
--            instr <= x"0978";
--            wait for 50 ns;
            
----			slt r10, r0, r1
--            instr <= x"7A01";
--            wait for 50 ns;
            
----			slt r10, r1, r0
--            instr <= x"7A10";
--            wait for 50 ns;
            
----			or r5, r10, r9
--            instr <= x"35A9";
--            wait for 50 ns;
            
----			subi r10, r5, 7
--            instr <= x"5A57";
--            wait for 50 ns;
            
----			sub r11, r10, r7
--            instr <= x"1BA7";
--            wait for 50 ns;

----			sw r11, 5(r8)
--            instr <= x"CB85";
--            wait for 50 ns;
        wait;
    end process driver;

    clock_p : process is
    begin
        for i in 0 to 50 loop
            clock <= '1'; wait for tick/2;
            clock <= '0'; wait for tick/2;
        end loop;
        wait;
    end process clock_p;
end architecture mixed;