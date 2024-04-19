/**
 https://www.codewars.com/kata/561e9c843a2ef5a40c0000a4/train/swift
 */
func gap(_ g: Int, _ m: Int, _ n: Int) -> (Int, Int)? {
    return (m ... n)
        .filter { $0.isPrime() }
        .zipWithNext()
        .map { ($0, $1) }
        .first { $0.1 - $0.0 == g }
}

public extension Int {
    func isPrime() -> Bool {
        if self <= 1 { return false }
        if self <= 3 { return true }
        if self % 2 == 0 || self % 3 == 0 { return false }

        var i = 5
        while i * i <= self {
            if self % i == 0 || self % (i + 2) == 0 {
                return false
            }
            i += 6
        }

        return true
    }
}

extension Sequence {
    func zipWithNext() -> Zip2Sequence<Self, DropFirstSequence<Self>> {
        return zip(self, dropFirst())
    }
}
