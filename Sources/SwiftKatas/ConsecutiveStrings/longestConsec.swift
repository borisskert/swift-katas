/**
 - See: https://www.codewars.com/kata/56a5d994ac971f1ac500003e/train/swift
 */
func longestConsec(_ strarr: [String], _ k: Int) -> String {
    if k <= 0 {
        return ""
    }

    return strarr.divvy(k, 1).map {
                $0.concat()
            }
            .sorted {
                $1.count < $0.count
            }
            .first ?? ""
}

public extension Array {
    /**
     Divides up an input list into a set of sublists, according to n and m input specifications you provide. Each
      sublist will have n items, and the start of each sublist will be offset by m items from the previous one.
     - Parameters:
       - n: sublist size
       - m: sublist offset
     - Returns: a two-dim array containing the sublists
     */
    func divvy(_ n: Int, _ m: Int) -> [[Element]] {
        if count < n {
            return []
        }

        if count == n {
            return [self]
        }

        let drop = [m, count].min()!

        return [Array(self[0...(n - 1)])] + Array(dropFirst(drop)).divvy(n, m)
    }
}

private extension Array where Element == String {
    func concat() -> String {
        self.reduce("") {
            $0 + $1
        }
    }
}
