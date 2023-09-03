----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:45:05 05/22/2022 
-- Design Name: 
-- Module Name:    MAINALU - Behavioral 
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
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MAINALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           OPERATION : in  STD_LOGIC_VECTOR (3 downto 0);
           ZERO : out  STD_LOGIC;
           RESULT : out  STD_LOGIC_VECTOR (31 downto 0));
end MAINALU;

architecture Behavioral of MAINALU is

begin
process(A,B,OPERATION)
begin
if OPERATION="0000"
then RESULT <= A and B;
elsif OPERATION = "0001"
then RESULT<= A or B;
elsif OPERATION = "0111"
then 
    if A < B then RESULT <= X"00000001";
    else RESULT <= X"00000000";
	 end if;
elsif OPERATION ="0010"
then RESULT <= A + B;
elsif OPERATION = "0110"
then RESULT <= A - B;
elsif OPERATION = "1100"
then RESULT <= A nor B ;
end if ;

if A =B 
then ZERO <='1';
else 
ZERO <= '0';
end if ;
 
end process;


end Behavioral;