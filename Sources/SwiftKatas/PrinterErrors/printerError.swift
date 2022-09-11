/**
 https://www.codewars.com/kata/56541980fa08ab47a0000040/train/swift
 */
func printerError(_ s: String) -> String {
    let bad = s.filter {
        $0.isBad()
    }

    return "\(bad.count)/\(s.count)"
}

private extension Character {
    func isGood() -> Bool {
        self >= "a" && self <= "m"
    }

    func isBad() -> Bool {
        !isGood()
    }
}
