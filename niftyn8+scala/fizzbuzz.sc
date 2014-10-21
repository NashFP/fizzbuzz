def fizzbuzz(max: Int): IndexedSeq[Any] = {
  1.to(max).map { n =>
    ((n % 3), (n % 5)) match {
      case (0, 0) => "fizzbuzz"
      case (0, _) => "fizz"
      case (_, 0) => "buzz"
      case (_, _) => n
    }
  }
}

fizzbuzz(100).foreach(println)
