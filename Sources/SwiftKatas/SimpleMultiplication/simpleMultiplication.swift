/**
 https://www.codewars.com/kata/583710ccaa6717322c000105/train/swift
 */
func simpleMultiplication(_ num: Int) -> Int {
    if num.isEven() {
        return num * 8
    }

    return num * 9
}

private extension Int {
    func isEven() -> Bool {
        self % 2 == 0
    }
}

// #againwhatlearned
// use Int.isMultiple method:
// ```
//     if num.isMultiple(of: 2) {
//        return num * 8
//    }
//
//    return num * 9
// ```
