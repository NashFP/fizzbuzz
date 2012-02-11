; As far as I know, we have to create our own range function.
(define (range min max)
    ; An iterative inner function to make it tail-recursive
    (define (range_iter min max acc)
        (if (< max min)
            acc
            (range_iter (+ min 1) max (append acc (list min)))))
    (range_iter min max (list)))

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

(map fizzbuzz (range 1 100))

; This looks like a lot of code. Is my Scheme just that bad?
; I initially had the modulo conditions in-line.
; It might have been a little shorter, but it looked too repetitive to me.
