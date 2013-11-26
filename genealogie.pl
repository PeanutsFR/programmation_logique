%   +-------------------+
%   |    Généalogie   |
%   +-------------------+


        % --- a)

/*
 * fils(pere, mere, fils).
 * fille(pere, mere, fille).
 */

% Fils
fils(michel, laurence, thomas).
fils(jean, sophie, pierre).
fils(jean, sophie, jacques).
fils(jacques, sylvie, michel).
fils(thomas, stephanie, alexandre).

% Fille
fille(pierre, marie, virginie).
fille(jacques, sylvie, nathalie).
fille(francois, sylvie, mathilde).
fille(paul, virginie, stephanie).


        % --- b)

enfant(Pere, Mere, Enfant) :- fils(Pere, Mere, Enfant).
enfant(Pere, Mere, Enfant) :- fille(Pere, Mere, Enfant).


        % --- c)

parent(Enfant, Parent) :- fils(Parent, _, Enfant).
parent(Enfant, Parent) :- fils(_, Parent, Enfant).
parent(Enfant, Parent) :- fille(Parent, _, Enfant).
parent(Enfant, Parent) :- fille(_, Parent, Enfant).


        % --- d)

homme(X) :- fils(_, _, X).
homme(X) :- fils(X, _, _).
homme(X) :- fille(X, _, _).

femme(X) :- fille(_, _, X).
femme(X) :- fille(_, X, _).
femme(X) :- fils(_, X, _).


        % --- e)

grand_parent(PetitEnfant, GrandParent)
  :- parent(PetitEnfant, Parent), parent(Parent, GrandParent).

grand_pere(PetitEnfant, GrandPere)
  :- enfant(GrandPere, _, Fils), enfant(Fils, _, PetitEnfant).
grand_pere(PetitEnfant, GrandPere)
  :- enfant(GrandPere, _, Fille), enfant(_, Fille, PetitEnfant).

grand_mere(PetitEnfant, GrandMere)
  :- enfant(_, GrandMere, Fils), enfant(Fils, _, PetitEnfant).
grand_mere(PetitEnfant, GrandMere)
  :- enfant(_, GrandMere, Fille), enfant(_, Fille, PetitEnfant).


        % --- f)

frere(X, Frere) :- fils(Pere, Mere, Frere), fils(Pere, Mere, X).
frere(X, Frere) :- fils(Pere, Mere, Frere), fille(Pere, Mere, X).

/* Lorsqu on lance la requête frere(X, Frere), on obtient les couples :
  _ (X, Frere)
  _ (Frere, X).
  Cela signifie qu on peut être son propre frère, ce qui n est pas normal. */


        % --- g)

ancetre(Descendant, Ancetre)
  :- parent(Descendant, Ancetre).

ancetre(Descendant, Ancetre)
  :- parent(Descendant, Parent), ancetre(Parent, Ancetre).

