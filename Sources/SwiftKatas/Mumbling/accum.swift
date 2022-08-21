/**
 https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/swift
 */
func accum(_ s: String) -> String {
    zip(s.lowercased(), 0...)
            .map { c, i in
                c.uppercased() + c.repeated(i)
            }
            .joined(separator: "-")
}

private extension Character {
    func repeated(_ count: Int) -> String {
        String(repeatElement(self, count: count))
    }
}

// #againwhatlearned

// use String's `capitalized` field and Sequence' `enumerated` method
// ```
//      s.enumerated()
//            .map { i, c in
//                c.repeated(i + 1).capitalized
//            }
//            .joined(separator: "-")
// ```
