--necessary libraries used for variable declarations 
library IEEE;
use IEEE.STD_Logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MUX_structural is -- describing the relationship between the design and the external enviornment, 3 input ports and 1 output port
	port(A		: in 	std_logic;
    	 B 		: in 	std_logic;
         S		: in 	std_logic;
         Y		: out 	std_logic);
end MUX_structural;

architecture LogicFunc of MUX_structural is --defining the structure of the MUX, linked with the MUX_structural entity. Acheived using 2 ANDs, 1 OR, 1 NOT gates 
begin
	Y<= (B AND S) OR ((NOT S) AND A); 
end LogicFunc;