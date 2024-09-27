# CS705 Assignment 2
### Q1.) Model-checking LTL properties using SPIN
**Results**:
``` bash
admin@debian:~/repo/cs705_assignments/cs705_as2/Q1$ ./pan -a -f
pan: ltl formula safety

(Spin Version 6.5.2 -- 6 December 2019)
        + Partial Order Reduction

Full statespace search for:
        never claim             + (safety)
        assertion violations    + (if within scope of claim)
        acceptance   cycles     + (fairness enabled)
        invalid end states      - (disabled by never claim)

State-vector 36 byte, depth reached 61, errors: 0
       52 states, stored
       35 states, matched
       87 transitions (= stored+matched)
        0 atomic steps
hash conflicts:         0 (resolved)

Stats on memory usage (in Megabytes):
    0.003       equivalent memory usage for states (stored*(State-vector + overhead))
    0.285       actual memory usage for states
  128.000       memory used for hash table (-w24)
    0.534       memory used for DFS stack (-m10000)
  128.730       total actual memory usage


unreached in proctype user
        petersons_muetx.pml:21, state 12, "-end-"
        (1 of 12 states)
unreached in claim safety
        _spin_nvr.tmp:8, state 10, "-end-"
        (1 of 10 states)
unreached in claim liveness1_proc0
        _spin_nvr.tmp:17, state 10, "(!(in_cs[0]))"
        _spin_nvr.tmp:19, state 13, "-end-"
        (2 of 13 states)
unreached in claim liveness1_proc1
        _spin_nvr.tmp:28, state 10, "(!(in_cs[1]))"
        _spin_nvr.tmp:30, state 13, "-end-"
        (2 of 13 states)
unreached in claim liveness2_proc0
        _spin_nvr.tmp:39, state 10, "(!(in_cs[0]))"
        _spin_nvr.tmp:41, state 13, "-end-"
        (2 of 13 states)
unreached in claim liveness2_proc1
        _spin_nvr.tmp:50, state 10, "(!(in_cs[1]))"
        _spin_nvr.tmp:52, state 13, "-end-"
        (2 of 13 states)

pan: elapsed time 0 seconds
```

*explanation of results*

### Q2.) SMT solvers for hardware verification

**Majority voter equation**:
``` python
Y = (!ABC) + (A!BC) + (AB!C) + (ABC)
```

**Equation**:
``` python
Y' = AB + BC + AC
```

**Result**:
``` bash
admin_dareu@debian:~/repo/cs705_assignments$ python -u "/home/admin/repo/cs705_assignments/cs705_as2/Q2/smt_sovler.py"
Equations are equivalent
```
**Boolean algebra simplification steps to prove `!ABC + A!BC + AB!C + ABC == BC + AB + AC`**:
Majority voter equation:
`(!ABC) + (A!BC) + (AB!C) + (ABC)`

1. distributive law: `ABC + !ABC = BC(!A + A)`
`BC(!A + A) + A!BC + AB!C`

2. complement law: `(!A + A) = 1`
`BC + A!BC + AB!C`

3. distributive law: `BC + A!BC = C(A!B + B)`
`C(A!B + B) + AB!C`

4. absorption law: `A!B +B = A + B`
`C(A + B) + AB!C`

5. expand: `C(A + B) = AC + BC`
`AC + BC + AB!C`

6. distributive law: `AC + AB!C = A(B!C + C)`
`BC + A(B!C + C)`

7. absorption law: `A(B!C + C) = A(B + C)`
`BC + A(B + C)`

8. expand: `A(B + C) = AB + AC`
`BC + AB + AC`