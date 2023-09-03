----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:13:28 05/22/2022 
-- Design Name: 
-- Module Name:    JUMP_SHIFTLEFT - Behavioral 
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

entity JUMP_SHIFTLEFT is
    Port ( ADDER_INPUT : in  STD_LOGIC_VECTOR (25 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (27 downto 0));
end JUMP_SHIFTLEFT;

architecture Behavioral of JUMP_SHIFTLEFT is

begin
OUTPUT(1) <= '0';
OUTPUT(0) <= '0';
OUTPUT(27 downto 2) <= ADDER_INPUT;

end Behavioral;
