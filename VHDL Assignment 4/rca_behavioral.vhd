library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.all; 


entity rca_behavioral is
	port(A: 	in std_logic_vector (3 downto 0); --number to be added
    	 B: 	in std_logic_vector (3 downto 0); --number to be added
         S:		out std_logic_vector (4 downto 0)); --output number
end rca_behavioral;

architecture arc_rca_b of rca_behavioral is
	
    begin
    
     S<= ('0' & A)+B;
     
end arc_rca_b;                 