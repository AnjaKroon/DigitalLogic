library IEEE;
use IEEE.std_logic_1164.all;

--entity declaration for the joint SOP representation of the given truth table
entity joint_SOP is

--Port map includes variables x1,x2,x3,x4 as input ports, f1,f2 as output ports
	Port (x1	:	in	std_logic; 
    	  x2	:	in	std_logic;
          x3	:	in	std_logic;
          x4	:	in	std_logic;
          f1	:	out	std_logic;
          f2	:	out	std_logic);
end joint_SOP;

--architecture declaration
architecture joint_SOP_arc of joint_SOP is
	
    --the join implementation has an implicant/term which is common to both outputs' SOP expression, which we highlight by creating the following signal 
	signal in_both : std_Logic;

	begin 
		
        --We assign the value of signal in_both
		in_both <= (x2 and x3 and x4);
        
		--The architecture uses direct assignment to describe the gates which represent the joint SOP form of f1 and f2. Thus, this is a structural architecture. As expected for a joint implementation, the term in_both appears in both outputs
		f1 <= (in_both) or ((not x1) and (not x3));
    	f2 <= (in_both) or ((not x2) and x3);
    
	--Costs per impelmentation appear in the results, however by inspection it is clear that the cost of the joint SOP implementation of f1 and f2 will be competitive with the simplified POS and simplified SOP implementations.

end joint_SOP_arc;