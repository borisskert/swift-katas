/**
 https://www.codewars.com/kata/541c8630095125aba6000c00/train/swift
 */
func digitalRoot(of number: Int) -> Int {
    let digitSum = number.digitSum()

    if (digitSum > 10) {
        return digitalRoot(of: digitSum)
    }

    return digitSum
}

private extension Int {
    func digitSum() -> Int {
        digits().reduce(0) {
            $0 + $1
        }
    }

    func digits() -> [Int] {
        if (self == 0) {
            return []
        }

        var digits = (self / 10).digits()
        digits.append((Int)(self % 10))

        return digits
    }
}
