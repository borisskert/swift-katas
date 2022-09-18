/**
 https://www.codewars.com/kata/55f9bca8ecaa9eac7100004a/train/swift
 */
func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    1000 * (s + 60 * (m + 60 * h))
}
