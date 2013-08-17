// Simple solution using pattern matching

// Define mapping function
let fizzbuzz x =
    match x % 3, x % 5 with
    | 0, 0 -> "FizzBuzz"
    | 0, _ -> "Fizz"
    | _, 0 -> "Buzz"
    | _ -> string x

// Print the first n values
let print n =
    {1..n}
    |> Seq.map fizzbuzz
    |> Seq.iter (printfn "%s")
