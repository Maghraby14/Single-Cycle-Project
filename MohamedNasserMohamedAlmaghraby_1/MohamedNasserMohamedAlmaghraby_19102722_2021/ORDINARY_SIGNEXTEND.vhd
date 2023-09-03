----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:09:49 05/22/2022 
-- Design Name: 
-- Module Name:    ORDINARY_SIGNEXTEND - Behavioral 
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
entity ORDINARY_SIGNEXTEND is
    Port ( IMMIDIATE : in  STD_LOGIC_VECTOR (15 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end ORDINARY_SIGNEXTEND;

architecture Behavioral of ORDINARY_SIGNEXTEND is

begin
process(IMMIDIATE)
begin
if IMMIDIATE(15) = '0' then OUTPUT(31 downto 16 ) <= x"0000" ;
elsif IMMIDIATE(15) = '1' then OUTPUT(31 downto 16) <= x"FFFF";
end if;
OUTPUT(15 downto 0) <= IMMIDIATE;
end process;

end Behavioral;

