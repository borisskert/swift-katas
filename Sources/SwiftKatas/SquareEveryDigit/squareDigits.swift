/**
 https://www.codewars.com/kata/546e2562b03326a88e000020/train/swift
 */
func squareDigits(_ num: Int) -> Int {
    num.digits().flatMap {
                ($0 * $0).digits()
            }
            .reduce(0) {
                10 * $0 + $1
            }
}

private extension Int {
    func digits() -> [Int] {
        if (self == 0) {
            return []
        }

        var digits = (self / 10).digits()
        digits.append((Int)(self % 10))

        return digits
    }
}
