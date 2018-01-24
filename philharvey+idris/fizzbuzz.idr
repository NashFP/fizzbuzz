module Main

isFizz : Nat -> Bool
isFizz n = modNat n 3 == 0

isBuzz : Nat -> Bool
isBuzz n = modNat n 5 == 0

isFizzBuzz : Nat -> Bool
isFizzBuzz n = modNat n 15 == 0

fizzbuzz : String -> Nat -> String
fizzbuzz s n = if isFizzBuzz n then s ++ "Fizz Buzz, " else (if isFizz n then s ++ "Fizz, " else (if isBuzz n then s ++ "Buzz, " else s ++ show n ++ ", "))

main : IO ()
main = putStrLn $ foldl fizzbuzz "" [1..100]
