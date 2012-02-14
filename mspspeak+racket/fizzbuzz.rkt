#lang racket

;Going to commit these in steps to see how you get from point a to b. 
;Now we'll collapse our fizz-buzz iterator into a generalized iterator
;passing functions instead
;Perhaps a week 3 approach
;yet again, Definitely not as learned as Calvin's 
(define (fizzbuzz-from-n-to-k n k)
  (define (increment x) (+ x 1))
  (define (no-remainder? x y)
    (= (modulo x y) 0))
  (define (get-x-fizz-or-buzz x)
    (cond ((no-remainder? x 15) "fizzbuzz")
          ((no-remainder? x 5) "buzz")
          ((no-remainder? x 3) "fizz")
          (else (number->string x))))
  ;f will be our fizz buzz called on any j from n to k
  ;op is the accumulator operation
  ;next tells us how to get to the next j from n to k... (which, lol, boundary conditions could fail us there.)
  (define (iter f op next s n k)
    (if (>= n k)
      (op s (f n))
      (iter f op next (op s (f n)) (next n) k)))
  (iter get-x-fizz-or-buzz string-append increment (get-x-fizz-or-buzz n) (increment n) k))



;our test here should return #t for true
(string=? (fizzbuzz-from-n-to-k 1 100)
   "12fizz4buzzfizz78fizzbuzz11fizz1314fizzbuzz1617fizz19buzzfizz2223fizzbuzz26fizz2829fizzbuzz3132fizz34buzzfizz3738fizzbuzz41fizz4344fizzbuzz4647fizz49buzzfizz5253fizzbuzz56fizz5859fizzbuzz6162fizz64buzzfizz6768fizzbuzz71fizz7374fizzbuzz7677fizz79buzzfizz8283fizzbuzz86fizz8889fizzbuzz9192fizz94buzzfizz9798fizzbuzz")

