/**
 https://www.codewars.com/kata/515e271a311df0350d00000f/train/swift
 */
func squareSum(_ vals: [Int]) -> Int {
    vals.map {
                $0 * $0
            }
            .reduce(0, +)
}
