--necessary libraries used for variable declarations 
library IEEE;
use IEEE.STD_Logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_behavioral is -- describing the relationship between the design and the external enviornment, 3 input ports A,B,S, and 1 output port Y

port(A		: in 	std_logic;
    	 B 		: in 	std_logic;
         S		: in 	std_logic;
         Y		: out 	std_logic);
end MUX_behavioral;

architecture Behav of MUX_behavioral is --select statement sets output Y to A when S is 0, and B when S is 1. "Others" statement included because std_logic has 9 different types, 'X' corresponds to an unknown
begin
	WITH S SELECT
    	Y <= A when '0',
        	 B when '1',
             'X' when others; --check
end Behav;