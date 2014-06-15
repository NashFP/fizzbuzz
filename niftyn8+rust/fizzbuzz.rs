fn divisible_by(num: int, divider: int) -> bool {
    num % divider == 0
}

fn main() {
    for num in range(1, 101) {
        println!("{}",
                 if divisible_by(num, 15) { "FizzBuzz".to_str() }
                 else if divisible_by(num, 3) { "Fizz".to_str() }
                 else if divisible_by(num, 5) { "Buzz".to_str() }
                 else { num.to_str() }
                );
    }
}
