fun main() {
  fun fizzbuzz(n) {
    match (n % 3, n % 5) {
      (0, 0) -> "FizzBuzz"
      (0, _) -> "Fizz"
      (_, 0) -> "Buzz"
      (_, _) -> n.show
    }
  }
  list(1,20).map(fizzbuzz).foreach(println)
}
