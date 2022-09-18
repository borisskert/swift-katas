/**
 https://www.codewars.com/kata/57eae65a4321032ce000002d/train/swift
 */
func fakeBin(digits: String) -> String {
    digits.map {
                $0 < "5" ? "0" : "1"
            }
            .joined()
}
