/**
 https://www.codewars.com/kata/5a3fe3dde1ce0e8ed6000097/train/swift
 */
func century(_ year: Int) -> Int {
    let (century, remainder) = year.divMod(100)

    if (remainder == 0) {
        return century
    }

    return century + 1
}

private extension Int {
    func divMod(_ n: Int) -> (Int, Int) {
        (self / n, self % n)
    }
}
