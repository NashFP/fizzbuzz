#lang racket

;Going to commit these in steps to see how you get from point a to b. 
;Now we'll switch from our homebrew iterator to using
;a set of numbers from n to k and use map to 
;compute fizzbuzz(j) for each j from n to k
;Perhaps a week 4 or 5 approach using lists as streams
;closer to Calvin's but I'm sticking with my boring fizzbuzz. :)

(define (fizzbuzz-from-n-to-k->string n k)
  (foldr 
    string-append 
    "" 
    (fizzbuzz-from-n-to-k n k)))

(define (fizzbuzz-from-n-to-k n k)
  (map 
      get-x-fizz-or-buzz 
      (get-range n k)))

(define (get-x-fizz-or-buzz x)
    (cond ((no-remainder? x 15) "fizzbuzz")
          ((no-remainder? x 5) "buzz")
          ((no-remainder? x 3) "fizz")
          (else (number->string x))))

(define (no-remainder? x y)
    (= (modulo x y) 0))

(define (get-range n k)
  (build-list 
        (- (+ 1 k) n) 
        (increment-by-z n)  ))

(define (increment-by-z z) (lambda (x) (+ x z)))

  
;our test here should return #t for true
(string=? (fizzbuzz-from-n-to-k->string 1 100)
   "12fizz4buzzfizz78fizzbuzz11fizz1314fizzbuzz1617fizz19buzzfizz2223fizzbuzz26fizz2829fizzbuzz3132fizz34buzzfizz3738fizzbuzz41fizz4344fizzbuzz4647fizz49buzzfizz5253fizzbuzz56fizz5859fizzbuzz6162fizz64buzzfizz6768fizzbuzz71fizz7374fizzbuzz7677fizz79buzzfizz8283fizzbuzz86fizz8889fizzbuzz9192fizz94buzzfizz9798fizzbuzz")

