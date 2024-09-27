from z3 import And, Not, Or, Bool, Solver, Xor, sat

def majority_voter(Y_1, A, B, C, s):
    # Y = (¬A /\ B /\ C) \/ (A /\ ¬B /\ C) \/ (A /\ B /\ ¬C) \/ (A /\ B /\ C)
    # Y = (!ABC) + (A!BC) + (AB!C) + (ABC)
    s.add(Y_1 == Or(And(Not(A), B, C),
                  And(A, Not(B), C),
                  And(A, B, Not(C)),
                  And(A, B, C)))

def circuit(Y_2, A, B, C, s):
    # Y' = (A /\ B) \/ (B /\ C) \/ (A /\ C)
    # Y' = AB + BC + AC
    s.add(Y_2 == Or(And(A, B),
                        And(B, C),
                        And(A, C)))

def main():
    A, B, C = Bool('A'), Bool('B'), Bool('C')
    Y_1, Y_2 = Bool('Y_1'), Bool('Y_2')
    
    s = Solver()
    
    majority_voter(Y_1, A, B, C, s)
    
    circuit(Y_2, A, B, C, s)
    
    # Mitre circuit to check equivalence
    s.add(Xor(Y_1, Y_2))
    
    if s.check() == sat:
        print("Equations are not equivalent")
        print(s.model())
    else:
        print("Equations are equivalent")

if __name__ == '__main__':
    main()
