bool turn, flag[2], in_cs[2];
byte ncrit;

active [2] proctype user()
{
    assert(_pid == 0 || _pid == 1);

again:
    flag[_pid] = 1;
    turn = _pid;
    (flag[1 - _pid] == 0 || turn == 1 - _pid);

    in_cs[_pid] = true;  /* Track that this process is in the critical section */
    ncrit++;
    assert(ncrit == 1);  /* critical section */
    ncrit--;

    in_cs[_pid] = false; /* Process is leaving the critical section */
    flag[_pid] = 0;
    goto again;
}

/* LTL formulas */

/* Safety Property: Multiple processes cannot enter the critical section simultaneously. */
ltl safety { [] !(ncrit > 1) }

/* Liveness Property: If a process is waiting, it will eventually enter the critical section. */
ltl liveness1_proc0 { [] (flag[0] == 1 -> <> in_cs[0]) }
ltl liveness1_proc1 { [] (flag[1] == 1 -> <> in_cs[1]) }

/* Liveness Property: Any process not in the critical section will eventually enter it. */
ltl liveness2_proc0 { [] (!in_cs[0] -> <> in_cs[0]) }
ltl liveness2_proc1 { [] (!in_cs[1] -> <> in_cs[1]) }
