----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2024 03:53:45 AM
-- Design Name: 
-- Module Name: 4-BitFullAdder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fourBitFullAdder is
Port ( A : in STD_LOGIC_VECTOR(3 downto 0); -- 4 Bit vector to represent Each of the 4 bits of Operand A
       B : in STD_LOGIC_VECTOR(3 downto 0); -- 4 Bit vector to represent Each of the 4 bits of Operand B
       Cin : in STD_LOGIC;
       Cout : out STD_LOGIC;
       Sum : out STD_LOGIC_VECTOR(3 downto 0)
);
end fourBitFullAdder;

architecture Behavioral of fourBitFullAdder is
    signal carry: STD_LOGIC_VECTOR(3 downto 0);
     
     component FullAdder_Prelab -- Same module from Prelab
        Port ( A   : in  STD_LOGIC;
               B   : in  STD_LOGIC;
               Cin : in  STD_LOGIC;
               Cout: out STD_LOGIC;
               Sum : out STD_LOGIC);
    end component;
    
begin

-- Cascaded connections for 4-Single Bit Adder instances.
-- Makes up our 4 bit adder.
FullAdder0: FullAdder_Prelab port map(
        A => A(0),
        B => B(0),
        Cin => Cin,
        Cout => carry(0),
        Sum => Sum(0)
    );

FullAdder1: FullAdder_Prelab port map(
        A => A(1),
        B => B(1),
        Cin => carry(0),
        Cout => carry(1),
        Sum => Sum(1)
    );
    
FullAdder2: FullAdder_Prelab port map(
        A => A(2),
        B => B(2),
        Cin => carry(1),
        Cout => carry(2),
        Sum => Sum(2)
    );

FullAdder3: FullAdder_Prelab port map(
        A => A(3),
        B => B(3),
        Cin => carry(2),
        Cout => Cout,
        Sum => Sum(3)
    );


end Behavioral;
