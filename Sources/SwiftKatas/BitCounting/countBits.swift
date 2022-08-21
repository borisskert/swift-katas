/**
 https://www.codewars.com/kata/526571aae218b8ee490006f4/train/swift
 */
func countBits(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }

    let (quotient, remainder) = n.quotientAndRemainder(dividingBy: 2)
    return remainder + countBits(quotient)
}

// #againwhatlearned
// Use Int's `nonzeroBitCount` field:
// ```
// return n.nonzeroBitCount
// ```
