def fizzbuzz(seq)
  seq.map {|n|
    ((n % 3).zero? && (n % 5).zero? && 'FizzBuzz') ||
    ((n % 3).zero? && 'Fizz') ||
    ((n % 5).zero? && 'Buzz') ||
    n}
end
