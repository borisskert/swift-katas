extension String {
    /**
     https://www.codewars.com/kata/5390bac347d09b7da40006f6/train/swift
     */
    func toJadenCase() -> String {
        split(separator: " ")
                .map {
                    $0.capitalized
                }
                .joined(separator: " ")
    }
}

// #againwhatlearned
// String's capitalized property capitalize each word; you don't have to split into words
