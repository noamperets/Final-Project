library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity align_width is
    port (
        data_in   : in   STD_LOGIC_VECTOR(15 downto 0);
        data_out  : out  STD_LOGIC_VECTOR(31 downto 0);
		addr_in   : in   STD_LOGIC_VECTOR(19 downto 0);
		addr_out  : out  STD_LOGIC_VECTOR(17 downto 0)
    );
end align_width;

architecture Behavioral of align_width is
begin
    process(addr_in)
    begin
        
		addr_out <= addr_in(17 downto 0);
        data_out <= "0000000000000000" & data_in;
    end process;
end Behavioral;
