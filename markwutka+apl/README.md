# FizzBuzz in APL

This is a one-liner FizzBuzz in APL:

	fizzbuzz←{(⍵ 'Fizz' 'Buzz' 'FizzBuzz') [2⊥0=5 3|⍵]}¨1+⍳100

In order for it to work properly, you do have to first set the Index Offset
to 0 instead of 1 using this command:

	⎕IO←0

You can look it as two halves - the first half is an anonymous function that is surrounded by {}s. This anonymous function syntax may not be available in all APL implementations, but it is available in GNU APL and Dyalog APL. The other half is a list of numbers from 1 to 100, which is the 1+⍳100. The ⍳100 returns an array of 100 numbers. Since the Index Offset is set to 0, it will return 0..99, so the 1+ in front of it adds 1 to every number. The ¨ operator then applies the anonymous function on the left to every member of the array on the right (i.e. a map function)

Within the anonymous function, the ⍵ represents the argument to the function (this is a monadic function since it takes one argument, if it was dyadic ⍺ would represent the left argument and ⍵ the right).

	0=5 3|⍵
5 3|⍵ computes the remainder of ⍵ divided by each of the items in the array [5 3], so 5 3 | 9 would be [4 0]. By putting 0= in front of that, it says take that array of remainders and compare each with 0, returning 1 if it =0 or 0 if not. So if 5 3|⍵ resulted in [4 0], the =0 [4 0] would result in [0 1].

	2⊥
Next, the 2⊥ applied to the result converts the array of 1s and 0s to a binary number, and with only 2 bits, that means 4 values. If ⍵ is neither divisible by 3 or 5, the array will be [0 0], if it is divisible by 3, the result is [0 1], if divisible by 5 it is [1 0] and if divisible by both 3 and 5, it is [1 1]. We use the resulting number, to index into the array [⍵ 'Fizz' 'Buzz' 'FizzBuzz'] to get the result for that number.

If you have installed GNU APL, you can just do:

	apl -f fizzbuzz.apl

And then type "fizzbuzz" to actually see the result. You can
also paste it into the interpreter at:
https://tryapl.org/
or
http://juergen-sauermann.de/try-GNU-APL

You should do the ⎕IO←0 command first to make sure the index offset is set to 0.