/**
 - See: https://www.codewars.com/kata/550554fd08b86f84fe000a58/train/swift
 */
func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    a1.unique()
            .sorted()
            .filter {
                let searchText = $0
                return a2.contains(where: { $0.contains(searchText) })
            }
}

private extension Array where Element: Hashable {
    func unique() -> [Element] {
        func createUnique(_ found: Set<Element>, _ from: [Element]) -> [Element] {
            if from.isEmpty {
                return []
            }

            let element = from.first!

            if found.contains(element) {
                return createUnique(found, Array(from.dropFirst()))
            }

            var found2 = Set(found)
            found2.insert(element)

            return [element] + createUnique(found2, Array(from.dropFirst()))
        }

        return createUnique(Set(), self)
    }
}
