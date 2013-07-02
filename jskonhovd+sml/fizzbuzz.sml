fun fizzbuzz() = 
    let fun helper(i : int, acc : string list) =
	    if i < 100
	    then case (i mod 3 = 0, i mod 5 = 0) of 
		     (true, false) => helper(i+1, acc@["Fizz"])
		   | (false, true) => helper(i+1, acc@["Buzz"])
		   | (true, true) => helper(i+1, acc@["FizzBuzz"])
		   | (false, false)  => helper(i+1, acc@[Int.toString i])
	    else acc
    in
	helper(1,[])
    end

val x = fizzbuzz();