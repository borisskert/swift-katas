/**
 https://www.codewars.com/kata/52fba66badcd10859f00097e/train/swift
 */
func disemvowel(_ s: String) -> String {
    s.filter {
        $0.isNotVowel()
    }
}

private extension Character {
    func isVowel() -> Bool {
        "aeiouAEIOU".contains(self)
    }

    func isNotVowel() -> Bool {
        !isVowel()
    }
}

// #againwhatlearned

// Use String.replacingOccurrences method:
// `s.replacingOccurrences(of: "[aeiou]", with: "", options: [.regularExpression, .caseInsensitive])`
