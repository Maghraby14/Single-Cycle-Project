----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:51:47 05/22/2022 
-- Design Name: 
-- Module Name:    MIPS_SINGLE_CYCLE_PROCESSOR - Behavioral 
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

entity MIPS_SINGLE_CYCLE_PROCESSOR is
Port ( CLK : in  STD_LOGIC:='0');
end MIPS_SINGLE_CYCLE_PROCESSOR;

architecture Behavioral of MIPS_SINGLE_CYCLE_PROCESSOR is
component ALU_CONTROL is
    Port ( OPERATION : in  STD_LOGIC_VECTOR (1 downto 0);
           FUNCTIONN : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUOP : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
-------------------------------------------------------------
component BRANCH_ALU is
    Port ( PCADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           SHIFTLEFT : in  STD_LOGIC_VECTOR (31 downto 0);
           BRANCHADDRESS : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
--------------------------------------------------------------
component BRANCH_AND is
    Port ( BRANCH_CONTROL : in  STD_LOGIC;
           ZERO : in  STD_LOGIC;
           OUTPUT : out  STD_LOGIC);
end component;
-------------------------------------------------------------
component BRANCH_SHIFT_LEFT is
    Port ( SIGN_EXTEND_OUT : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
---------------------------------------------------------------
component CONTROLUNI is
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
end component;
-----------------------------------------------------------------
component INSTRUCTION_MEMORY is
    Port ( ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           INSTRUCTION : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;
-----------------------------------------------------------------

component JUMP_SHIFTLEFT is
    Port ( ADDER_INPUT : in  STD_LOGIC_VECTOR (25 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (27 downto 0));
end component;
---------------------------------------------------------------
component MAINALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           OPERATION : in  STD_LOGIC_VECTOR (3 downto 0);
           ZERO : out  STD_LOGIC;
           RESULT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
--------------------------------------------------------------
component MAIN_MEMORY is
    Port ( ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           READ_DATA : out  STD_LOGIC_VECTOR (31 downto 0);
           WRITE_DATA : in  STD_LOGIC_VECTOR (31 downto 0);
           memread : in  STD_LOGIC;
           memwrite : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;
---------------------------------------------------------------
component ORDINARY_MUX is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           Z : out  STD_LOGIC_VECTOR (31 downto 0);
           SELECTOR : in  STD_LOGIC);
end component;
--------------------------------------------------------------
component ORDINARY_SIGNEXTEND is
    Port ( IMMIDIATE : in  STD_LOGIC_VECTOR (15 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
-------------------------------------------------------------
component PC_ADDER is
    Port ( PC_ADDRESS : in  STD_LOGIC_VECTOR (31 downto 0);
           INCREMENT : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
------------------------------------------------------------
component PC is
    Port ( INPUT : in  STD_LOGIC_VECTOR (31 downto 0);
           OUTPUT : out  STD_LOGIC_VECTOR (31 downto 0);
			  clk : in STD_LOGIC);
end component;
---------------------------------------------------------------
component REGISTER_FILE is
    Port ( ReadReagister1 : in  STD_LOGIC_VECTOR (4 downto 0);
           ReadRegister2 : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteRegister : in  STD_LOGIC_VECTOR (4 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           ReadData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           ReadData2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  RegisterWrite : in  STD_LOGIC;
			  clk : in STD_LOGIC);
			  
end component;
--------------------------------------------------------------------
component REGISTER_MUX is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           Z : out  STD_LOGIC_VECTOR (4 downto 0);
           selector : in  STD_LOGIC);
end component;
---------------------------------------------------------------------
signal Instruction_wire: STD_LOGIC_VECTOR (31 downto 0);
signal RegDst_wire : STD_LOGIC;
signal ALUsrc_wire : STD_LOGIC;
signal Memtoreg_wire : STD_LOGIC;
signal Regwrite_wire : STD_LOGIC;
signal Memread_wire : STD_LOGIC;
signal Memwrite_wire : STD_LOGIC;
signal Branch_wire : STD_LOGIC;
signal Jump_wire : STD_LOGIC;
signal Aluop_Wire0 : STD_LOGIC;
signal Aluop_Wire1 : STD_LOGIC;
signal READ_DATA_1 : STD_LOGIC_VECTOR (31 downto 0);
signal READ_DATA_2 : STD_LOGIC_VECTOR (31 downto 0);
signal Result_1 : STD_LOGIC_VECTOR (4 downto 0); 
signal ALU_Result_wire : STD_LOGIC_VECTOR (31 downto 0);
signal zero_wire : STD_LOGIC;
signal op_wire  : STD_LOGIC_VECTOR (3 downto 0);
signal IMMIDIATE_Sign_extend_wire : STD_LOGIC_VECTOR (31 downto 0) ;
signal Result_2 : STD_LOGIC_VECTOR (31 downto 0);
signal READ_MAINMEM : STD_LOGIC_VECTOR (31 downto 0);
signal Result_3 : STD_LOGIC_VECTOR (31 downto 0); 
signal From_Shift_To_Branch_ALU : STD_LOGIC_VECTOR (31 downto 0);
signal Branch_ALU_Out_Wire : STD_LOGIC_VECTOR (31 downto 0);
signal And_Out : STD_LOGIC;
signal PC_Adder_Wire : STD_LOGIC_VECTOR (31 downto 0);
signal Result_4 : STD_LOGIC_VECTOR (31 downto 0); 
signal Shift_Left_to_Jump : STD_LOGIC_VECTOR (27 downto 0);
signal Result_5 : STD_LOGIC_VECTOR (31 downto 0); 
signal PC_wire : STD_LOGIC_VECTOR(31 downto 0);
begin
INSTRUCTION : INSTRUCTION_MEMORY port map( 

ADDRESS => PC_wire , 
INSTRUCTION => Instruction_wire

);

    MAIN_ALU : MAINALU port map( 

    A => READ_DATA_1 ,
    B => Result_2 ,
    OPERATION => op_wire ,
    ZERO => zero_wire ,
    RESULT => ALU_Result_wire 
	 
);

    MAIN_ALU_CONTROL : ALU_CONTROL port map(

    OPERATION(0) => Aluop_Wire0 ,
    OPERATION(1)=>Aluop_Wire1	, 
    FUNCTIONN => Instruction_wire(5 downto 0) ,
	 ALUOP => op_wire 
	 
	 
);
    ALU_MUX : ORDINARY_MUX port map( 

    A=>READ_DATA_2 ,
    B=>IMMIDIATE_Sign_extend_wire ,
    Z=>Result_2 ,
    SELECTOR=>ALUsrc_wire 
	 
);

 CONTROL_UNIT : CONTROLUNI port map( 

    OPCODE => Instruction_wire(31 downto 26) ,
    RegDst => RegDst_wire ,
    ALUsrc => ALUsrc_wire ,
    Memtoreg => Memtoreg_wire ,
    Regwrite => Regwrite_wire ,
    Memread => Memread_wire ,
    Memwrite => Memwrite_wire ,
    Branch => Branch_wire ,
	 Jump => Jump_wire,
    Aluop(0)=>Aluop_wire0,
	 Aluop(1)=>Aluop_wire1
	 
	
);

    Reegister_File : REGISTER_FILE port map( 

    ReadReagister1 => Instruction_wire(25 downto 21) ,
    ReadRegister2 =>Instruction_wire(20 downto 16) ,
    WriteRegister =>Result_1 ,
    WriteData =>Result_3 ,
    ReadData1 =>READ_DATA_1 ,
    ReadData2 =>READ_DATA_2 ,
    RegisterWrite =>Regwrite_wire ,
	 clk=>CLK
	 
);	

    REGISTERS_MUX : REGISTER_MUX port map ( 

    A=>Instruction_wire(20 downto 16) ,
    B=>Instruction_wire(15 downto 11) ,
    Z=>Result_1 ,
    selector=> RegDst_wire 
	 
);
    BRANCH_ALUU : BRANCH_ALU port map ( 

    PCADDRESS => PC_Adder_Wire ,
    SHIFTLEFT => From_Shift_To_Branch_ALU ,
    BRANCHADDRESS => Branch_ALU_Out_Wire
	 
);
    BRANCH_And_Gate: BRANCH_AND port map( 

    BRANCH_CONTROL => Branch_wire ,
    ZERO => zero_wire ,
    OUTPUT => And_Out
	 
);

	 
    BRANCH_SHIFT_LEFTT : BRANCH_SHIFT_LEFT port map( 

    SIGN_EXTEND_OUT => IMMIDIATE_Sign_extend_wire ,
    OUTPUT => From_Shift_To_Branch_ALU
	 
);

BRANCH_SIGN_EXTEND : ORDINARY_SIGNEXTEND port map( 
	 
    IMMIDIATE=> Instruction_wire(15 downto 0) ,
    OUTPUT => IMMIDIATE_Sign_extend_wire 
	 
);

    BRANCH_MUX : ORDINARY_MUX port map( 

    A=> PC_Adder_Wire ,
    B=>Branch_ALU_Out_Wire ,
    Z=>Result_4 ,
    SELECTOR=>And_Out 
	 
);


    MM : MAIN_MEMORY port map(
	 
    ADDRESS =>ALU_Result_wire ,
    READ_DATA=>READ_MAINMEM ,
    WRITE_DATA=>READ_DATA_2 ,
    memread =>Memread_wire ,
    memwrite=>Memwrite_wire ,
	 clk=>CLK
	 
);


    MEMORY_MUX : ORDINARY_MUX port map( 
	 
    A=>ALU_Result_wire ,
    B=>READ_MAINMEM ,
    Z=>Result_3 ,
    SELECTOR=>Memtoreg_wire 
	 
);

JUMP_MUX : ORDINARY_MUX port map(  
	 
B(31 downto 28)=>PC_Adder_Wire(31 downto 28) ,
B (27 downto 0)=> Shift_Left_to_Jump ,
	 
    A =>Result_4 ,
	 Z =>Result_5 ,
    SELECTOR =>Jump_wire 
	 
);


    Adder : PC_ADDER port map( 
	 
    PC_ADDRESS => PC_wire ,
	 INCREMENT => "00000000000000000000000000000100",
    OUTPUT=> PC_Adder_Wire
	 
);

PC_OBJECT : PC port map( 
INPUT => Result_5,
           OUTPUT =>PC_wire,
			  clk => CLK);


    Shift_Left_Jump_Object : JUMP_SHIFTLEFT port map( 
	 
    ADDER_INPUT => Instruction_wire (25 downto 0), 
    OUTPUT => Shift_Left_to_Jump
	 
);

end Behavioral;

