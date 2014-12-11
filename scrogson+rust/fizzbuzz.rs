fn div_by(num: int, div: int) -> bool {
    num % div == 0
}

fn main() {
    for num in range(1, 101) {
        println!("{:s}",
           match (div_by(num, 3), div_by(num, 5)) {
               (true, true)   => "FizzBuzz".to_string(),
               (true, false)  => "Fizz".to_string(),
               (false, true)  => "Buzz".to_string(),
               (false, false) => num.to_string()
           }
        );
    }
}

#[test]
fn test_div_by() {
    assert!(!div_by(1, 3))
    assert!(div_by(3, 3))
    assert!(!div_by(1, 5))
    assert!(div_by(5, 5))
}

