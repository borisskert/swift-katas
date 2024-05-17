/**
 * https://www.codewars.com/kata/55e7280b40e1c4a06d0000aa/train/swift
 */
func chooseBestSum(_ t: Int, _ count: Int, _ list: [Int]) -> Int {
    list
        .searchCombination(count, t) {
            $0.sum()
        }
        .map {
            $0.1
        } ?? -1
}

private extension Array {
    func searchCombination<R>(_ count: Int, _ t: R, _ fn: ([Self.Element]) -> R) -> ([Self.Element], R)? where R: Comparable {
        return go(count)

        func go(_ count: Int, _ index: Int = 0, _ found: ([Self.Element], R)? = nil) -> ([Self.Element], R)? {
            let current = found?.0 ?? []
            let result = found?.1

            if count == 0 && (result != nil && result! <= t) {
                return found
            }

            if (result != nil && result! > t) || index >= self.count {
                return nil
            }

            let nextCurrent = current + [self[index]]

            let a = go(count - 1, index + 1, (nextCurrent, fn(nextCurrent)))
            let b = go(count, index + 1, found)

            if a == nil {
                return b
            } else if b == nil {
                return a
            }

            let (_, resultA) = a!
            let (_, resultB) = b!

            return resultA > resultB ? a : b
        }
    }
}

private extension [Int] {
    func sum() -> Int {
        return self.reduce(0, +)
    }
}
