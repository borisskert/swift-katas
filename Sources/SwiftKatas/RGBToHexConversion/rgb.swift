/**
 https://www.codewars.com/kata/513e08acc600c94f01000001/train/swift
 */
func rgb(_ r: Int, _ g: Int, _ b: Int) -> String {
    "\(r.uint8().hexadecimal())\(g.uint8().hexadecimal())\(b.uint8().hexadecimal())"
}

private extension Int {
    func uint8() -> UInt8 {
        if (self >= 255) {
            return 255
        }

        if (self <= 0) {
            return 0
        }

        // #againwhatlearned
        // Use `UInt8(clamping: i)` constructor to cast Int to UInt8

        return UInt8(self)
    }
}

private extension UInt8 {
    func hexadecimal() -> String {
        String(format: "%02X", self)
    }
}

private extension String {
    func padLeft(toLength: Int, withPad: String) -> String {
        let padLength = max(0, toLength - count)
        return "".padding(toLength: padLength, withPad: withPad, startingAt: 0) + self
    }
}
