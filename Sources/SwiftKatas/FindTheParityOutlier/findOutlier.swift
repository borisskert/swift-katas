/**
 https://www.codewars.com/kata/5526fc09a1bbd946250002dc/train/swift
 */
func findOutlier(_ array: [Int]) -> Int {
    array.group { i in
                i.isEven()
            }
            .first {
                $0.count == 1
            }!
            .first!
}

private extension Array {
    func group(by isIncluded: (Self.Element) -> Bool) -> [[Element]] {
        Dictionary(grouping: self) {
            isIncluded($0)
        }
                .map {
                    $1
                }
    }
}

private extension Int {
    func isEven() -> Bool {
        self % 2 == 0
    }
}
