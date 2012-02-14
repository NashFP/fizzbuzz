#lang racket

;Going to commit these in steps to see how you get from point a to b. 
;The simple plain recursive method  ... 
;the most remedial week 1 lispy fizz buzz probably.  
;Definitely not as learned as Calvin's 
(define (fizzbuzz-from-n-to-k n k)
  ;simple 0 mod test
  (define (no-remainder? x y)
    (= (modulo x y) 0))
  ;very simple cond (think switch)...
  ;with a collection of predicates and response values
  (define (get-x-fizz-or-buzz x)
    (cond ((no-remainder? x 15) "fizzbuzz")
          ((no-remainder? x 5) "buzz")
          ((no-remainder? x 3) "fizz")
          (else (number->string x))))
  ;the actual recursive algorithm: if predicate, end result, else unfinished recursive call
  (if (= n k)
      (get-x-fizz-or-buzz n)
      (string-append 
       (get-x-fizz-or-buzz n)       
       (fizzbuzz-from-n-to-k (+ n 1) k))) ) 

;our test here should return #t for true
(string=? (fizzbuzz-from-n-to-k 1 100)
   "12fizz4buzzfizz78fizzbuzz11fizz1314fizzbuzz1617fizz19buzzfizz2223fizzbuzz26fizz2829fizzbuzz3132fizz34buzzfizz3738fizzbuzz41fizz4344fizzbuzz4647fizz49buzzfizz5253fizzbuzz56fizz5859fizzbuzz6162fizz64buzzfizz6768fizzbuzz71fizz7374fizzbuzz7677fizz79buzzfizz8283fizzbuzz86fizz8889fizzbuzz9192fizz94buzzfizz9798fizzbuzz")

