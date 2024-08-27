//This file was generated from (Academic) UPPAAL 4.1.16 (5300), August 2013
/*
8. The pacemaker can deliver a pacing pulse (VP), where the time interval between this VP and its preceding atrial event is greater than AVI.
*/
E<> (Monitor_AVI.VPDetected imply Monitor_LRI.t > TAVI)

/*
7. The time interval between two consecutive ventricular events is always less or equal to LRI.
*/
A[] (Monitor_LRI.VDetected imply Monitor_LRI.t <= TLRI)

/*
6. The pacemaker never delivers a pacing pulse (VP) within URI.
*/
A[] (Monitor_URI.VPDetected imply Monitor_URI.t >= TURI)

/*
5. The pacemaker never delivers a pacing pulse (VP) within AVI.
*/
A[] (Monitor_AVI.VPDetected imply Monitor_AVI.t >= TAVI)

/*
4. The pacemaker never delivers a pacing pulse (AP) within AEI.
*/
A[] (Monitor_AEI.APDetected imply Monitor_AEI.t >= TAEI)

/*
3. An atrial sense (AS) cannot be generated within PVARP.
*/
A[] (Monitor_PVARP.ASSensed imply Monitor_PVARP.t >= TPVARP)

/*
2. A ventricular sense (VS) cannot be generated within VRP.
*/
A[] (Monitor_VRP.VSSensed imply Monitor_VRP.t >= TVRP)

/*
1. The system is deadlock free.
*/
A[] not deadlock
