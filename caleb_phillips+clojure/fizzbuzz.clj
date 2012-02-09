;; You can execute these forms in your friendly clojure repl

(require '[clojure.string :as str])

(defn fizzbuzz [n]
  (let [divisors (fn [n] (filter #(zero? (mod n %)) [3 5]))
        mappings {[3 5] "FizzBuzz" [3] "Fizz" [5] "Buzz"}]
    (str/join ","
              (for [i (range 1 (inc n))]
                (get mappings (divisors i) i)))))

(assert (= "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz"
           (fizzbuzz 20)))
