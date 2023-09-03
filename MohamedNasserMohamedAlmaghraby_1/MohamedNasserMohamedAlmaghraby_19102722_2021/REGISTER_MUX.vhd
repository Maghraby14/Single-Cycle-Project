----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:05:43 05/22/2022 
-- Design Name: 
-- Module Name:    REGISTER_MUX - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REGISTER_MUX is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Z : out  STD_LOGIC_VECTOR (4 downto 0);
           selector : in  STD_LOGIC);
end REGISTER_MUX;

architecture Behavioral of  REGISTER_MUX is

begin
process(A,B,selector)
begin
if selector='0'
then Z<=A;
else Z<=B;
end if;
end process;

end Behavioral;
