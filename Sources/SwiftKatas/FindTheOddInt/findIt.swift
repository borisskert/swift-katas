/**
 https://www.codewars.com/kata/54da5a58ea159efa38000836/train/swift
 */
func findIt(_ seq: [Int]) -> Int {
    seq.map {
                ($0, seq.occurrences($0))
            }
            .filter { _, occurrence in
                occurrence.isOdd()
            }
            .map { value, _ in
                value
            }
            .first!
}

private extension Array where Element: Equatable {
    func occurrences(_ value: Element) -> Int {
        filter {
            $0 == value
        }
                .count
    }
}

private extension BinaryInteger {
    func isOdd() -> Bool {
        self % 2 == 1
    }
}
