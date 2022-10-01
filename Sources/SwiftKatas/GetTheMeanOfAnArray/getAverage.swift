/**
 - See: https://www.codewars.com/kata/563e320cee5dddcf77000158/train/swift
 */
func getAverage(_ marks: [Int]) -> Int {
    marks.reduce(0, +) / marks.count
}
