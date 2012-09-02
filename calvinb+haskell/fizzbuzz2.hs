-- Trying to do this more the Haskell way, making use of the type system and functors.

import Data.Functor

-- A type alias for an element of the list, either an Int or a Term
type Element = Either Int Term

-- A type to represent the substituted values.
data Term = Fizz | Buzz | FizzBuzz
    deriving Show

fizzBuzz :: Int -> [Element]
-- Use list's functor capability to apply getTerm to list.
fizzBuzz n = getTerm <$> [1..n]
  where
    getTerm :: Int -> Element
    -- Use function composition to create function like (\x -> x `mod` m == 0)
    -- and use list's functor capability to apply function to list [3, 5].
    getTerm m = case (==0) . (mod m) <$> [3, 5] of
        [True, True]    -> Right FizzBuzz
        [True, _]       -> Right Fizz
        [_, True]       -> Right Buzz
        _               -> Left m

main = print $ fizzBuzz 100
