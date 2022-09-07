/**
 https://www.codewars.com/kata/558fc85d8fd1938afb000014/train/swift
 */
func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    array
            .sorted()
            .prefix(2)
            .sum()
}

private extension Collection where Element == Int {
    func sum() -> Int {
        reduce(0) {
            $0 + $1
        }
    }
}
