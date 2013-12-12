hanoi(N,Init,Final,L) :-
    N>1,
    Nb is N-1,
    T is 6-Final-Init,
    hanoi(Nb, Init, T, L),
   //append([d(Init, Final)], [], Lb)...............
    hanoi(Nb, T, Final, L2).
