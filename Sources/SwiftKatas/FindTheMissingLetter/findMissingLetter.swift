/**
 https://www.codewars.com/kata/5839edaa6754d6fec10000a2/train/swift
 */
func findMissingLetter(_ chArr: [Character]) -> Character {
    chArr.zipWithNext()
            .filter {
                $0.0.increment() != $0.1
            }
            .map {
                $0.0.increment()
            }
            .first!
}

private extension Collection where Element: Equatable {
    func zipWithNext() -> Zip2Sequence<Self, Self.SubSequence> {
        zip(self, dropFirst())
    }
}

private extension Character {
    func increment() -> Character {
        Character(UnicodeScalar(asciiValue! + 1))
    }
}
