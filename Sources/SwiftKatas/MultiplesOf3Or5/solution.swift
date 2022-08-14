/**
 https://www.codewars.com/kata/514b92a657cdc65150000006/train/swift
 */
func solution(_ num: Int) -> Int {
    (0..<num).filter {
                $0 % 3 == 0 || $0 % 5 == 0
            }
            .reduce(0) {
                $0 + $1
            }
}
