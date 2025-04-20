----------------------------------------------------------------------------------
-- Engineer: Mike Field <hamster@snap.net.nz>
--
-- Description: Generate analog 640x480 VGA, double-doublescanned from 19200 bytes of RAM
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity stop_after_single_frame is
    port (
        clk       : in  STD_LOGIC;
		rst			: in STD_LOGIC;
		frame_addr_in : in  STD_LOGIC_VECTOR(17 downto 0);
        we_in			: in STD_LOGIC;
		we_out			: out STD_LOGIC
    );
end stop_after_single_frame;

architecture Behavioral of stop_after_single_frame is

signal finish_frame : STD_LOGIC;

begin
    process(clk, rst)
    begin
        if rst = '0' then
            finish_frame <= '0';
        elsif rising_edge(clk) then
            if (frame_addr_in >= x"4B000") then 
				finish_frame <= '1';
			end if;
        end if;
    end process;
	
	we_out <= (we_in and not finish_frame);
	
end Behavioral;