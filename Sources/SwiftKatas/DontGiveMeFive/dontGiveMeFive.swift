/**
 - See: https://www.codewars.com/kata/5813d19765d81c592200001a/train/swift
 */
func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    (start...end).map {
                $0.digits()
            }
            .filter {
                !$0.contains(5)
            }
            .count
}

private extension Int {
    func digits() -> [Int] {
        if self < 0 {
            return (-self).digits()
        }

        if self < 10 {
            return [self]
        }

        let digit = (Int)(self % 10)
        var digits = (self / 10).digits()
        digits.append(digit)

        return digits
    }
}
