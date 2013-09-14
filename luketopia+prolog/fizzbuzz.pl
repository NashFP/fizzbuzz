% Decided to use FizzBuzz as an excercise to learn some Prolog.
% This was developed within the SWI-Prolog environment.
% To run it you can type the follow commands:
%
% ['fizzbuzz.pl'].
% playTo(15).
%
% For extra fun try the following:
%
% trace.
% fizzbuzz(5, X).
% notrace.

% Predicate to test divisibility.
divides(N, D) :- N rem D =:= 0.

% Predicate to compute the fizzbuzz value for a given number.
% Needs cut operator (!) to avoid matching extra cases (Prolog
% will attempt to exaust every possible match, not just the
% first one as is the case with most programming languages).
% Note the legal use of an identically named predicate and atom.
fizzbuzz(N, X) :-
    divides(N, 3), divides(N, 5), X = fizzbuzz, !;
    divides(N, 3), X = fizz, !;
    divides(N, 5), X = buzz, !;
    X = N.

% playTo/3 predicate. Needs index parameter to avoid counting
% backwards. Note that the semicolon after the first line
% denotes a separate clause for the base case. Also note
% that the cut operator is optional in this case - it just
% tells prolog to stop unification so that you don't have to
% press enter to return to the prompt.
playTo(N, L, I) :-
    I > N, L = [], !;
    fizzbuzz(I, H),
    I1 is I + 1,
    playTo(N, T, I1),
    L = [H|T].

% Convenience playTo/2 predicate that defaults the index to 1.
playTo(N, L) :- playTo(N, L, 1).

% Convenience playTo/1 predicate that prints the resulting list.
playTo(N) :- playTo(N, L), write(L).

% Test predicate. This should always evaluate to true.
test :- playTo(15, [1, 2, fizz, 4, buzz, fizz, 7, 8, fizz, buzz, 11, fizz, 13, 14, fizzbuzz]).
