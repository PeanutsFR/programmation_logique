/*

    a)

*/

/*
interrogative(L1 - L2) :-
    interrogative_totale(L1 - L2).

interrogative(L1 - L2) :-
    interrogative_partielle(L1 - L2).

interrogative_totale([est-ce-que | L] - L2) :-
    proposition(L - L2).

interrogative_partielle(L1 - L2) :-
    groupe_interrogatif(L1 - L3),
    proposition_incomplete(L3 - L2).

proposition(L1 - L2) :-
    sujet(L1 - L3),
    verbe(L3 - L4),
    complement(L4 - L2).

groupe_interrogatif([qui | L] - L).
groupe_interrogatif(L1 - L2) :-
    adjectif_interrogatif(L1 - L3),
    nom(L3 - L2).

proposition_incomplete(L1 - L2) :-
    verbe(L1 - L3),
    complement(L3 - L2).
proposition_incomplete(L1 - L2) :-
    verbe(L1 - L3),
    sujet(L3 - L2).

sujet([eve | L] - L).
sujet([marie | L] - L).
sujet([louis | L] - L).
sujet([jean | L] - L).

verbe([habite | L] - L).
verbe([habitent | L] - L).
verbe([parle | L] - L).
verbe([parlent | L] - L).
verbe([lit | L] - L).
verbe([lisent | L] - L).

complement([balzac | L] - L).
complement([hergé | L] - L).
complement([aix | L] - L).
complement([nice | L] - L).
complement([cannes | L] - L).
complement([anglais | L] - L).
complement([chinois | L] - L).

nom([auteur | L] - L).
nom([auteurs | L] - L).
nom([ville | L] - L).
nom([villes | L] - L).
nom([langue | L] - L).
nom([langues | L] - L).

adjectif_interrogatif([quel | L] - L).
adjectif_interrogatif([quels | L] - L).
adjectif_interrogatif([quelle | L] - L).
adjectif_interrogatif([quelles | L] - L).
*/

/*

    b)

*/

interrogative(L1 - L2) :-
    interrogative_totale(L1 - L2).

interrogative(L1 - L2) :-
    interrogative_partielle(L1 - L2).

interrogative_totale([est-ce-que | L] - L2) :-
    proposition(L - L2).

interrogative_partielle(L1 - L2) :-
    groupe_interrogatif(L1 - L3),
    proposition_incomplete(L3 - L2).

proposition(L1 - L2) :-
    sujet(L1 - L3, N, G),
    verbe(L3 - L4, N, _),
    complement(L4 - L2).

groupe_interrogatif([qui | L] - L).
groupe_interrogatif(L1 - L2) :-
    adjectif_interrogatif(L1 - L3, N, G),
    nom(L3 - L2, N, G).

proposition_incomplete(L1 - L2) :-
    verbe(L1 - L3, N, G),
    complement(L3 - L2).
proposition_incomplete(L1 - L2) :-
    verbe(L1 - L3, N, _),
    sujet(L3 - L2, N, G).

sujet([eve | L] - L, s, f).
sujet([marie | L] - L, s, f).
sujet([louis | L] - L, s, h).
sujet([jean | L] - L, s, h).

verbe([habite | L] - L, s, _).
verbe([habitent | L] - L, p, _).
verbe([parle | L] - L, s, _).
verbe([parlent | L] - L, p, _).
verbe([lit | L] - L, s, _).
verbe([lisent | L] - L, p, _).

complement([balzac | L] - L).
complement([hergé | L] - L).
complement([aix | L] - L).
complement([nice | L] - L).
complement([cannes | L] - L).
complement([anglais | L] - L).
complement([chinois | L] - L).

nom([auteur | L] - L, s, h).
nom([auteurs | L] - L, p, h).
nom([ville | L] - L, s, f).
nom([villes | L] - L, p, f).
nom([langue | L] - L, s, f).
nom([langues | L] - L, p, f).

adjectif_interrogatif([quel | L] - L, s, h).
adjectif_interrogatif([quels | L] - L, p, h).
adjectif_interrogatif([quelle | L] - L, s, f).
adjectif_interrogatif([quelles | L] - L, p, f).
