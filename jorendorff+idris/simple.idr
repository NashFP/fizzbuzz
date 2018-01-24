module Main

-- Present a natural number as a string.
present : Nat -> String
present k = case (modNat k 3, modNat k 5) of
  (Z, Z) => "FizzBuzz"
  (Z, _) => "Fizz"
  (_, Z) => "Buzz"
  (_, _) => cast k

-- Render all the output for the given list of numbers, as a single string.
recite : List Nat -> String
recite ns = unlines (map present ns)

main : IO ()
main = putStr (recite [1..100])
