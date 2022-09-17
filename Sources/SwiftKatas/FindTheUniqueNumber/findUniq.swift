/**
 https://www.codewars.com/kata/585d7d5adb20cf33cb000235/train/swift
 */
func findUniq(_ arr: [Int]) -> Int {
    let sorted = arr.sorted()

    if sorted[0] == sorted[1] {
        return sorted.last!
    }

    return sorted.first!
}
