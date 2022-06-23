library IEEE;
use IEEE.std_logic_1164.all;

--entity declaration for the simplified POS representation of the given truth table
entity sim_POS is

--Port map includes variables x1,x2,x3,x4 as input ports, f1,f2 as output ports
	Port (x1	:	in	std_logic; 
    	  x2	:	in	std_logic;
          x3	:	in	std_logic;
          x4	:	in	std_logic;
          f1	:	out	std_logic;
          f2	:	out	std_logic);
end sim_POS;

--architecture declaration
architecture sim_POS_arc of sim_POS is

	begin 
		--The architecture uses direct assignment to describe the gates which represent the canononical POS form of f1 and f2. Thus, this is a structural architecture.
        f1 <= ((not x1) or x3) and (x2 or (not x3)) and ((not x3) or x4);
        f2 <= 	x3 and ((not x2) or x4);      

--The simplified POS form clearly contains a lot fewer gates compared to the canononical POS form. This implementation will cost a lot less.
    end sim_POS_arc;