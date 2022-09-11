/**
 https://www.codewars.com/kata/5545f109004975ea66000086/train/swift
 */
func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    [x, y].allSatisfy {
        n % $0 == 0
    }
}

// #againwhatlearned
// use Int's `isMultiple` method:
// ```
//     [x, y].allSatisfy {
//        n.isMultiple(of: $0)
//    }
// ```
