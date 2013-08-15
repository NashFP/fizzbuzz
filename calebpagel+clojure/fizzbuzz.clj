;; Learning Clojure ....

;; 

;; Comments welcome


(def buzz (fn [x] (= (mod x 5) 0)))


(def fizz (fn [x] (= (mod x 3) 0)))


(def fizzbuzzer (fn [x] (if (and (fizz x) (buzz x)) "FIZZBUZZ"
                          				(if (fizz x) "FIZZ" 
								(if (buzz x) "BUZZ" 
                              						x)))))

(dotimes [n 100] (println n "is" (fizzbuzzer n)))
