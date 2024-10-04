----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2024 03:36:15 AM
-- Design Name: 
-- Module Name: FullAdder_PrelabTB - Behavioral
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

entity FullAdder_PrelabTB is
--  Port ( );
end FullAdder_PrelabTB;

architecture Behavioral of FullAdder_PrelabTB is
    signal A, B, Cin : STD_LOGIC;
    signal Sum, Cout : STD_LOGIC;
    
    -- Port Connections
    component FullAdder_Prelab
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC;
           Sum : out STD_LOGIC);
    end component;
        
begin
    -- Unit Under test Declaration
    uut: FullAdder_Prelab port map(
    A => A,
    B => B,
    Cin => Cin,
    Cout => Cout,
    Sum => Sum);

process begin -- Truth Table Simulation of All Input Combinations
A <= '1'; B <= '1'; Cin <= '1'; wait for 20ns;
A <= '1'; B <= '1'; Cin <= '0'; wait for 10ns;
A <= '1'; B <= '0'; Cin <= '1'; wait for 10ns;
A <= '1'; B <= '0'; Cin <= '0'; wait for 10ns;
A <= '0'; B <= '1'; Cin <= '1'; wait for 10ns;
A <= '0'; B <= '1'; Cin <= '0'; wait for 10ns;
A <= '0'; B <= '0'; Cin <= '1'; wait for 10ns;
A <= '0'; B <= '0'; Cin <= '0'; wait for 10ns;
wait;
end process;

end Behavioral;
