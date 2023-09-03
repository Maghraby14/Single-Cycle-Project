----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:36:57 05/22/2022 
-- Design Name: 
-- Module Name:    REGISTER_FILE - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REGISTER_FILE is
    Port ( ReadReagister1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ReadRegister2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegister : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           ReadData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  RegisterWrite : in  STD_LOGIC;
			  clk : in STD_LOGIC);
			  
end REGISTER_FILE;

architecture Behavioral of REGISTER_FILE is
type Regesterfiletype is array(0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
signal array_reg : Regesterfiletype := (
X"00000000", X"00000000", X"00000000", X"00000000", 
X"00000005", X"00000007", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", 
X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000", 
X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000",
X"00000000", X"00000000", X"00000000", X"00000000");



begin
ReadData1<=array_reg(to_integer(unsigned(ReadReagister1)));
ReadData2<=array_reg(to_integer(unsigned(ReadRegister2)));
process(RegisterWrite,clk)
begin
if RegisterWrite='1' and rising_edge(clk) 
then array_reg(to_integer(unsigned(WriteRegister)))<=WriteData;
end if;
end process;


end Behavioral;