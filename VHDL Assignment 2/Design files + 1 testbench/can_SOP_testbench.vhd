--Every testbench file in the assignment used the exact same format, the only difference being the entity, architecture, component and DUT names were made to match the given design fire. 

library IEEE;
use IEEE.std_logic_1164.all;

entity can_SOP_testbench is
	--blank--
end can_SOP_testbench;

--architecture declaraion
architecture arc of can_SOP_testbench is

	--A component is instantiated to link the entity can_SOP with the architecture of the testbench
	component can_SOP 
    	Port 	   (x1	:	in	std_logic; 
        	        x2	:	in	std_logic;
            	    x3	:	in	std_logic;
                	x4	:	in	std_logic;
                	f1	:	out	std_logic;
                	f2	:	out	std_logic);           
    end component;

--The actual signals x1,x2,x3,x4,f1,f2 are initialized before begining the exaustive test    
	signal x1 : std_logic := '0';
    signal x2 : std_logic := '0';
    signal x3 : std_logic := '0';
    signal x4 : std_logic := '0';
    signal f1 : std_logic;
    signal f2 : std_logic;
    
	begin 
    
    	--Instantitate the DUT (Device Under Test)
    	DUT: can_SOP port map(x1,x2,x3,x4,f1,f2);
    
    	process
        
   			--The exaustive test runs through every scenario presented in the truth table to show the complete set of result of the output signal. A wait statement is included to ensure the tests run sequentially and the resulting EPwave has the desired form.
    		begin
    			x1 <= '0';
                x2 <= '0';
                x3 <= '0';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '0';
                x3 <= '0';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '0';
                x3 <= '1';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '0';
                x3 <= '1';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '1';
                x3 <= '0';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '1';
                x3 <= '0';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '1';
                x3 <= '1';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '0';
                x2 <= '1';
                x3 <= '1';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '0';
                x3 <= '0';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '0';
                x3 <= '0';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '0';
                x3 <= '1';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '0';
                x3 <= '1';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '1';
                x3 <= '0';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '1';
                x3 <= '0';
                x4 <= '1';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '1';
                x3 <= '1';
                x4 <= '0';
                wait for 1 ns; 

                x1 <= '1';
                x2 <= '1';
                x3 <= '1';
                x4 <= '1';
                wait for 1 ns; 
    
    			--An addtional test case is added to the end. The EP Wave will not show the results of the final result. Therefore adding this case will make sure the 16 test cases are shown in the EP Wave, and this test case will not appear, therefore not impacting the result. 
                x1 <= '0';
                x2 <= '0';
                x3 <= '0';
                x4 <= '0';
                wait for 1 ns; 
    wait;
    end process;
end arc;
          
