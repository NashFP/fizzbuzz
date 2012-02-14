#lang racket

;Going to commit these in steps to see how you get from point a to b. 
;The slightly more advanced recursive method, using an iterative recursion 
;Perhaps a week 2 approach
;again, Definitely not as learned as Calvin's 
(define (fizzbuzz-from-n-to-k n k)
  (define (no-remainder? x y)
    (= (modulo x y) 0))
  (define (get-x-fizz-or-buzz x)
    (cond ((no-remainder? x 15) "fizzbuzz")
          ((no-remainder? x 5) "buzz")
          ((no-remainder? x 3) "fizz")
          (else (number->string x))))
  ;now we've got another inner procedure that captures the recursive algorithm
  ;but this time we pass along the string
  (define (fz-bz-iter s n k)
    (if (= n k)
      (string-append s (get-x-fizz-or-buzz n))
      (fz-bz-iter (string-append s (get-x-fizz-or-buzz n))
                  (+ n 1)
                  k)))
  (fz-bz-iter (get-x-fizz-or-buzz n) (+ n 1) k))





;our test here should return #t for true
(string=? (fizzbuzz-from-n-to-k 1 100)
   "12fizz4buzzfizz78fizzbuzz11fizz1314fizzbuzz1617fizz19buzzfizz2223fizzbuzz26fizz2829fizzbuzz3132fizz34buzzfizz3738fizzbuzz41fizz4344fizzbuzz4647fizz49buzzfizz5253fizzbuzz56fizz5859fizzbuzz6162fizz64buzzfizz6768fizzbuzz71fizz7374fizzbuzz7677fizz79buzzfizz8283fizzbuzz86fizz8889fizzbuzz9192fizz94buzzfizz9798fizzbuzz")

