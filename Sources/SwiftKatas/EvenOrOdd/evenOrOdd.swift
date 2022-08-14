/**
 https://www.codewars.com/kata/53da3dbb4a5168369a0000fe/train/swift
 */
func evenOrOdd(_ number: Int) -> String {
    number % 2 == 0 ? "Even" : "Odd"
}

// #againwhatlearned

// use Int.isMultiple method:
// ```
// number.isMultiple(of: 2) ? "Even" : "Odd"
// ```
//
// or write an extension:
// ```
// extension Int {
//    func isEven() -> Bool {
//        self % 2 == 0
//    }
//}
// ```
