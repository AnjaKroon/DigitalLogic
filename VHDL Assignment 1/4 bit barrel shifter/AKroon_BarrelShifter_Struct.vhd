--necessary libraries used for variable declarations 
library IEEE;
use IEEE.STD_Logic_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


-- describing the relationship between the design and the external enviornment (Ports)
entity AKroon_BarrelShifter_Struct IS 
	port(X		: in std_logic_vector(3 downto 0) ; --X needs to be 4 bits
    	 sel	: in std_logic_vector(1 downto 0);  --There are two selectors, 2 bits needed
         Y		: out std_logic_vector(3 downto 0)); --Y needs to be 4 bits
end AKroon_BarrelShifter_Struct; 

--defining two components 
architecture Struct of AKroon_BarrelShifter_Struct is

--linking this architecture to the MUX_Structural entitity
component MUX_structural --component with 3 inputs A,B,S and 1 output
    port(A : IN  std_logic;
         B : IN  std_logic;
         S : IN  std_logic;
         Y : OUT  std_logic);
    end component;

--linking the current architecture to the AKroon_BarrelShifter_Struct entity
component AKroon_BarrelShifter_Struct 
port(A,B,S  : in std_logic;
	 Y 		: out std_logic);
end component;

--defining an intermediary signal that retains outputs from the first col of MUXs and is used as input for the second col of MUXs
signal sgn : std_logic_vector (3 downto 0); -- 4 digits

--For each MUX we define it as an "instance of our MUX_Structural" from before and use various inputs according to the diagram in the assignment
begin
	M1 : entity work.MUX_structural(LogicFunc) PORT MAP (x(0), x(2), sel(1), sgn(0));
    M2 : entity work.MUX_structural(LogicFunc) PORT MAP (x(1), x(3), sel(1), sgn(1));
    M3 : entity work.MUX_structural(LogicFunc) PORT MAP (x(2), x(0), sel(1), sgn(2));
    M4 : entity work.MUX_structural(LogicFunc) PORT MAP (x(3), x(1), sel(1), sgn(3));
    
    M5 : entity work.MUX_structural(LogicFunc) PORT MAP (sgn(0), sgn(3), sel(0), Y(0));
    M6 : entity work.MUX_structural(LogicFunc) PORT MAP (sgn(1), sgn(0), sel(0), Y(1));
    M7 : entity work.MUX_structural(LogicFunc) PORT MAP (sgn(2), sgn(1), sel(0), Y(2));
    M8 : entity work.MUX_structural(LogicFunc) PORT MAP (sgn(3), sgn(2), sel(0), Y(3));
end Struct;