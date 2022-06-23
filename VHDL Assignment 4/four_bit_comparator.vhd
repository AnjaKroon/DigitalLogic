library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity four_bit_comparator is
	port(A,B			: in std_logic_vector(3 downto 0);
         AgtBplusOne	: out std_logic;
         AgteBplusOne	: out std_logic;
         AltBplusOne	: out std_logic;
         AlteBplusOne	: out std_logic;
         AeqBplusOne	: out std_logic;
         overflow		: out std_logic);
end four_bit_comparator;

architecture four_bit_comparator_arc of four_bit_comparator is
signal B_one : std_logic_vector(4 downto 0); --will hold the 5 bit output of the rca_behavioral
signal A_new : std_logic_vector(4 downto 0); --variable that will hold a 5 bit version of A


component rca_behavioral
	port(A: 	in std_logic_vector (3 downto 0); --number to be added
    	 B: 	in std_logic_vector (3 downto 0); --number to be added
         S:		out std_logic_vector (4 downto 0)); --output number
end component;

begin
plus_one : rca_behavioral PORT MAP (B, "0001", B_one); --put the output of B into B_one
--add_A_B: rca_behavioral PORT MAP ("0001", B, sum);
A_new <= '0' & A;--making A have 5 bits to prepare to compare

process (B_one, A_new)

    begin
        -- so now we begin comparing A_new and B_one
        
     
        if (B_one(4) = '1') then
        	AgtBplusOne	<= '0';
        	AgteBplusOne <= '0';
        	AltBplusOne	<= '0';
        	AlteBplusOne <= '0';
        	AeqBplusOne <= '0';
        	overflow <= '1';
        	
        elsif (A_new > B_one) then   -- two of them are activated
        	AgtBplusOne	<= '1';
        	AgteBplusOne <= '1';
        	AltBplusOne	<= '0';
        	AlteBplusOne <= '0';
        	AeqBplusOne <= '0';
            overflow <= '0';     
            
        
        
        elsif (A_new < B_one) then
        	-- two of them are activated

        	AgtBplusOne	<= '0';
        	AgteBplusOne <= '0';
        	AltBplusOne	<= '1';
        	AlteBplusOne <= '1';
        	AeqBplusOne <= '0'; 
        	overflow <= '0';     
            
        
        
        
        else 
        	-- three of them are activated
         	AgtBplusOne	<= '0';
        	AgteBplusOne <= '1';
        	AltBplusOne	<= '0';
        	AlteBplusOne <= '1';
        	AeqBplusOne <= '1';
            overflow <= '0';    
           
        
		end if;
    	--code
    end process;
end four_bit_comparator_arc;