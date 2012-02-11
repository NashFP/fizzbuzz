; The function for a single term
(define (fizzbuzz x)
    ; A pseudo-hash
    (define mappings
            (list (list 15 "FizzBuzz")
                  (list 5 "Buzz")
                  (list 3 "Fizz")
                  (list 1 x)))
    (define (divides? pair)
            (= 0 (modulo x (first pair))))
    (cadar (filter divides? mappings)))

(map fizzbuzz (for*/list ((i (in-range 1 101))) i))
; Thanks, Caleb.

; This looks like a lot of code. Is my Scheme just that bad?
; I initially had the modulo conditions in-line.
; It might have been a little shorter, but it looked too repetitive to me.
