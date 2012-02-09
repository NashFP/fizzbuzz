(defn fizzbuzz [n]
  (let [divisible-by? (fn [div num] (= 0 (mod num div)))]
    (condp divisible-by? %
      15 "FizzBuzz"
      3 "Fizz"
      5 "Buzz"
      %)))

(defn fizz-n-and-a-buzz-n
  "Read procedure name using your Cosby voice."
  [n]
  (apply println (map fizzbuzz (range 1 (inc n)))))

;; It works. Trust me. It works!!!
