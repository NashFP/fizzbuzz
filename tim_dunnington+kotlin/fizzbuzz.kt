fun main(args : Array<String>) {
    for(i in 1..100) {
        when {
            i%15 == 0 -> System.out.println("FizzBuzz")
            i%5 == 0 -> System.out.println("Buzz")
            i%3 == 0 -> System.out.println("Fizz")
            else -> System.out.println(i)
        }
    }
}