/**
 - See: https://www.codewars.com/kata/58f5c63f1e26ecda7e000029/train/swift
 */
func wave(_ y: String) -> [String] {
    y.isEmpty ? [] : Array(0...(y.count - 1)).map {
                Int($0)
            }
            .filter {
                y.char(at: $0).isLetter
            }
            .map {
                y.uppercased(at: $0)
            }
}

private extension String {
    func uppercased(at index: Int) -> String {
        let letter = char(at: index).uppercased()
        let pre = dropLast(count - index)
        let post = dropFirst(index + 1)

        return String(pre + letter + post)
    }

    func char(at characterIndex: Int) -> Character {
        self[index(startIndex, offsetBy: characterIndex)]
    }
}

// #againwhatlearned

// Use String's `replacingCharacters` method:
//
// ```
//   func uppercased(at characterIndex: Int) -> String {
//     let letter = char(at: characterIndex).uppercased()
//     let index2 = self.index(startIndex, offsetBy: characterIndex)
//
//     return self.replacingCharacters(in: index2...index2, with: letter)
//    }
// ```
