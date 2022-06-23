library IEEE;
use IEEE.std_logic_1164.all;

--entity decleration for the canononical SOP representation of the given truth table
entity can_SOP is

--Port map includes variables x1,x2,x3,x4 as input ports, f1,f2 as output ports
	Port (x1	:	in	std_logic; 
    	  x2	:	in	std_logic;
          x3	:	in	std_logic;
          x4	:	in	std_logic;
          f1	:	out	std_logic;
          f2	:	out	std_logic);
end can_SOP;

--architecture decleration
architecture can_SOP_arc of can_SOP is

	--The architecture uses direct assignment to describe the gates which represent the canononical SOP form of f1 and f2. Thus, this is a structural architecture. 
	begin
    	f1 <= ((not x1) and (not x2) and (not x3) and (not x4)) or ((not x1) and (not x2) and (not x3) and x4) or ((not x1) and x2 and (not x3) and (not x4)) or ((not x1) and x2 and (not x3) and x4) or ((not x1) and x2 and x3 and x4) or (x1 and x2 and x3 and x4);

        f2 <= ((not x1) and (not x2) and x3 and (not x4)) or ((not x1) and (not x2) and x3 and x4) or ((not x1) and x2 and x3 and x4) or (x1 and (not x2) and x3 and (not x4)) or (x1 and (not x2) and x3 and x4) or (x1 and x2 and x3 and x4);

end can_SOP_arc;
    
    
    
   
   