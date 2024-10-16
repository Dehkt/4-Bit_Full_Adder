-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Wed Oct 16 14:30:55 2024
-- Host        : DESKTOP-5KHITUL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Victo/FourBitFullAdderIP_Test/FourBitFullAdderIP_Test.gen/sources_1/bd/FourBitFullAdder_IP/ip/FourBitFullAdder_IP_FourBitFullAdder_0_0/FourBitFullAdder_IP_FourBitFullAdder_0_0_sim_netlist.vhdl
-- Design      : FourBitFullAdder_IP_FourBitFullAdder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity FourBitFullAdder_IP_FourBitFullAdder_0_0 is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cin : in STD_LOGIC;
    Sum : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Cout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of FourBitFullAdder_IP_FourBitFullAdder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of FourBitFullAdder_IP_FourBitFullAdder_0_0 : entity is "FourBitFullAdder_IP_FourBitFullAdder_0_0,FourBitFullAdder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of FourBitFullAdder_IP_FourBitFullAdder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of FourBitFullAdder_IP_FourBitFullAdder_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of FourBitFullAdder_IP_FourBitFullAdder_0_0 : entity is "FourBitFullAdder,Vivado 2024.1";
end FourBitFullAdder_IP_FourBitFullAdder_0_0;

architecture STRUCTURE of FourBitFullAdder_IP_FourBitFullAdder_0_0 is
  signal \inst/carry_1__2\ : STD_LOGIC;
  signal \inst/carry_21__0\ : STD_LOGIC;
begin
Cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \inst/carry_1__2\,
      I1 => B(2),
      I2 => A(2),
      O => Cout
    );
\Sum[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Cin,
      I1 => A(0),
      I2 => B(0),
      O => Sum(0)
    );
\Sum[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => Cin,
      I3 => A(1),
      I4 => B(1),
      O => Sum(1)
    );
\Sum[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11171777EEE8E888"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      I2 => A(0),
      I3 => B(0),
      I4 => Cin,
      I5 => \inst/carry_21__0\,
      O => Sum(2)
    );
\Sum[2]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      O => \inst/carry_21__0\
    );
\Sum[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => B(3),
      I1 => A(3),
      I2 => \inst/carry_1__2\,
      I3 => B(2),
      I4 => A(2),
      O => Sum(3)
    );
\Sum[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => Cin,
      I1 => B(0),
      I2 => A(0),
      I3 => B(1),
      I4 => A(1),
      O => \inst/carry_1__2\
    );
end STRUCTURE;
