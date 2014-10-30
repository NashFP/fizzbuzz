fizzbuzz :: Int => String
fizzbuzz x
  | (mod x 15) == 0 = "FizzBuzz"
  | (mod x 3) == 0 = "Fizz"
  | (mod x 5) == 0 = "Buzz"
  | otherwise = show x

main :: IO()
main = mapM_ putStrLn (map fizzbuzz [1..10000])
