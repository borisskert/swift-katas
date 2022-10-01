/**
 - See: https://www.codewars.com/kata/5842df8ccbd22792a4000245/train/swift
 */
func expandedForm(_ num: Int) -> String {
    num.digits()
            .reversed()
            .zipWithIndex()
            .map {
                $0.0 * 10.pow($0.1)
            }
            .filter {
                $0 > 0
            }
            .reversed()
            .map {
                String($0)
            }
            .joined(separator: " + ")
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
