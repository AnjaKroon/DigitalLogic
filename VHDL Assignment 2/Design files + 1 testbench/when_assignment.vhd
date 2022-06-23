library IEEE;
use IEEE.std_logic_1164.all;

--entity declaration for the given truth table represented using a conditional signal assignment
entity when_assignment is

	--Port map includes variables x1,x2,x3,x4 as input ports, f1,f2 as output ports
	Port (x1	:	in	std_logic; 
    	  x2	:	in	std_logic;
          x3	:	in	std_logic;
          x4	:	in	std_logic;
          f1	:	out	std_logic;
          f2	:	out	std_logic);
end when_assignment;

--architecture declaration
architecture when_assignment_arc of when_assignment is

	--In order to implement a conditional signal assignment in the architecture, a signal taking the form of a 4-bit vector must be included.
	signal vars	: std_logic_vector(3 downto 0); 

		begin

			--Signal vector vars has its bits assigned to the inputs x1, x2, x3 and x4 respectively. It is the input values of x1, x2, x3 and x4 which will determine the value of vars.
			vars <= x1 & x2 & x3 & x4; 

			--The architecture uses a conditional signal assignment to describe the truth table given. Thus, this is a behavioral architecture.

			--The value of the output signal is determined by sucessively evaluating if vars is equal to the given expression. Unlike the with/select assignment, the when/else assignment creates a priority network as the earlier expressions are checked before the later ones. In order to cover all possible options, the output function f1 or f2 is equal to 'X' if vars does not match any of the 16 cases seen in the truth table for whatever reason. 
			f1 <= '1' when vars = "0000" else
                  '1' when vars = "0001" else
                  '0' when vars = "0010" else
                  '0' when vars = "0011" else
                  '1' when vars = "0100" else
                  '1' when vars = "0101" else
                  '0' when vars = "0110" else
                  '1' when vars = "0111" else
                  '0' when vars = "1000" else
                  '0' when vars = "1001" else
                  '0' when vars = "1010" else
                  '0' when vars = "1011" else
                  '0' when vars = "1100" else
                  '0' when vars = "1101" else
                  '0' when vars = "1110" else
                  '1' when vars = "1111" else
                  'X';

            f2 <= '0' when vars = "0000" else
                  '0' when vars = "0001" else
                  '1' when vars = "0010" else
                  '1' when vars = "0011" else
                  '0' when vars = "0100" else
                  '0' when vars = "0101" else
                  '0' when vars = "0110" else
                  '1' when vars = "0111" else
                  '0' when vars = "1000" else
                  '0' when vars = "1001" else
                  '1' when vars = "1010" else
                  '1' when vars = "1011" else
                  '0' when vars = "1100" else
                  '0' when vars = "1101" else
                  '0' when vars = "1110" else
                  '1' when vars = "1111" else
                  'X';
          
end when_assignment_arc;
     