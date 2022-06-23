--CHECK IF X IN QUOTES IN ARCH.

--necessary libraries used for variable declarations 
library IEEE;
use IEEE.STD_Logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- describing the relationship between the design and the external enviornment (Ports)
entity AKroon_BarrelShifter_Behav IS 
	port (X 	: in std_logic_vector (3 downto 0); -- X is 4 bits, for the input
    	  sel	: in std_logic_vector (1 downto 0); --sel is 2 bits, one for each selector
          Y 	: out std_logic_vector (3 downto 0)); -- Y is 4 bits, for the output
end AKroon_BarrelShifter_Behav;

--defining the behavior for the 4 bit barrel shifter and doing so with a " with -- select" statement
architecture Behav of AKroon_BarrelShifter_Behav is
begin
	--shift depending on value of sel
	WITH sel SELECT
    	Y <= 
        	 X(3 downto 0) when "00", --no shift, keep the same
             X(2 downto 0) & X(3) when "01", --shift one bit
             X(1 downto 0) & X(3 downto 2) when "10", --shift two bits
        	 X(0) & X(3 downto 1) when "11",  --shift three bits
             X when others; --for the other case
end Behav;