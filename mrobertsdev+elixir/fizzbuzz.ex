defmodule FizzBuzz do
    def upto(n) when n>0, do: 1..n |> Enum.map(&fizzbuzz/1)
    
    defp fizzbuzz(n) when rem(n, 3) == 0 and rem(n, 5) == 0, do: "FizzBuzz"
    defp fizzbuzz(n) when rem(n, 3) == 0,                    do: "Fizz"
    defp fizzbuzz(n) when rem(n, 5) == 0,                    do: "Buzz"
    defp fizzbuzz(n),                                        do: n
end
