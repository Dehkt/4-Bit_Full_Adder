## Project Overview
This project implements a 4-bit full adder using Verilog designed to perform binary addition on two 4-bit input vectors, A and B, along with a carry-in signal (Cin). The architecture utilizes four single-bit full adders to facilitate carry propagation. The design is implemented using OpenLane Flow and Sky130nm technology.

## Features
- Supports binary addition of two 4-bit numbers.
- Cascades four single-bit full adders.

- Outputs the sum and carry-out.

## Abstracted Circuit
![Alt text](https://www.electronicshub.org/wp-content/uploads/2015/06/4-bit-adder.jpg)

*Image Source: [www.electronicshub.org](https://www.electronicshub.org/binary-adder-and-subtractor/)

## ASIC Design Flow
The following steps outline the ASIC design flow for the 4-bit full adder project:

1. **Initial Design**
   - Designed the 4-bit full adder using Verilog in Xilinx Vivado

2. **Verification**
   - Created testbenches to validate the functionality of the design before Synthesis.

3. **RTL Synthesis**
   - Use synthesis tools to convert the RTL (Register Transfer Level) description into a gate-level netlist.

## Schematic
![elaborateddesign](https://github.com/user-attachments/assets/eb174f81-7981-4b62-89ce-11ab3da7df60)

4. **Netlist Generation**
   - Generate a netlist from the synthesized RTL.

5. **Layout Synthesis**
   - Perform layout synthesis using sky130pdk.

6. **Static Timing Analysis (STA) with OpenSTA**
   - Analyze the timing of the design to ensure it meets performance requirements.

7. **GDSII File Generation**
   - Produce GDS files representing the final layout of the circuit for fabrication.
  
## Final Layout of Full Adder (KLayout)
![FinalLayout](https://github.com/user-attachments/assets/28edbb96-039f-466b-a374-af318de0c6e6)

8. **Signoff**
   - Perform final checks and sign off the design for fabrication, ensuring all design rules are satisfied.

