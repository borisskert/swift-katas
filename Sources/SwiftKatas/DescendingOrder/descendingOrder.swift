/**
 https://www.codewars.com/kata/5467e4d82edf8bbf40000155/train/swift
 */
func descendingOrder(of number: Int) -> Int {
    number.digits()
            .sorted(by: >)
            .reduce(0) {
                $1 + 10 * $0
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
