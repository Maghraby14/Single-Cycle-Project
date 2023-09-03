----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:32:34 05/22/2022 
-- Design Name: 
-- Module Name:    INSTRUCTION_MEMORY - Behavioral 
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

entity INSTRUCTION_MEMORY is
    Port ( ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           INSTRUCTION : out  STD_LOGIC_VECTOR (31 downto 0)

			  
			  );
end INSTRUCTION_MEMORY;

architecture Behavioral of INSTRUCTION_MEMORY is

type memorytype is array(0 to 27) of STD_LOGIC_VECTOR (7 downto 0);
signal array_mem : memorytype := (
"00000000", "10000101", "00010000", "00100000", 

"10101100", "00000010", "00000000", "00001000", 

"10001100", "00000110", "00000000", "00001000" ,

"00010000", "01000110", "00000000", "00000001",
 
"00000000", "01000110", "10001000", "00101010",
"00000000", "10100100", "10001000", "00100010" ,
"00000000", "00000000", "00000000", "00000000"

 


);
begin
process(ADDRESS)
begin

INSTRUCTION(31 downto 24)<=array_mem(to_integer(unsigned(ADDRESS)));
INSTRUCTION(23 downto 16)<=array_mem(to_integer(unsigned(ADDRESS)+1));
INSTRUCTION(15 downto 8)<=array_mem(to_integer(unsigned(ADDRESS)+2));
INSTRUCTION(7 downto 0)<=array_mem(to_integer(unsigned(ADDRESS)+3));

end process;

end Behavioral;

