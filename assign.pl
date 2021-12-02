rhymes(1,1).
rhymes(2,2).

element_at(X,[X|T],1,T).
element_at(X,[_|T],N,Y) :-
	N1 is N-1,
	element_at(X,T,N1,Y).

matches(P,[H|T]):-
	rhymes(P,H);rhymes(H,P);matches(P,T).

check_rhymes([]).
check_rhymes([H|T]) :-
	\+matches(H,T),
	check_rhymes(T).

haiku([Q,W,E,R,T,Y,U]):-
	check_rhymes([Q,W,E,R,T,Y,U]).

doha(List,X):-
	element_at(A,List,4,P),
	element_at(B,P,3,Q),
	element_at(C,Q,4,R),
	element_at(D,R,3,X),
	(rhymes(A,C);rhymes(C,A)),
	(rhymes(B,D);rhymes(D,A)).

quartet(List,X):-
	element_at(A,List,1,P),
	element_at(B,P,13,Q),
	element_at(C,Q,1,R),
	element_at(D,R,13,X),
	(rhymes(A,C);rhymes(C,A)),
	(rhymes(B,D);rhymes(D,B)).

fusionsonnet([]).
fusionsonnet([A,S,D,F,G,H,J]) :- haiku([A,S,D,F,G,H,J]).
fusionsonnet(List):-
	doha(List,T),
	fusionsonnet(T).
fusionsonnet(List):-
	quartet(List,T),
	fusionsonnet(T).

poemtype(List,doha) :- doha(List,[]),!.
poemtype(List,quartet) :- quartet(List,[]),!.
poemtype(List,haiku):- haiku(List),!.
poemtype(List,fusionsonnet) :- fusionsonnet(List),!.
poemtype(_,unknown).

