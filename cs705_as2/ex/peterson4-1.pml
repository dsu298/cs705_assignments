#define N 3
byte step[N], pos[N];
byte ncrit;

active [N] proctype user() {
    byte j, k;

    again:
    k = 0;
    
    do
    :: k < N-1 ->
        pos[_pid] = k;
        step[k] = _pid;

        j = 0;
        do
        :: j == _pid -> j++
        :: else ->
            if
            :: j < N ->
                do
                :: pos[j] < k -> break
                :: else ->
                    if
                    :: step[k] != _pid -> break
                    :: else
                    fi
                od;
                j++
            :: else -> break
            fi
        od;
        k++
    :: else ->
        break
    od;

    ncrit++;
    assert(ncrit == 1); // critical section

    ncrit--;
    
    pos[_pid] = 0;
    goto again;
}


ltl safety { [](ncrit <= 1) }

ltl liveness1_p0 {[](pos[0] > 0 -> <> (ncrit == 1))}
ltl liveness1_p1 {[](pos[1] > 0 -> <> (ncrit == 1))}
ltl liveness1_p2 {[](pos[2] > 0 -> <> (ncrit == 1))}

ltl liveness2_p0 {[](pos[0] == 0 -> <> (ncrit == 1))}
ltl liveness2_p1 {[](pos[1] == 0 -> <> (ncrit == 1))}
ltl liveness2_p2 {[](pos[2] == 0 -> <> (ncrit == 1))}