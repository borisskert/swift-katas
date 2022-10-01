/**
 - See: https://www.codewars.com/kata/550498447451fbbd7600041c/train/swift
 */
func comp(_ a: [Int], _ b: [Int]) -> Bool {
    a.map {
                $0 * $0
            }
            .sorted() == b.sorted()
}
