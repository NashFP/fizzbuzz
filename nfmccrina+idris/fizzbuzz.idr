module Main

{-
 I don't know much Haskell, but I thought this function could be written using guards like
  doTheThing :: Int -> String
  doTheThing x
    | (mod x 15) == 0 = "FizzBuzz"
    | (mod x 3) == 0 = "Fizz"
    | (mod x 5) == 0 = "Buzz"
    | otherwise = show x

  so that's what I was going to use in Idris. But Idris apparently doesn't have the concept
  of pattern guards (more research needed here) so I went with a big if/else expression.
-}
doTheThing : Int -> String
doTheThing x = if (mod x 15) == 0 then "FizzBuzz" else
    if (mod x 3) == 0 then "Fizz" else
        if (mod x 5) == 0 then "Buzz" else cast x

mapList : List Int -> List String
mapList x = map doTheThing x

main : IO ()
main = putStrLn (foldl (\str, x => str ++ "\n" ++ x) "" (mapList [1..100]))