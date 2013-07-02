#lang racket
(define (fizzbuzz i)
  (letrec (
           [f (lambda (x lst) 
                (cond[(> x 100) (print lst)]
                     [(eq? (remainder x 15) 0) (f (+ x 1) (append lst (cons "fizzbuzz" null)))]
                     [(eq? (remainder x 3) 0) (f (+ x 1) (append lst (cons "fizz" null))) ]
                     [(eq? (remainder x 5) 0)  (f (+ x 1) (append lst (cons "buzz" null)))]
                     [#t (f (+ x 1) (append lst (cons x null)))]))]
           
           )
    (f i '())))