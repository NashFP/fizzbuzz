;; You can execute these forms in your friendly clojure repl

(require '[clojure.string :as str])

(def fizzbuzz
  (let [divs (fn [n] (filter #(zero? (mod n %)) [3 5]))
        divs->words {[3 5] "FizzBuzz" [3] "Fizz" [5] "Buzz"}]
    (map #(divs->words (divs %) %)
         (iterate inc 1))))

(assert (= "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz"
           (str/join "," (take 20 fizzbuzz))))

;; fizzbuzz is an infinite, lazy sequence:
(take 20 (drop 1000001 fizzbuzz))
;;user=> ("Fizz" 1000003 1000004 "FizzBuzz" 1000006 1000007 "Fizz" 1000009 "Buzz" "Fizz" 1000012 1000013 "Fizz" "Buzz" 1000016 "Fizz" 1000018 1000019 "FizzBuzz" 1000021)
