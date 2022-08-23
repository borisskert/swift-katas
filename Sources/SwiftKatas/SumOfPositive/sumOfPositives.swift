/**
 https://www.codewars.com/kata/5715eaedb436cf5606000381/train/swift
 */
func sumOfPositives(_ numbers: [Int]) -> Int {
    numbers.filter {
                $0 > 0
            }
            .reduce(0) {
                $0 + $1
            }
}

// #againwhatlearned

// Use `+` operator:
// ```
//     numbers.filter {
//                $0 > 0
//            }
//            .reduce(0, +)
// ```
