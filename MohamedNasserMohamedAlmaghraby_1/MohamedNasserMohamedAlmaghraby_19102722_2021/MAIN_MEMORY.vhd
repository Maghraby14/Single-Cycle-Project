----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:35:15 05/22/2022 
-- Design Name: 
-- Module Name:    MAIN_MEMORY - Behavioral 
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

entity MAIN_MEMORY is
    Port ( ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           READ_DATA : out  STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           memread : in  STD_LOGIC;
           memwrite : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end MAIN_MEMORY;

architecture Behavioral of MAIN_MEMORY is
type memorytype is array(0 to 35) of STD_LOGIC_VECTOR (7 downto 0);
signal array_mem : memorytype := (X"AB", X"CD", X"EF", X"00", 
X"75", X"74", X"65", X"72", 
X"20", X"41", X"72", X"63", 
X"68", X"69", X"74", X"65", 
X"12", X"34", X"56", X"78",
X"7F", X"7F", X"7D", X"7D", 
X"00", X"00", X"00", X"00", 
X"78", X"78", X"6A", X"6A", 
X"00", X"00", X"00", X"01");
begin
process(ADDRESS,memread,memwrite,clk)
begin
if memread='1' and memwrite='0' then
READ_DATA(31 downto 24)<=array_mem(to_integer(unsigned(ADDRESS)));
READ_DATA(23 downto 16)<=array_mem(to_integer(unsigned(ADDRESS)+1));
READ_DATA(15 downto 8)<=array_mem(to_integer(unsigned(ADDRESS)+2));
READ_DATA(7 downto 0)<=array_mem(to_integer(unsigned(ADDRESS)+3));
end if;
if memread='0' and memwrite='1' and rising_edge(clk) then
array_mem(to_integer(unsigned(ADDRESS)))<=WRITE_DATA(31 downto 24);
array_mem(to_integer(unsigned(ADDRESS)+1))<=WRITE_DATA(23 downto 16);
array_mem(to_integer(unsigned(ADDRESS)+2))<=WRITE_DATA(15 downto 8);
array_mem(to_integer(unsigned(ADDRESS)+3))<=WRITE_DATA(7 downto 0);
end if;
end process;
end Behavioral;

