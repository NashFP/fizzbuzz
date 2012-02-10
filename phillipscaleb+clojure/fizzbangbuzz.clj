;; This version does not hard-code or repeat the 3 and the 5, so you
;; can use the same function (make-seq) to generate other combinations.
;; In the case of fizzbangbuzz, I added Bang for numbers divisible by
;; 4, so the value at 60 is FizzBangBuzz
(require '[clojure.string :as str])

(defn value-at [word-map n]
  (let [divs (filter #(zero? (mod n %)) (keys word-map))
        divs->words #(apply str (map word-map divs))]
    (if (empty? divs)
      n
      (divs->words))))

(defn make-seq [word-map]
  (map #(value-at word-map %)
       (iterate inc 1)))

(def fizzbuzz (make-seq {3 "Fizz" 5 "Buzz"}))

(assert (= "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz"
           (str/join "," (take 20 fizzbuzz))))

(def fizzbangbuzz (make-seq {3 "Fizz" 4 "Bang" 5 "Buzz"}))

(assert (= "1,2,Fizz,Bang,Buzz,Fizz,7,Bang,Fizz,Buzz,11,FizzBang,13,14,FizzBuzz,Bang,17,Fizz,19,BangBuzz"
           (str/join "," (take 20 fizzbangbuzz))))