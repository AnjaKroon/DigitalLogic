library ieee;
use ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.numeric_std_unsigned.all;
 
entity tb_barrel_struct IS
--empty
end tb_barrel_struct;

architecture struct of tb_barrel_struct is

component AKroon_BarrelShifter_Struct is
	port(X		: in std_logic_vector(3 downto 0) ; -- X input
    	 sel	: in std_logic_vector (1 downto 0); -- sel input
         Y		: out std_logic_vector (3 downto 0)); --Y output
end component;

signal X_i : std_logic_vector(3 downto 0);
signal Sel_i : std_logic_vector(1 downto 0);
signal Y_i : std_logic_vector(3 downto 0);


begin --begin

	--DUT decalration with port map
	DUT: AKroon_BarrelShifter_Struct port map(X_i, Sel_i, Y_i);

	process

	begin
	--nested for loop
	for i in 0 to 16 loop
    	X_i <= std_logic_vector(to_unsigned(i,4));
        for j in 0 to 4 loop
        	Sel_i <= std_logic_vector(to_unsigned(j,2));
            wait for 10 ns;
        end loop;
    end loop;
	
    wait;
end process;
end struct;