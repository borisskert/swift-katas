/**
 -See: https://www.codewars.com/kata/51b62bf6a9c58071c600001b/train/swift
 */
func solution(_ number: Int) -> String {
    number.toRoman()
}

private extension Int {
    func toRoman() -> String {
        if let found = romanBases.first(where: { $0.0 <= self }) {
            let remaining = self - found.0
            return found.1 + remaining.toRoman()
        }

        return ""
    }
}

private let romanBases = [
    (1000, "M"),
    (900, "CM"),
    (500, "D"),
    (400, "CD"),
    (100, "C"),
    (90, "XC"),
    (50, "L"),
    (40, "XL"),
    (10, "X"),
    (9, "IX"),
    (5, "V"),
    (4, "IV"),
    (1, "I")
]
