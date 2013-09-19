% Decided to use FizzBuzz as an excercise to learn some Prolog.
% This was developed within the SWI-Prolog environment.

% Tests divisibility.
divides(N, D) :- N rem D =:= 0.

% Computes the fizzbuzz value for a given number.
fizzbuzz(X, fizzbuzz) :- divides(X, 3), divides(X, 5), !.
fizzbuzz(X, fizz) :- divides(X, 3), !.
fizzbuzz(X, buzz) :- divides(X, 5), !.
fizzbuzz(X, X).

% Gets the first N fizzbuzz values as a list.
play(N, L) :- numlist(1, N, X), maplist(fizzbuzz, X, L).

% Prints the first N fizzbuzz values.
play(N) :- play(N, L), write(L).

% Test predicate. This should always evaluate to true.
test :- play(15, [1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz]).

