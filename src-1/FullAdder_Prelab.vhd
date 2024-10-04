----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2024 03:34:40 AM
-- Design Name: 
-- Module Name: FullAdder_Prelab - Behavioral
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

entity FullAdder_Prelab is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sum : out STD_LOGIC);
end FullAdder_Prelab;

architecture Behavioral of FullAdder_Prelab is

begin
Sum <= A XOR B XOR Cin;
Cout <= (Cin AND (A XOR B)) OR (A AND B);
end Behavioral;
