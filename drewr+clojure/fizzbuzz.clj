;; Since we don't have sweet pattern matching (in stock Clojure at
;; least), we can work around it with cond and some helper fns.

(defn fizzbuzz [n]
  (let [m #(zero? (mod %2 %1))
        f #(m 3 %)
        b #(m 5 %)
        fb #(and (f %) (b %))]
    (map #(cond (fb %) 'FizzBuzz
                (f %)  'Fizz
                (b %)  'Buzz
                :else %)
         (range 1 (inc n)))))

(defn print-seq [xs]
  (println (apply str (interpose \space xs))))

;; user=> (fizzbuzz 20)
;; (1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17 Fizz 19)

;; user=> (print-seq (FizzBuzz 20))
;; 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17 Fizz 19

;; The actual requirement...
;; user=> (print-seq (FizzBuzz 100))
;; 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17
;; Fizz 19 Buzz Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz 31 32 Fizz
;; 34 Buzz Fizz 37 38 Fizz Buzz 41 Fizz 43 44 FizzBuzz 46 47 Fizz 49
;; Buzz Fizz 52 53 Fizz Buzz 56 Fizz 58 59 FizzBuzz 61 62 Fizz 64 Buzz
;; Fizz 67 68 Fizz Buzz 71 Fizz 73 74 FizzBuzz 76 77 Fizz 79 Buzz Fizz
;; 82 83 Fizz Buzz 86 Fizz 88 89 FizzBuzz 91 92 Fizz 94 Buzz Fizz 97
;; 98 Fizz Buzz
