fizz_buzz : Nat -> List String
fizz_buzz num = 
  map fb [1..num]
where 
  fb : Nat -> String
  fb n = if mod n 15 == 0 then
            "FizzBuzz"
          else if mod n 3 == 0 then
            "Fizz"
          else if mod n 5 == 0 then
            "Buzz"
          else
            show n

main : IO ()
main = repl "\n> " (\num => unwords (fizz_buzz (cast num)))