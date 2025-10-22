# Hydrocracking Model — Version 2

### Overview
This version builds upon **Version 1** by improving model structure, parameter tuning, and control logic.  
The goal of Version 2 is to achieve stable hydrogen and temperature behavior under PID-controlled cooling.

---

### Key Changes from Version 1
- Changed errors for both PID controllers to be error = Pset - PH2 and error = T-Tset (inverted from previous_
- Implemented **PID temperature control** for coolant (`Tcool`) with proper sign convention and anti-windup.
- Re-tuned PID parameters (`Kp`, `Ki`, `Kd`) for smoother response.
- Reorganized model into **subsystems**: `reaction_kinetics`, `hydrogen_balance`, and `temperature_control`.
- Adjusted Arrhenius parameters and feed rate (`F_H2in`) for more realistic steady-state pressure (~1.4×10⁵ Pa).
- Added data logging blocks for `T`, `Ph2`, and `Nh2`.
