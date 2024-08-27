# CS705 Assignment 1 - DDD Pacemaker Mode UPPAAL Model and Verification

Our task is to create a model of DDD mode pacemaker using UPPAAL. The created model shall be 
verified using UPPAAL.

## Modelling
Use UPPAAL to build a DDD mode pacemaker to deliver treatments conforming to the timing constraints.
![DDD_Mode_Timing_Diagram](resources/ddd_timing_diagram.png)
*Figure 1: DDD Pacemaker Mode Timing Diagram*

**Timing Constants**:
``` c
const int AEI = 800; 
const int AVI = 150; 
const int VRP = 150; 
const int PVARP = 100; 
const int URI = 400; 
const int LRI = AEI + AVI;
```

### Atrial Escape Interval (AEI)

### Lower Rate Interval (LRI)

![LRI_Model](resources/LRI.png)
*Figure 2: LRI Model*

### Upper Rate Interval (URI)

![URI_Model](resources/URI.png)
*Figure 3: URI Model*

### Atrio-Ventricular Interval (AVI)
A-V Interval
![AVI_Model](resources/AVI.png)
*Figure 4: AVI Model*

### Post Ventricular Atrial Refractory Period (PVARP)
Minimum V-A Interval
![PVARP_Model](resources/PVARP.png)
*Figure 5: PVARP Model*

### Ventricular Refractory Period (VRP)
Minimum V-V Interval.
![VRP_Model](resources/VRP.png)
*Figure 6: VRP Model*

## Verification
Perform the verification of the following properties on the closed-loop system, composed of the heart model, the DDD mode pacemaker and monitors.

### 1. Deadlock
System is deadlock free, and verified using query `A[] not deadlock`.

### 2. Ventricular Refractory Period (VRP) Monitor

![]()
*Figure 7: VRP Monitor Model*

### 3. Post Ventricular Atrial Refractory Period (PVARP) Monitor

![]()
*Figure 8: PVARP Monitor Model*

### 4. Atrial Escape Interval (AEI) Monitor

![]()
*Figure 9: AEI Monitor Model*

### 5. Atrio-Ventricular Interval (AVI) Monitor

![]()
*Figure 10: AVI Monitor Model*

### 6. Upper Rate Interval (URI) Monitor

![]()
*Figure 11: URI Monitor Model*

### 7. Lower Rate Interval (LRI) Monitor

![]()
*Figure 12: LRI Monitor Model*

### 8. `VP!`, where the time interval between this VP and its preceding atrial event is greater than AVI

![]()
*Figure 13: A-VP Interval Monitor Model*