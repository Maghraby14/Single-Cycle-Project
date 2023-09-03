----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:04:51 05/22/2022 
-- Design Name: 
-- Module Name:    ALU_CONTROL - Behavioral 
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

entity ALU_CONTROL is
    Port ( OPERATION : in  STD_LOGIC_VECTOR (1 downto 0);
           FUNCTIONN : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_CONTROL;

architecture Behavioral of ALU_CONTROL is

begin
process(OPERATION,FUNCTIONN)
begin
if OPERATION="00" then aluop <= "0010";
end if;
if OPERATION="01" then aluop <= "0110";
end if;
if OPERATION="10" AND FUNCTIONN(3 downto 0) ="0000" then ALUOP<="0010";
end if;
if OPERATION(1)='1' AND FUNCTIONN(3 downto 0)="0010" then ALUOP<="0110";
end if;
if OPERATION="10" AND FUNCTIONN(3 downto 0)="0100" then ALUOP<="0000";
end if;
if OPERATION="10" AND FUNCTIONN(3 downto 0)="0101" then ALUOP<="0001";
end if;
if OPERATION(1)='1' AND FUNCTIONN(3 downto 0)="1010" then ALUOP<="0111";
end if;
end process;


end Behavioral;