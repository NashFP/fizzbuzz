let fizz x =
    if x%3 = 0 then true else false

let buzz x =
    if x%5 = 0 then true else false

let fizbuzz x =
    match (fizz x), (buzz x), x with
    | true, true, _ -> "FizzBuzz"
    | true, _ , _ -> "Fizz"
    | _, true, _ -> "Buzz"
    | _, _, x -> string x

{1..20} |> Seq.map fizbuzz |> Seq.toArray


