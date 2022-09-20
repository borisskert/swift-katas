/**
 https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/swift
 */
func findNb(_ number: Int) -> Int {
    func search(_ n: Int, _ m: Int) -> Int? {
        if (m == 0) {
            return 0
        }

        if (m < 0) {
            return nil
        }

        if let next = search(n + 1, m - n.cube()) {
            return 1 + next
        }

        return nil
    }

    return search(1, number) ?? -1
}

private extension Int {
    func cube() -> Int {
        self * self * self
    }
}
