; The function for a single term
(define (fizzbuzz x)
    ; A pseudo-hash
    (define mappings
            (list (cons 3 "Fizz")
                  (cons 5 "Buzz")))
    (define (factor-label pair)
            (if (= 0 (modulo x (car pair)))
                (cdr pair)
                ""))
    (define (num-or-label num label)
            (if (equal? label "") num label))
    (num-or-label x (foldr string-append "" (map factor-label mappings))))

(map fizzbuzz (for*/list ((i (in-range 1 101))) i))

; I initially had the modulo conditions in-line.
; It might have been a little shorter, but it looked too repetitive to me.
;
; This is feeling much better to me now. It was driving me crazy that my mapping
; of 15 to FizzBuzz was really duplication of the 3 and 5 mappings.
; I cleaned that up by concatenating all applicable factor labels with foldr string-append.
