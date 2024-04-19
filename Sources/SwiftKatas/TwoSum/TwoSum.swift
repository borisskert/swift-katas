/**
 - See: https://www.codewars.com/kata/52c31f8e6605bcc646000082/train/swift
 */
class Solution {
    static func twosum(numbers: [Double], target: Double) -> [Int] {
        numbers.zipWithIndex()
                .combinations()
                .first(where: { $0.0.0 + $0.1.0 == target })
                .flatMap {
                    [$0.1, $1.1]
                }!

    }
}

private extension Collection where Element: Hashable {
    func zipWithIndex(offset: Int = 0) -> [(Element, Int)] {
        if isEmpty {
            return []
        }

        let furtherZipped = dropFirst().zipWithIndex(offset: offset + 1)

        return [(first!, offset)] + furtherZipped
    }
}

private extension Array {
    func combinations() -> CombinationsSequence<Element> {
        CombinationsSequence(self)
    }
}

private struct CombinationsSequence<T>: Sequence {
    typealias Element = (T, T)
    typealias Iterator = CombinationsIterator<T>

    let items: [T]

    init(_ items: [T]) {
        self.items = items
    }

    func makeIterator() -> CombinationsIterator<T> {
        CombinationsIterator(items)
    }
}

private struct CombinationsIterator<T>: IteratorProtocol {
    typealias Element = (T, T)

    var i: Int = 0
    var j: Int = 1

    let items: [T]

    init(_ items: [T]) {
        self.items = items
    }

    mutating func next() -> (T, T)? {
        if items.count <= j {
            i += 1
            j = i + 1
        }

        if items.count <= i || items.count <= j {
            return nil
        }

        let tuple = (items[i], items[j])

        j += 1

        return tuple
    }
}
