// Solution using partial active patterns

// Define patterns for Fizz & Buzz
let (|Fizz|_|) x = 
    match x % 3 with
    | 0 -> Some()
    | _ -> None

let (|Buzz|_|) x =
    match x % 5 with
    | 0 -> Some()
    | _ -> None 

// Define mapping function
let fizzbuzz x =
    match x with
    | Fizz & Buzz -> "FizzBuzz"
    | Fizz -> "Fizz"
    | Buzz -> "Buzz"
    | _ -> string x

// Print the first n values
let print n =
    {1..n}
    |> Seq.map fizzbuzz
    |> Seq.iter (printfn "%s")
