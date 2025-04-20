----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Harold Hall
-- 
-- Create Date: 11/03/2017 03:46:11 PM
-- Design Name: 
-- Module Name: debounce - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: Based on work by Mike Field <hamster@snap.net.nz>
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debounce is
    Port ( button1 : in STD_LOGIC;
           button2 : in STD_LOGIC;
           clk : in STD_LOGIC;
           out1 : out STD_LOGIC;
           out2n : out STD_LOGIC);
end debounce;

architecture Behavioral of debounce is
   signal c : unsigned(23 downto 0);
   -- Declare the attributes in the architecture section
   ATTRIBUTE X_INTERFACE_INFO : STRING;
   ATTRIBUTE X_INTERFACE_INFO of out2n: SIGNAL is "xilinx.com:signal:reset:1.0 out2n RST";
   -- Supported parameter: POLARITY {ACTIVE_LOW, ACTIVE_HIGH}
   -- Normally active low is assumed.  Use this parameter to force the level
   ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
   ATTRIBUTE X_INTERFACE_PARAMETER of out2n: SIGNAL is "POLARITY ACTIVE_LOW";

begin
   process(clk)
   begin
      if rising_edge(clk) then
         if button1 = '1' then
            if c = x"FFFFFF" then
               out1 <= '1';
            else
               out1 <= '0';
            end if;
            c <= c+1;
         else
            c <= (others => '0');
            out1 <= '0';
         end if;
         if button2 = '1' then
            out2n <= '0';
         else
            out2n <= '1';
         end if;
      end if;
   end process;
end Behavioral;
