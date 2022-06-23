library IEEE;
use IEEE.std_logic_1164.all;

--entity declaration for the given truth table represented using a select assignment
entity select_assignment is

--Port map includes variables x1,x2,x3,x4 as input ports, f1,f2 as output ports
	Port (x1	:	in	std_logic; 
    	  x2	:	in	std_logic;
          x3	:	in	std_logic;
          x4	:	in	std_logic;
          f1	:	out	std_logic;
          f2	:	out	std_logic);
end select_assignment;


--architecture declaration
architecture select_assignment_arc of select_assignment is

	--In order to use a select signal assignment in the architecture, a signal taking the form of a 4-bit vector must be included.
	signal vars	: std_logic_vector(3 downto 0);

	begin
		--Signal vector vars has its bits assigned to the inputs x1, x2, x3 and x4 respectively. It is the values of the inputs x1, x2, x3, and x4 which will generate the options listed in the "with/select" assignment below.
    	vars <= x1 & x2 & x3 & x4; 

		--The architecture uses a select assignment to describe the truth table given. Thus, this is a behavioral architecture.
    
		--The control expression vars presents 17 different options (16 listed in the truth table plus "others") and the output signal f1 or f2 is assigned the value corresponding to an option when vars matches that option. It is important to note that no option can be repeated (options are mutually exclusive) and that every possible option must be covered in the "with/select" assignment (hence the "'X' when others" option).
       	with vars select
        	f1 <= '1' when "0000",
            	  '1' when "0001",
                  '1' when "0100",
                  '1' when "0101",
                  '1' when "0111",
                  '1' when "1111",
                  '0' when "0010",
                  '0' when "0011",
                  '0' when "0110",
                  '0' when "1000",
                  '0' when "1001",
                  '0' when "1010",
                  '0' when "1011",
                  '0' when "1100",
                  '0' when "1101",
                  '0' when "1110",
                  'X' when others;
                  
         with vars select         
           	f2 <= '0' when "0000",
            	  '0' when "0001",
                  '0' when "0100",
                  '0' when "0101",
                  '1' when "0111",
                  '1' when "1111",
                  '1' when "0010",
                  '1' when "0011",
                  '0' when "0110",
                  '0' when "1000",
                  '0' when "1001",
                  '1' when "1010",
                  '1' when "1011",
                  '0' when "1100",
                  '0' when "1101",
                  '0' when "1110",
                  'X' when others;
                  
      end select_assignment_arc;
                
            
            
            
        	
