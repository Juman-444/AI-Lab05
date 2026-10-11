male(abraham).
male(clancy).
male(herb).
male(homer).
male(bart).

female(mona).
female(jackie).
female(marge).
female(patty).
female(selma).
female(lisa).
female(maggie).
female(ling).

parent(abraham, herb).
parent(abraham, homer).
parent(mona, herb).
parent(mona, homer).

parent(clancy, marge).
parent(clancy, patty).
parent(clancy, selma).
parent(jackie, marge).
parent(jackie, patty).
parent(jackie, selma).

parent(homer,bart).
parent(homer, lisa).
parent(homer, maggie).
parent(marge, bart).
parent(marge, lisa).
parent(marge, maggie).

parent(selma, ling).

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
son(X,Y) :- male(X), parent(Y,X).
daughter(X,Y) :- female(X), parent(Y,X).
brother(X,Y) :- male(X), parent(P,X), parent(P,Y), X\=Y.
sister(X,Y) :- female(X), parent(P,X), parent(P,Y), X\=Y.
grandfather(X,Y) :- male(X), parent(X,P), parent(P,Y).
aunt(X,Y) :- female(X), parent(P,X), parent(P,Z), parent(Z,Y), X\=Z.
uncle(X,Y) :- male(X), parent(P,X), parent(P,Z), parent(Z,Y), X\=Z.
cousin(X,Y) :- parent(Z,X), parent(W,Y), parent(P,Z), parent(P,W), Z\=W.
ancestor(X,Y) :-  parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).

