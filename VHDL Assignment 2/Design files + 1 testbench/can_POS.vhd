library IEEE;
use IEEE.std_logic_1164.all;

--entity decleration for the canononical POS representation of the given truth table
entity can_POS is

--Port map includes variables x1,x2,x3,x4 as input ports, f1,f2 as output ports
	Port (x1	:	in	std_logic; 
    	  x2	:	in	std_logic;
          x3	:	in	std_logic;
          x4	:	in	std_logic;
          f1	:	out	std_logic;
          f2	:	out	std_logic);
end can_POS;

--architecture declaration
architecture can_POS_arc of can_POS is

	begin
		--The architecture uses direct assignment to describe the gates which represent the canononical POS form of f1 and f2. Thus, this is a structural architecture.
        f1 <= (x1 or x2 or (not x3) or x4) and (x1 or x2 or (not x3) or (not x4)) and (x1 or (not x2) or (not x3) or x4) and ((not x1) or x2 or x3 or x4) and ((not x1) or x2 or x3 or (not x4)) and ((not x1) or x2 or (not x3) or x4) and ((not x1) or x2 or (not x3) or (not x4)) and ((not x1) or (not x2) or x3 or x4) and ((not x1) or (not x2) or x3 or (not x4)) and ((not x1) or (not x2) or (not x3) or x4); 

        f2 <= (x1 or x2 or x3 or x4) and (x1 or x2 or x3 or (not x4)) and (x1 or (not x2) or x3 or x4) and (x1 or (not x2) or x3 or (not x4)) and (x1 or (not x2) or (not x3) or x4) and ((not x1) or x2 or x3 or x4) and (not(x1) or x2 or x3 or (not x4)) and ((not x1) or (not x2) or x3 or x4) and ((not x1) or (not x2) or x3 or (not x4)) and ((not x1) or (not x2) or (not x3) or x4);
  	
end can_POS_arc;
