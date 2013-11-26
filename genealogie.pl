%   +-------------------+
%   |    Généalogie   |
%   +-------------------+


        % a)

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


% --- Réponses ---

/* Requete : jean et sophie ont-ils un(des) fils ?
  -> ?- fils(jean, sophie, Fils). */

/* Requete : de quels parents Nathalie est-elle la fille ?
  -> ?- fille(Pere, Mere, nathalie). */

/* Requete : déterminer la ou les filles de Sylvie.
  -> ?- fille(Pere, sylvie, Fille). */

% --------------------


        % b)








/*
:- initialization(main).

main :- requete(X,Y), write(X), write(Y).

?- requete(X, Y).
*/
