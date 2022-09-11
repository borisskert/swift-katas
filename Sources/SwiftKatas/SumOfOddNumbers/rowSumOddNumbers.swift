/**
 https://www.codewars.com/kata/55fd2d567d94ac3bc9000064/train/swift
 */
func rowSumOddNumbers(_ row: Int) -> Int {
    row.pow(3)
}

private extension Int {
    func pow(_ exponent: Int) -> Int {
        if exponent <= 0 {
            return 1
        }

        if exponent.isEven() {
            return (self * self).pow(exponent / 2)
        }

        return self * pow(exponent - 1)
    }

    func isEven() -> Bool {
        self % 2 == 0
    }
}
