/**
 https://www.codewars.com/kata/5583090cbe83f4fd8c000051/train/swift
 */
func digitize(_ num: Int) -> [Int] {
    num.digits().reversed()
}

private extension Int {
    func digits() -> [Int] {
        if (self < 10) {
            return [self]
        }

        let digit = (Int)(self % 10)
        var digits = (self / 10).digits()
        digits.append(digit)

        return digits
    }
}
