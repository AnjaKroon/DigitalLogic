LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_MUX_structural IS
--empty
END tb_MUX_structural;
 
ARCHITECTURE Struct OF tb_MUX_structural IS
 
    -- component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX_structural
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
 
   signal A : std_logic := '0'; --inputs
   signal B : std_logic := '0';
   signal S : std_logic := '0';
   signal Y : std_logic; --outputs
 
BEGIN
 
   --Instantiate the Unit Under Test (UUT)
	DUT: MUX_structural port map(A,B,S,Y);

   process
   begin
      --hold reset state for 100 ns.
      wait for 100 ns; 
 
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

    
  	wait;
 
    end process;
 
END Struct;
