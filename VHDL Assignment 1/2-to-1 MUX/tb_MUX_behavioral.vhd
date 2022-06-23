LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_MUX_behavioral IS
--empty
END tb_MUX_behavioral;
 
ARCHITECTURE behavior OF tb_MUX_behavioral IS
 
    -- component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_behavioral
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Y : OUT  std_logic);
    END COMPONENT;
 
   signal A : std_logic := '0'; --inputs
   signal B : std_logic := '0';
   signal S : std_logic := '0';
   signal Y : std_logic; --outputs
 
BEGIN
 
  --connect DUT
  DUT: MUX_behavioral port map(A,B,S,Y);
 
   process
   begin
 
    A <= '0';
    B <= '0';
    S <= '0';
    wait for 1 ns; 
    
    A <= '0';
    B <= '0';
    S <= '1';
    wait for 1 ns;
    
    A <= '0';
    B <= '1';
    S <= '0';
    wait for 1 ns;
    
    A <= '0';
    B <= '1';
    S <= '1';
    wait for 1 ns;
    
    A <= '1';
    B <= '0';
    S <= '0';
    wait for 1 ns;
    
    A <= '1';
    B <= '0';
    S <= '1';
    wait for 1 ns;
    
    A <= '1';
    B <= '1';
    S <= '0';
    wait for 1 ns;
    
    A <= '1';
    B <= '1';
    S <= '1';
    wait for 1 ns;
    
    --reset??????? is this necessary? to reset 0,0,0?
    --not necessary
    
  	wait;
 
    end process;
 
END behavior;
