-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_four_bit_comparator is
--blank
end tb_four_bit_comparator;

architecture arc of tb_four_bit_comparator is

	component four_bit_comparator
	port(A,B			: in std_logic_vector(3 downto 0);
         AgtBplusOne	: out std_logic;
         AgteBplusOne	: out std_logic;
         AltBplusOne	: out std_logic;
         AlteBplusOne	: out std_logic;
         AeqBplusOne	: out std_logic;
         overflow		: out std_logic);
	end component;

	signal A_1 : std_logic_vector(3 downto 0):= "0101";
	signal B_1 : std_logic_vector(3 downto 0):= "0000";
	signal AgtBplusOne_1 : std_logic;
	signal AgteBplusOne_1 : std_logic;
	signal AltBplusOne_1 : std_logic;
	signal AlteBplusOne_1 : std_logic;
	signal AeqBplusOne_1 : std_logic;
	signal overflow_1 : std_logic;
    
	begin 
    
    --Instantitate DUT
    DUT: four_bit_comparator port map(A_1,B_1,AgtBplusOne_1,AgteBplusOne_1,AltBplusOne_1,AlteBplusOne_1, AeqBplusOne_1, overflow_1);
    
    process
    begin
    for I in 0 to 15 loop
		A_1 <= std_logic_vector(to_unsigned(I, 4));   
        
        for J in 0 to 15 loop
        	B_1 <= std_logic_vector(to_unsigned(J,4));
            wait for 10 ns;
        end loop;
	end loop;
    
    --A_1 <= "0101";
    --B_1 <= "1111";
    
    
  
    
                
    wait;
  end process;
end arc;
        