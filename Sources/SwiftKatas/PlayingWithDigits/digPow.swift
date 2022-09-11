/**
 https://www.codewars.com/kata/5552101f47fc5178b1000050/train/swift
 */
func digPow(for number: Int, using power: Int) -> Int {
    let n = number
            .digits()
            .zipWithIndex(offset: power)
            .map {
                $0.pow($1)
            }
            .sum()

    if (n % number != 0) {
        return -1
    }

    return n / number
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

    func pow(_ exponent: Int) -> Int {
        if exponent <= 0 {
            return 1
        }

        if exponent.even() {
            return (self * self).pow(exponent / 2)
        }

        return self * pow(exponent - 1)
    }

    func even() -> Bool {
        self % 2 == 0
    }
}

private extension Collection where Element: Hashable {
    func zipWithIndex(offset: Int = 0) -> [(Element, Int)] {
        if isEmpty {
            return []
        }

        let furtherZipped = dropFirst().zipWithIndex(offset: offset + 1)

        return [(first!, offset)] + furtherZipped
    }
}

private extension Collection where Element == Int {
    func sum() -> Int {
        reduce(0) {
            $0 + $1
        }
    }
}
