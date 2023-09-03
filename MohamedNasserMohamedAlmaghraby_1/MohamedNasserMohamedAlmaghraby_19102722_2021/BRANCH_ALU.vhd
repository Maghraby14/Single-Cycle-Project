----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:51:03 05/22/2022 
-- Design Name: 
-- Module Name:    BRANCH_ALU - Behavioral 
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

entity BRANCH_ALU is
    Port ( PCADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           SHIFTLEFT : in  STD_LOGIC_VECTOR (31 downto 0);
           BRANCHADDRESS : out  STD_LOGIC_VECTOR (31 downto 0));
end BRANCH_ALU;

architecture Behavioral of BRANCH_ALU is

begin
BRANCHADDRESS <=STD_LOGIC_VECTOR(to_unsigned((to_integer( unsigned( PCADDRESS ))+to_integer(unsigned( SHIFTLEFT  ))), 32));

end Behavioral;
