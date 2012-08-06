
;; Based on haskell solution from
;; http://pragprog.com/magazines/2012-08/thinking-functionally-with-haskell

(def fizzbuzz
  (map-indexed #(if (empty? %2) (inc %1) %2)
               (map str
                    (cycle ["" "" "Fizz"])
                    (cycle ["" "" "" "" "Buzz"]))))

(assert (= "1,2,Fizz,4,Buzz,Fizz,7,8,Fizz,Buzz,11,Fizz,13,14,FizzBuzz,16,17,Fizz,19,Buzz"
           (clojure.string/join "," (take 20 fizzbuzz))))
