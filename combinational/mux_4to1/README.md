# 4:1 Multiplexer

This module implements a 4:1 multiplexer using **behavioral modeling** in Verilog.

---

## 📁 Files

* `mux_behavioral.v` → Verilog design
* `mux_tb.v` → Testbench
* `waveform.png` → Simulation output

---

## 🧠 Description

A 4:1 multiplexer selects one of four inputs (`a, b, c, d`) based on a 2-bit select signal (`sel`).

---

## ▶️ Simulation Result

The waveform verifies correct functionality:

* `sel = 00 → y = a`
* `sel = 01 → y = b`
* `sel = 10 → y = c`
* `sel = 11 → y = d`

---

## 📌 Learning Outcome

* Behavioral modeling using `always` block
* Use of `case` statement
* Writing and verifying testbenches
