# 🔢 4-bit Ripple Carry Adder (Structural Verilog)

## 📌 Overview

This project implements a **4-bit Ripple Carry Adder (RCA)** using **structural modeling in Verilog HDL**.
The design is built by connecting multiple 1-bit Full Adders in series, where the carry output of each stage is passed to the next stage.

---

## ⚙️ Design Description

A Ripple Carry Adder performs binary addition by propagating the carry from the **Least Significant Bit (LSB)** to the **Most Significant Bit (MSB)**.

### 🔁 Working Principle

* Each Full Adder adds:

  * Two input bits (`a`, `b`)
  * One carry input (`cin`)
* It produces:

  * Sum (`sum`)
  * Carry output (`cout`)
* The carry "ripples" through all stages → hence the name **Ripple Carry Adder**

---

## 🧱 Module Structure

### 1️⃣ Full Adder (1-bit)

Basic building block of the design.

**Inputs:**

* `a`, `b`, `cin`

**Outputs:**

* `sum`, `carry`

---

### 2️⃣ 4-bit Ripple Carry Adder

Constructed using **4 Full Adders**

**Inputs:**

* `a[3:0]` → First operand
* `b[3:0]` → Second operand
* `cin` → Initial carry input

**Outputs:**

* `sum[3:0]` → Result
* `cout` → Final carry output

---

## 🔗 Structural Connection

```
FA0 → FA1 → FA2 → FA3
 ↑     ↑     ↑     ↑
cin   c1    c2    c3
```

* Carry propagates stage-by-stage:

  * `c1`, `c2`, `c3` are intermediate carries

---

## 🧪 Testbench

The testbench verifies functionality using multiple test cases.

### ✅ Sample Test Case

| A (4-bit) | B (4-bit) | Cin | Sum  | Cout |
| --------- | --------- | --- | ---- | ---- |
| 1010      | 0110      | 0   | 0000 | 1    |

👉 Result: `10 + 6 = 16 (10000)`

---

## 💻 Simulation

Simulated using:

* Xilinx Vivado

### Steps:

1. Add design files (`full_adder.v`, `ripple_carry_adder.v`)
2. Add testbench file (`ripple_carry_adder_tb.v`)
3. Run **Behavioral Simulation**
4. Observe waveform and console output

---

## ⚡ Advantages

* Simple and easy to design
* Modular approach using Full Adders
* Good for learning digital design basics

---

## ⚠️ Limitations

* Slow operation due to **carry propagation delay**
* Not suitable for high-speed applications

---

## 🚀 Applications

* Basic arithmetic units
* ALU (Arithmetic Logic Unit)
* Embedded systems
* Digital signal processing (basic level)

---

## 📁 Files Included

* `full_adder.v`
* `ripple_carry_adder.v`
* `ripple_carry_adder_tb.v`

---

## 👨‍💻 Author

* Your Name

---

## 📜 License

This project is for educational purposes.
