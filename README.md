#  Fixed Priority Arbiter (4-bit)

This project implements a **4-bit Fixed Priority Arbiter** in Verilog.  
It resolves simultaneous requests by always granting access to the **highest-priority active requester**.

---

## What is a Fixed Priority Arbiter?

An arbiter is a **combinational logic block** used in digital systems to control access to a shared resource (like a bus or memory) when multiple requesters compete for it.

In a **fixed priority arbiter**, each input request line is assigned a fixed priority — higher index = higher priority.  
The arbiter always grants access to the highest-priority active request.

---

##  What I Learned

- **Arbitration logic** design using priority resolution
- Difference between `case` and `casez` in Verilog
- Why **`casez` is preferred** for matching bit patterns with don't-cares in arbitration
- How to test multiple edge cases using **systematic simulation**
- Clean RTL coding style using **`always @(*)`** blocks for combinational design

---


Why casez is Better Here
Using casez lets you match patterns using ? (don't-care).
This avoids writing many explicit cases and ensures higher-priority bits are checked first, even if multiple requests are active.

 For example:
If req = 4'b1111, casez will match 1??? and grant only grant[3] = 1.
In a normal case, you'd have to write out every combination manually (less readable and error-prone).

Truth Table
Request (req)	Grant (grant)	Reason
0000	0000	No request active
0001	0001	Only req[0] active
0011	0010	req[1] > req[0]
1001	1000	req[3] has highest priority
1111	1000	Always grant req[3]

Tools Used
Language: Verilog HDL
Simulator: Xilinx Vivado

Author
NIKSHITHA SHREE C V
B.Tech – VLSI Design & Technology


