# CS705 Assignment 1 - DDD Pacemaker Mode UPPAAL Model and Verification

Our task is to create a model of DDD mode pacemaker using UPPAAL. The created model shall be verified using UPPAAL.

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
**Global Declarations**:
``` c
// Place global declarations here.
// random atria and ventricle bounds
const int Vmaxwait = 1000;
const int Vminwait = 300;
const int Amaxwait = 1000;
const int Aminwait = 300;

// given timing constraints
const int TAEI = 800; // atrial escape period
const int TAVI = 150; // atrio ventricular interval 
const int TVRP = 150; // ventricular refract. period
const int TPVARP = 100; // post ventricular atrial refract. preiod
const int TURI = 400; // upper rate interval
const int TLRI = TAEI + TAVI; // lower arte interval

// URI clock
clock x_URI = 0;
```
**System Declaration**:
``` c
// Declaration goes here.
broadcast chan VSense, ASense, VS, AS, VP, AP;

// Place template instantiations here.
// random heart models
Random_Ventricle = RV(VSense, VP);
Random_Atria = RA(ASense, AP);

// ddd timing controllers
Con_AEI = AEI(AP, AS, VP, VS);
Con_VRP = VRP(VS, VSense, VP);
Con_AVI = AVI(VP, VS, AS, AP);
Con_URI = URI(VP, VS);
Con_PVARP = PVARP(AS, ASense, VS, VP);

// Monitors for ddd timing verification
Monitor_LRI = LRI_Monitor(VS, VP);
Monitor_URI = URI_Monitor(VS, VP);
Monitor_AVI = AVI_Monitor(VS, VP, AS, AP);
Monitor_AEI = AEI_Monitor(VS, VP, AS, AP);
Monitor_VRP = VRP_Monitor(VS, VP);
Monitor_PVARP = PVARP_Monitor(VS, VP, AS, AP);

// List one or more processes to be composed into a system.
system Random_Ventricle, Random_Atria, Con_AEI, Con_VRP, Con_AVI, Con_URI, Con_PVARP, Monitor_LRI, Monitor_URI, Monitor_AVI, Monitor_AEI, Monitor_VRP, Monitor_PVARP;
```

**Random Heart Model (RHM)**
The RHM will be what generates ventricular and atrial events for the uppaal model.

![](resources/RHM.png)

*Figure 2: Random Heart Model*

### General Overview
The denoted suffix '-Sense' are the events read from the heart by the pacemaker, and the denoted suffix '-S' are the filtered events from the heart by VRP and PVARP.

I opted to use the local clocks with the controller models, instead of modelling a timer and a controller (like in the given VVI_nodelay example). When using a local clock and controller together, we can avoid using event flags and additional commited syncing nodes for the models. Additionally, we can minimise the number of broadcast channels in the system to 6 — VSense, ASense, AS, VS, AP, and VP. 
e.g. When using a broadcast chan flag instead of a global clock for URI to control and AVI to read — additional states, broadcast channel, and flags are needed for AVI and URI to operate under the timing conditions in sync. Examples shown in Figure 3 and 4.

![](resources/AVI_flag.png) ![](resources/URI_flag.png)

*Figure 3 and 4: AVI and URI example using flag*

All models contain and use their own local clocks, with URI being the one exception as AVI needs to know if the URI timer has surpassed TURI.

There is no explicit LRI model, as LRI is defined as `TLRI = TAEI + TAVI`, meaning AEI and AVI handle LRI given that they operate within the timing constraints — i.e. After a ventricular event, as AEI paces the atrial chamber when reaching TAEI, AVI moves into 'AVI' waiting state and will pace the ventricular chamber after TAVI. This means the V-V Interval will be `AEI + AVI`.

### Atrial Escape Interval (AEI) and 'Lower Rate Interval (LRI)'
Output: `AP!`

![AEI_Model](resources/AEI.png)

*Figure 5: AEI Model*

### Upper Rate Interval (URI)
Measures interval after ventricular event with global clock.

![URI_Model](resources/URI.png)

*Figure 6: URI Model*

### Atrio-Ventricular Interval (AVI)
Output: `VP!`

![AVI_Model](resources/AVI.png)

*Figure 7: AVI Model*

### Post Ventricular Atrial Refractory Period (PVARP)
Output: `AS!`

![PVARP_Model](resources/PVARP.png)

*Figure 8: PVARP Model*

### Ventricular Refractory Period (VRP)
Output: `VS!`

![VRP_Model](resources/VRP.png)

*Figure 9: VRP Model*

## UPPAAL Verification


### Results
![](resources/query_results_comments.png)
![UPPAAL Query Results](resources/query_results.png)

*Figure 10 and 11: Verification Query Results - comments, queries*

### 1. Deadlock
System is deadlock free, and verified using the 'for all paths and at all times' operator `A[]`.
```
A[] not deadlock
```

### 2. Ventricular Refractory Period (VRP) Monitor
Using 'for all paths and at all times' operator `A[]`, after a ventricular event, following ventricular events are not sensed within VRP.
```
A[] (Monitor_VRP.VSSensed imply Monitor_VRP.t >= TVRP)
```
![](resources/VRP_Monitor.png)

*Figure 12: VRP Monitor Model*

### 3. Post Ventricular Atrial Refractory Period (PVARP) Monitor
Using 'for all paths and at all times' operator `A[]`, after a ventricular event, atrial events are not sensed within PVARP.
```
A[] (Monitor_PVARP.ASSensed imply Monitor_PVARP.t >= TPVARP)
```
![](resources/PVARP_Monitor.png)

*Figure 13: PVARP Monitor Model*

### 4. Atrial Escape Interval (AEI) Monitor
Using 'for all paths and at all times' operator `A[]`, after a ventricular event, the pace maker cannot pace the atrial chamber within AEI.
```
A[] (Monitor_AEI.APDetected imply Monitor_AEI.t >= TAEI)
```
![](resources/AEI_Monitor.png)

*Figure 14: AEI Monitor Model*

### 5. Atrio-Ventricular Interval (AVI) Monitor
Using 'for all paths and at all times' operator `A[]`, after an atrial event, the pacemaker cannot pace the ventricle chamber within AVI.
```
A[] (Monitor_AVI.VPDetected imply Monitor_AVI.t >= TAVI)
```

![](resources/AVI_Monitor.png)

*Figure 15: AVI Monitor Model*

### 6. Upper Rate Interval (URI) Monitor
Using 'for all paths and at all times' operator `A[]`, after a ventricular event, the pacemaker cannot pace the ventricle chamber within URI.
```
A[] (Monitor_URI.VPDetected imply Monitor_URI.t >= TURI)
```

![](resources/URI_Monitor.png)

*Figure 16: URI Monitor Model*

### 7. Lower Rate Interval (LRI) Monitor
Using 'for all paths and at all times' operator `A[]`, that any two ventricular events is less than or equal to LRI.
```
A[] (Monitor_LRI.VDetected imply Monitor_LRI.t <= TLRI)
```
![](resources/LRI_Monitor.png)

*Figure 17: LRI Monitor Model*

### 8. `VP!`, where the time interval between this VP and its preceding atrial event is greater than AVI
Reusing the AVI Monitor, but using the 'there exist eventually' operator `E<>` for when `VP` is detected, and the timer is greater than AVI.

```
E<> (Monitor_AVI.VPDetected imply Monitor_LRI.t > TAVI)
```

*end.*