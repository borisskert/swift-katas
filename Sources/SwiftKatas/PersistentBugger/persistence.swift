/**
 https://www.codewars.com/kata/55bf01e5a717a0d57e0000ec/train/swift
 */
func persistence(for num: Int) -> Int {
    if (num < 10) {
        return 0
    }

    let digits = num.digits()

    return 1 + persistence(for: digits.product())
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

private extension Array where Element == Int {
    func product() -> Int {
        reduce(1) {
            $0 * $1
        }
    }
}
