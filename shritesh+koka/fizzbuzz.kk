fun main() {
  with n = for(1,20)
  match (n % 3, n % 5) {
    (0, 0) -> println("FizzBuzz")
    (0, _) -> println("Fizz")
    (_, 0) -> println("Buzz")
    (_, _) -> println(n)
  }
}
