class FizzBuzz
  def self.call(n)
    (1..n).lazy.map { |num|
      (num % 15).zero? && "FizzBuzz" ||
      (num % 3).zero? && "Fizz" ||
      (num % 5).zero? && "Buzz" ||
      num
    }
  end
end

FizzBuzz.call(Integer(ARGV.first)).each { |i| puts i } rescue nil
