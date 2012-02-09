;; You can execute these forms in your friendly clojure repl

(require '[clojure.string :as str])

(def fizzbuzz
  (let [divs (fn [n] (filter #(zero? (mod n %)) [3 5]))
        divs->words {[3 5] "FizzBuzz" [3] "Fizz" [5] "Buzz"}]
    (map #(divs->words (divs %) %)
         (iterate inc 1))))

(assert (= "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz"
           (str/join "," (take 20 fizzbuzz))))
