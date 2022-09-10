/**
 https://www.codewars.com/kata/556deca17c58da83c00002db/train/swift
 */
func tribonacci(_ sequence: [Int], _ n: Int) -> [Int] {
    if sequence.count > n {
        return Array(sequence.prefix(n))
    }

    if sequence.count == n {
        return sequence
    }

    let next = sequence.suffix(3).sum()
    return tribonacci(sequence + [next], n)
}

private extension Collection where Element == Int {
    func sum() -> Int {
        self.reduce(0, +)
    }
}
