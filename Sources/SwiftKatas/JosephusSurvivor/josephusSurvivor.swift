import Foundation

/**
  https://www.codewars.com/kata/555624b601231dc7a400017a/train/swift
 */
func josephusSurvivor(_ n: Int, _ k: Int) -> Int {
    [Int](1...n).reduce(1) {
        ($0 + k - 1) % $1 + 1
    }
}
