library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ClockDivider is
    Port ( clk : in STD_LOGIC;
           out_sig : out STD_LOGIC);
end ClockDivider;

architecture Behavioral of ClockDivider is
    signal counter: INTEGER := 0;
    signal temp_out_sig: STD_LOGIC := '0';
begin
    process(clk)
    begin
		if rising_edge(clk) then
            if counter = 499999990 then
                temp_out_sig <= '1';
                counter <= 0;
            else
                temp_out_sig <= '0';
                counter <= counter + 1;
            end if;
        end if;
    end process;

    out_sig <= temp_out_sig;
end Behavioral;
