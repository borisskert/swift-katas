/**
 https://www.codewars.com/kata/573992c724fc289553000e95/train/swift
 */
func smallest(_ n: Int) -> (Int, Int, Int) {
    return Result.potentialResults(for: n)
        .min()!
        .toTuple()
}

private struct Result: Comparable {
    let value: Int
    let i: Int
    let j: Int

    init(_ value: Int, _ i: Int, _ j: Int) {
        self.value = value
        self.i = i
        self.j = j
    }

    func toTuple() -> (Int, Int, Int) {
        return (value, i, j)
    }

    static func < (lhs: Result, rhs: Result) -> Bool {
        return lhs.value < rhs.value
    }

    static func potentialResults(for n: Int) -> [Result] {
        return Int
            .cartesianProduct(n.length())
            .map { i, j in
                let value = n.moveDigit(from: i, to: j)
                return Result(value, i, j)
            }
    }
}

private extension Int {
    func digits() -> [Int] {
        return String(self).compactMap { Int(String($0)) }
    }

    func length() -> Int {
        return String(self).count
    }

    static func from(digits: [Int]) -> Int {
        return Int(digits.map { String($0) }.joined())!
    }

    func moveDigit(from: Int, to: Int) -> Int {
        let digits = self.digits()
        let digit = digits[from]
        var newDigits = digits

        newDigits.remove(at: from)
        newDigits.insert(digit, at: to)

        return Int.from(digits: newDigits)
    }

    static func cartesianProduct(_ a: Int, _ b: Int? = nil) -> [(Int, Int)] {
        return (0 ..< a)
            .flatMap { i in
                (0 ..< (b ?? a))
                    .map { j in (i, j) }
            }
    }
}
