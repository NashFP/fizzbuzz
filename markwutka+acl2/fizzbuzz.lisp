;; These books contain axioms and theorems that help in proving theorems
;; involving arithmetic and lists
(include-book "arithmetic/top-with-meta" :dir :system)
(include-book "std/lists/top" :dir :system)

;; fizzbuzz1 returns the fizzbuzz value for n
;; if n is divisible by 15, it returns "fizzbuzz"
;; otherwise if n is divisible by 3 but not 15, it returns "fizz"
;; otherwise if n is divisible by 5 but not 3, it returns "buzz"
;; otherwise it returns n

(defun fizzbuzz1 (n)
  (if (equal 0 (mod n 3))
      (if (equal 0 (mod n 5)) "fizzbuzz" "fizz")
      (if (equal 0 (mod n 5)) "buzz" n)))

;; Rather than unit tests, we suggest theorems for acl2 to prove

;; prove that if n is divisible by 3 but not 5 that fizzbuzz1 produces "fizz"
(defthm fizzbuzz1-mod3
    (implies (and (equal 0 (mod n 3)) (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) "fizz")))

;; prove that if n is divisible by 5 but not 3 that fizzbuzz1 produces "buzz"
(defthm fizzbuzz1-mod5
    (implies (and (equal 0 (mod n 5))
		  (not (equal 0 (mod n 3))))
	     (equal (fizzbuzz1 n) "buzz")))

;; prove that if n is divisible by 15 that fizzbuzz1 produces "fizzbuzz"
(defthm fizzbuzz1-mod15
    (implies (equal 0 (mod n 15))
	     (equal (fizzbuzz1 n) "fizzbuzz")))

;; prove that if n is not divisible by 3 or 5 that fizzbuzz1 produces n
(defthm fizzbuzz1-n
    (implies (and (not (equal 0 (mod n 3)))
		  (not (equal 0 (mod n 5))))
	     (equal (fizzbuzz1 n) n)))

;; fizzbuzz n produces a list from 1 to n of values from fizzbuzz1
;; (fuzzbuzz 20) produces:
;; (1 2 "fizz" 4 "buzz"
;;    "fizz" 7 8 "fizz" "buzz" 11 "fizz"
;;    13 14 "fizzbuzz" 16 17 "fizz" 19 "buzz")

(defun fizzbuzz (n)
  (if (integerp n)
      (if (<= n 0) NIL
	  (append (fizzbuzz (- n 1)) (list (fizzbuzz1 n))))
      NIL))

;; prove that (fizzbuzz n) produces a list of n items
(defthm fizzbuzz-length
    (implies (and (integerp n) (>= n 0))
	     (equal (length (fizzbuzz n)) n)))

;; prove that the 15th item in a list of 20 items is (fizzbuzz1 15) or "fizzbuzz"
;; this isn't a very useful theorem, more of a sanity check
(defthm fizzbuzz-15
    (implies (equal n 20)
	     (equal (nth 14 (fizzbuzz n)) (fizzbuzz1 15))))

;; I think this proves that the fizzbuzz function produces correct lists for any n >= 0
;; it's an inductive proof that basically says that if you have a list generated
;; by (fizzbuzz n), and you append (fizzbuzz1 (+ n 1)) to that list, it is the same
;; as (fizzbuzz (+ n 1))
(defthm fizzbuzz-list
    (implies (and (integerp n) (>= n 0)
		  (equal l (fizzbuzz n)))
	     (equal (append l (list (fizzbuzz1 (+ n 1)))) (fizzbuzz (+ n 1)))))
      
