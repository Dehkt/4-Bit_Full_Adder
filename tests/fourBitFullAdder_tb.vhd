----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2024 04:07:17 AM
-- Design Name: 
-- Module Name: fourBitFullAdder_tb - Behavioral
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

entity fourBitFullAdder_tb is
--  Port ( );
end fourBitFullAdder_tb;

architecture Behavioral of fourBitFullAdder_tb is
    signal A, B, Sum : STD_LOGIC_VECTOR(3 downto 0);
    Signal Cin, Cout : STD_LOGIC;
    
    -- logic function being used
    component fourBitFullAdder
    Port ( 
       A : in STD_LOGIC_VECTOR(3 downto 0); -- 4 Bit vector to represent Each of the 4 bits of Operand A
       B : in STD_LOGIC_VECTOR(3 downto 0); -- 4 Bit vector to represent Each of the 4 bits of Operand B
       Cin : in STD_LOGIC;
       Cout : out STD_LOGIC;
       Sum : out STD_LOGIC_VECTOR(3 downto 0)
       );
    end component;
    
begin
    -- Unit Under Test and port connections between Adder logic block and Testbench signals
    uut: fourBitFullAdder port map(
    A => A,
    B => B,
    Cin => Cin,
    Cout => Cout,
    Sum => Sum 
    );
    
    process
    begin
    A <= "1111"; B <= "1010"; Cin <= '0'; wait for 50ns;
    A <= "1011"; B <= "1100"; Cin <= '0'; wait for 50ns;
    A <= "0010"; B <= "1010"; Cin <= '1'; wait for 50ns;
    A <= "1001"; B <= "1110"; Cin <= '1'; wait for 50ns;
    A <= "0100"; B <= "1010"; Cin <= '1'; wait for 50ns;
    end process;
    
end Behavioral;
