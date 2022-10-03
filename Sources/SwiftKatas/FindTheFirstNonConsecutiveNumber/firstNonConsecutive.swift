/**
 https://www.codewars.com/kata/58f8a3a27a5c28d92e000144/train/swift
 */
func firstNonConsecutive(_ arr: [Int]) -> Int? {
    if arr.count <= 1 {
        return nil
    }

    let first = arr.first!
    let tail = arr.dropFirst()
    let second = tail.first!

    if first + 1 != second {
        return second
    }

    return firstNonConsecutive(Array(tail))
}
