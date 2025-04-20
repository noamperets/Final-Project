library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rgb_to_16bit is
    port (
        vga_red   : in  STD_LOGIC_VECTOR(4 downto 0);
        vga_green : in  STD_LOGIC_VECTOR(5 downto 0);
        vga_blue  : in  STD_LOGIC_VECTOR(4 downto 0);
        rgb16_out : out STD_LOGIC_VECTOR(15 downto 0)
    );
end rgb_to_16bit;

architecture Behavioral of rgb_to_16bit is
begin
    process(vga_red, vga_green, vga_blue)
    begin
        -- Combine RGB into a single 16-bit vector
        rgb16_out <= vga_red & vga_green & vga_blue;
    end process;
end Behavioral;
