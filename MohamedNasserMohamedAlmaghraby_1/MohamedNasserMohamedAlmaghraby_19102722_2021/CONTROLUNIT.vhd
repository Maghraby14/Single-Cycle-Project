----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:41:17 05/22/2022 
-- Design Name: 
-- Module Name:    CONTROLUNI - Behavioral 
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

entity CONTROLUNI is
    Port ( OPCODE : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out STD_LOGIC:='0';
           ALUsrc : out  STD_LOGIC:='0';
           Memtoreg : out  STD_LOGIC:='0';
           Regwrite : out STD_LOGIC:='0';
           Memread : out STD_LOGIC:='0';
           Memwrite : out STD_LOGIC:='0';
           Branch : out STD_LOGIC:='0';
			  Jump : out  STD_LOGIC:='0';
           Aluop : out  STD_LOGIC_VECTOR (1 downto 0));
end CONTROLUNI;

architecture Behavioral of CONTROLUNI is
begin
process(OPCODE)
begin
if OPCODE="000000" then 
RegDst<='1';
ALUsrc<='0';
Memtoreg<='0';
Regwrite<='1';
Memread<='0';
Memwrite<='0';
Branch<='0';
Jump<='0';
Aluop<="10";   -- 01
end if;
if OPCODE="100011" then 
RegDst<='0';
ALUsrc<='1';
Memtoreg<='1';
Regwrite<='1';
Memread<='1';
Memwrite<='0';
Branch<='0';
Jump<='0';
Aluop<="00"; -- 00
end if;
if OPCODE="101011" then 
ALUsrc<='1';
Regwrite<='0';
Memread<='0';
Memwrite<='1';
Branch<='0';
Jump<='0';
Aluop<="00"; -- 00
end if;
if OPCODE="000100" then 
ALUsrc<='0';
Regwrite<='0';
Memread<='0';
Memwrite<='0';
Branch<='1';
Jump<='0';
Aluop<="01"; --01
end if;
if OPCODE="000010" then 
Regwrite<='1';
Memread<='0';
Memwrite<='0';
Branch<='0';
Jump<='1';
end if;
end process;
end Behavioral;