# ⚡ DC Buck Converter Control System — Power Electronics Project

## 📌 Overview
This project presents the **design, modelling, control and embedded implementation** of a DC Buck Converter developed during a Power Electronics course.  
The goal was to design a stable converter, reduce ripple and overshoot, and implement the controller on a **virtual ATmega328P microcontroller** 

The project is divided into five main stages:
1. Converter Design  
2. Mathematical Simulation  
3. Closed-Loop Control Design  
4. Advanced Simscape Modelling  
5. Virtual Microcontroller Implementation

---

## 🧱 Project Structure


---

## 🔧 Part 1 — Converter Design
A DC buck converter was designed based on given electrical specifications.

---

## 📊 Part 2 — Simulation Validation
The mathematical model was implemented in Simulink.
This confirmed that the simplified model accurately represents system behaviour.

---

## 🎯 Part 3 — Closed-Loop Control
A controller was designed using the **Guillemin-Truxal method** to achieve:
- Near zero overshoot  
- Fast settling time  
- Stable output voltage

Sampling experiments showed:
- Fast sampling (PWM period / 10) → stable response
- Slow sampling (PWM period) → overshoot and solver discontinuities

---

## ⚙️ Part 4 — Advanced Simscape Model
The converter was rebuilt using Simscape Electrical to include real-world effects.
This stage highlighted the difference between ideal and realistic hardware behaviour.

---

## 🤖 Part 5 — Virtual Microcontroller (Software-in-the-Loop)
The continuous controller was converted to a discrete form and implemented in embedded C for an **ATmega328P virtual MCU**.

Key steps:
- Transfer function discretization (`c2d`)
- Recurrence equation implementation
- PWM duty cycle generation
- Integration into a virtual microcontroller wrapper

### Filtering Factor Experiments
Input filtering was adjusted to study response dynamics:

- 0.1 → strong filtering, slower response  
- 0.7 → balanced response (stable behaviour)  
- 0.9 → fastest response with minimal lag  

---

## 🧰 Tools & Technologies
- MATLAB / Simulink
- Simscape Electrical
- Embedded C
- Virtual ATmega328P (vMCU)
- Control Theory (Transfer Functions, Discretization)

---

