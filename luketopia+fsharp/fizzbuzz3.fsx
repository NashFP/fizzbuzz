// Solution using a parameterized partial active pattern

// Define DivisibleBy pattern that accepts a divisor parameter
let (|DivisibleBy|_|) divisor input =
    match input % divisor with
    | 0 -> Some()
    | _ -> None

// Define mapping function
let fizzbuzz x =
    match x with
    | DivisibleBy 3 & DivisibleBy 5 -> "FizzBuzz"
    | DivisibleBy 3 -> "Fizz"
    | DivisibleBy 5 -> "Buzz"
    | _ -> string x

// Print the first n values
let print n =
    {1..n}
    |> Seq.map fizzbuzz
    |> Seq.iter (printfn "%s")
