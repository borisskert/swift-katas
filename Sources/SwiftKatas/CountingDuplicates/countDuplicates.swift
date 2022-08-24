/**
 https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1/train/swift
 */
func countDuplicates(_ s: String) -> Int {
    s.lowercased()
            .sorted()
            .group()
            .filter {
                $0.count > 1
            }
            .count
}

private extension Collection where Element: Equatable {
    /**
     Creates groups as Array of Arrays so that, each sub-Array in the result contains only equal elements.
     Example: "Mississippi".group() -> ["M","i","ss","i","ss","i","pp","i"]
     */
    func group() -> [[Element]] {
        if isEmpty {
            return []
        }

        let tail = dropFirst()
        let head = first!

        if tail.isEmpty {
            return [[head]]
        }

        let furtherGroups = tail.group()
        let nextGroup = furtherGroups.first!

        if head == nextGroup.first {
            return [[head] + nextGroup] + furtherGroups.dropFirst()
        }

        return [[head]] + furtherGroups
    }
}
