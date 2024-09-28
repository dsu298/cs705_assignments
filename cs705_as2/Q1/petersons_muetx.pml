bool turn;
bool flag[2];
byte ncrit = 0;

active [2] proctype user()
{
	assert(_pid == 0 || _pid == 1);
again:
	flag[_pid] = 1;
	turn = _pid;
	(flag[1 - _pid] == 0 || turn == 1 - _pid) -> skip;

	ncrit++;
	assert(ncrit == 1);  /* Critical section*/
	ncrit--;

	flag[_pid] = 0;
	goto again;
}

/* Safety Property: Multiple processes cannot enter the critical section simultaneously. */
ltl safety { [](ncrit <= 1) }

/* Liveness Property: If a process is waiting, it will eventually enter the critical section. */
//ltl liveness1 { [](flag[_pid] -> <> (ncrit == 1)) }
ltl liveness1_pid0 { [](flag[0] -> <> (ncrit == 1) && (_pid == 0)) }
ltl liveness1_pid1 { [](flag[1] -> <> (ncrit == 1) && (_pid == 1)) }

/* Liveness Property: Any process not in the critical section will eventually enter it. */
//ltl liveness2 { [](flag[_pid] == 0 -> <> (ncrit == 1)) }
ltl liveness2_pid0 { [](flag[0] == 0 -> <> (ncrit == 1) && (_pid == 0)) }
ltl liveness2_pid1 { [](flag[1] == 0 -> <> (ncrit == 1) && (_pid == 1)) }