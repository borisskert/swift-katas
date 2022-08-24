/**
 https://www.codewars.com/kata/54b42f9314d9229fd6000d9c/train/swift
 */
func duplicateEncode(_ word: String) -> String {
    let encodedCharacters = word
            .lowercased()
            .zipWithCount()
            .flatMap {
                $1 == 1 ? "(" : ")"
            }

    return String(encodedCharacters)
}

private extension Collection where Element: Hashable {
    func zipWithCount() -> [(Element, Int)] {
        let groups = Dictionary(grouping: self, by: { $0 })

        return self.map {
            ($0, groups[$0]!.count)
        }
    }
}
