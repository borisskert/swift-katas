/**
 - See: https://www.codewars.com/kata/57eaeb9578748ff92a000009/train/swift
 */
func sumMix(_ arr: [Any]) -> Int {
    arr.map {
                read($0)
            }
            .reduce(0, +)
}

private func read(_ any: Any) -> Int {
    any as? Int ?? Int(any as! String) ?? 0
}

// #againwhatlearned

// Use Int initializer in combination with String templating:
// ```
//     arr.map {
//                Int("\($0)") ?? 0
//            }
//            .reduce(0, +)
// ```
