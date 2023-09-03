--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:53:59 05/22/2022
-- Design Name:   
-- Module Name:   C:/Users/AAST/Downloads/DE/MohamedNasserMohamedAlmaghraby_19102722_2021/MIPS_TEST.vhd
-- Project Name:  MohamedNasserMohamedAlmaghraby_19102722_2021
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MIPS_SINGLE_CYCLE_PROCESSOR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY MIPS_TEST IS
END MIPS_TEST;
 
ARCHITECTURE behavior OF MIPS_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPS_SINGLE_CYCLE_PROCESSOR
    PORT(
         CLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MIPS_SINGLE_CYCLE_PROCESSOR PORT MAP (
          CLK => CLK
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     

      -- insert stimulus here 

      wait;
   end process;

END;
