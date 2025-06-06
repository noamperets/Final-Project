library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ov7670_registers is
    Port ( clk      : in  STD_LOGIC;
           resend   : in  STD_LOGIC;
           advance  : in  STD_LOGIC;
           command  : out  std_logic_vector(15 downto 0);
           finished : out  STD_LOGIC);
end ov7670_registers;

architecture Behavioral of ov7670_registers is
   signal sreg   : std_logic_vector(15 downto 0);
   signal address : std_logic_vector(7 downto 0) := (others => '0');
begin
   command <= sreg;
   with sreg select finished  <= '1' when x"FFFF", '0' when others;

   process(clk)
   begin
      if rising_edge(clk) then
         if resend = '1' then
            address <= (others => '0');
         elsif advance = '1' then
            address <= std_logic_vector(unsigned(address)+1);
         end if;

         case address is
            when x"00" => sreg <= x"1280"; -- COM7   Reset V
--            when x"01" => sreg <= x"1280"; -- COM7   Reset V
--            when x"02" => sreg <= x"1204"; -- COM7   Size & RGB output V (bayer raw possible)
--            when x"03" => sreg <= x"1100"; -- CLKRC  Prescaler - Fin/(1+1) V
--            when x"04" => sreg <= x"0C00"; -- COM3   Lots of stuff, enable scaling, all others off ?
--            when x"05" => sreg <= x"3E00"; -- COM14  PCLK scaling off ?

--            when x"06" => sreg <= x"8C00"; -- RGB444 Set RGB format ?
--            when x"07" => sreg <= x"0400"; -- COM1   no CCIR601
--             when x"08" => sreg <= x"40D0"; -- COM15  Full 0-255 output, RGB 565 // was 4010
--            when x"09" => sreg <= x"3a00"; -- TSLB   Set UV ordering,  do not auto-reset window Y U Y V //was 3a04
--            when x"0A" => sreg <= x"1430"; -- COM9  - AGC Celling - 16*// was 1438
--            when x"0B" => sreg <= x"4f40"; --x"4fb3"; -- MTX1  - colour conversion matrix
--            when x"0C" => sreg <= x"5034"; --x"50b3"; -- MTX2  - colour conversion matrix
--            when x"0D" => sreg <= x"510C"; --x"5100"; -- MTX3  - colour conversion matrix
--            when x"0E" => sreg <= x"5217"; --x"523d"; -- MTX4  - colour conversion matrix
--            when x"0F" => sreg <= x"5329"; --x"53a7"; -- MTX5  - colour conversion matrix
--            when x"10" => sreg <= x"5440"; --x"54e4"; -- MTX6  - colour conversion matrix
--            when x"11" => sreg <= x"581e"; --x"589e"; -- MTXS  - Matrix sign and auto contrast// ???? ???? ???? ??? ?????
--            when x"12" => sreg <= x"3dc0"; -- COM13 - Turn on GAMMA and UV Auto adjust
--            when x"13" => sreg <= x"1100"; -- CLKRC  Prescaler - Fin/(1+1)
--            when x"14" => sreg <= x"1711"; -- HSTART HREF start (high 8 bits) def
--            when x"15" => sreg <= x"1861"; -- HSTOP  HREF stop (high 8 bits) def
--            when x"16" => sreg <= x"3280"; -- HREF   Edge offset and low 3 bits of HSTART and HSTOP no def ? -- try 3280 //was 32A4
--            when x"17" => sreg <= x"1903"; -- VSTART VSYNC start (high 8 bits) def
--            when x"18" => sreg <= x"1A7b"; -- VSTOP  VSYNC stop (high 8 bits ) def
--            when x"19" => sreg <= x"0300"; -- VREF   VSYNC low two bits no def// was 030a
--            when x"1A" => sreg <= x"0e01"; -- COM5(0x0E) 0x61 // was 0e61
--            when x"1B" => sreg <= x"0f43"; -- COM6(0x0F) 0x4B // was 0f4b not def
            --when x"1C" => sreg <= x"1602"; -- reserved
            --when x"1D" => sreg <= x"1e01"; -- MVFP (0x1E) 0x07  -- FLIP AND MIRROR IMAGE 0x3x // was 1e37
            --when x"1E" => sreg <= x"2102"; -- def
            --when x"1F" => sreg <= x"2201"; -- no def was 2291
            --when x"20" => sreg <= x"2907";
            --when x"21" => sreg <= x"3308"; -- was 330b
            --when x"22" => sreg <= x"350b";
            --when x"23" => sreg <= x"373f"; --was 371d
           -- when x"24" => sreg <= x"3801"; --was 3871
           --when x"25" => sreg <= x"3900"; --was 392a
            --when x"26" => sreg <= x"3c68"; -- COM12 (0x3C) 0x78 //was 3c78
            --when x"27" => sreg <= x"4d40";
            --when x"28" => sreg <= x"4e20";
            --when x"29" => sreg <= x"6900"; -- GFIX (0x69) 0x00 def
            --when x"2A" => sreg <= x"6b0a"; -- was 6b4a
            --when x"2B" => sreg <= x"7400"; --was 7410
            --when x"2C" => sreg <= x"8d4f";
            --when x"2D" => sreg <= x"8e00";
            --when x"2E" => sreg <= x"8f00";
            --when x"2F" => sreg <= x"9000";
            --when x"30" => sreg <= x"9100";
            --when x"31" => sreg <= x"9600";
            --when x"32" => sreg <= x"9a00";
            --when x"33" => sreg <= x"b084";
            --when x"34" => sreg <= x"b100"; -- was b10c
            --when x"35" => sreg <= x"b20e";
            --when x"36" => sreg <= x"b382";
            --when x"37" => sreg <= x"b80a";
			--when x"38" => sreg <= x"70BA"; -- test
			--when x"39" => sreg <= x"7135"; -- test
			--when x"40" => sreg <= x"4208"; -- test
            when others => sreg <= x"ffff";
         end case;
      end if;
   end process;
end Behavioral;