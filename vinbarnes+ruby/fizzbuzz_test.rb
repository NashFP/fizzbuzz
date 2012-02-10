require 'test/unit'
require 'fizzbuzz'

class TestFizzBuzz < Test::Unit::TestCase
  def test_fizzbuzziness
    assert_equal [1], fizzbuzz(1..1)
    assert_equal [1, 2], fizzbuzz(1..2)
    assert_equal [1, 2, 'Fizz'], fizzbuzz(1..3)
    assert_equal [1, 2, 'Fizz', 4], fizzbuzz(1..4)
    assert_equal [1, 2, 'Fizz', 4, 'Buzz'], fizzbuzz(1..5)
    assert_equal [1, 2, 'Fizz', 4, 'Buzz', 'Fizz'], fizzbuzz(1..6)
    assert_equal [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'], fizzbuzz(1..15)
    assert_equal [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz', 16], fizzbuzz(1..16)
  end
end
