----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:12:52 05/22/2022 
-- Design Name: 
-- Module Name:    PC_ADDER - Behavioral 
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

entity PC_ADDER is
    Port ( PC_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           INCREMENT : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end PC_ADDER;

architecture Behavioral of PC_ADDER is

begin
 OUTPUT<=STD_LOGIC_VECTOR(to_unsigned((to_integer(unsigned(PC_ADDRESS))+to_integer(unsigned(INCREMENT ))), 32));
end Behavioral;
