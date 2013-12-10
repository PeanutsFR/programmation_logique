/* TP2 - Vegetaux */

/* Question 1. */

epanoui(feuille).
epanoui(fleur).
epanoui(tige(V1, V2)) :- epanoui(V1), epanoui(V2).

/* Question 2. */

fleuri(fleur).
fleuri(tige(_, V)) :- fleuri(V).
fleuri(tige(V, _)) :- fleuri(V).

/* Question 3. */

nb_fleurs(fleur, 1).
nb_fleurs(feuille, 0).
nb_fleurs(rien, 0).

nb_fleurs(tige(V1, V2), N) :-
  nb_fleurs(V1, N1),
  nb_fleurs(V2, N2),
  N is N1 + N2.

/* Question 4. */

/*
morceau_choisi(V, 1, fleur) :- fleuri(V).

morceau_choisi(tige(T1, T2), N, V2) :-
    fleuri(V2),
    nb_fleurs(V2, N),
    morceau_choisi(T1, N, V2),
    morceau_choisi(T2, N, V2).

morceau_choisi(V, N, tige(T1, T2)) :-
    fleuri(tige(T1, T2)),
    nb_fleurs(tige(T1, T2), N),
    morceau_choisi(V, N, T1),
    morceau_choisi(V, N, T2).
*/

/* Question 5. */

max(N1, N2, M) :- N1 > N2, M is N1.
max(N1, N2, M) :- N1 =< N2, M is N2.

/* Question 6. */

hauteur(fleur, 1).
hauteur(feuille, 1).
hauteur(rien, 0).

hauteur(tige(V1, V2), H) :-
    //H1 is H1 + 1,
    //H2 is H2 + 1,
    hauteur(V1, H1),
    hauteur(V2, H2),
    max(H1, H2, Hp),
    H is Hp + 1.

    // erreur -> débugger l'addition (incrémentation)
