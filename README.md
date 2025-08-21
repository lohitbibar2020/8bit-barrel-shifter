# 8-bit Barrel Shifter (Verilog)

This repository contains the **Verilog code for an 8-bit Barrel Shifter**.  
A barrel shifter allows shifting by `n` positions **in a single clock cycle**, unlike normal shifters that require multiple cycles.

---

## 🔹 Features
- Input: 8-bit data
- Shift Amount: 3 bits (0–7 positions)
- Direction Control:
  - `dir = 0` → Logical Shift Left (LSL)
  - `dir = 1` → Logical Shift Right (LSR)

---

## 🔹 Code Explanation
- `data_in`: 8-bit input signal  
- `shift_amt`: shift value (0 to 7)  
- `dir`: selects direction  
- `data_out`: shifted output  

Uses Verilog’s `<<` and `>>` operators.

---

## 🔹 Example Usage
```verilog
module tb;

    reg [7:0] data_in;
    reg [2:0] shift_amt;
    reg dir;
    wire [7:0] data_out;

    Barrel_Shifter8 uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        data_in = 8'b10110011; shift_amt = 3; dir = 0; #10; // Shift Left
        data_in = 8'b10110011; shift_amt = 2; dir = 1; #10; // Shift Right
    end
endmodule
