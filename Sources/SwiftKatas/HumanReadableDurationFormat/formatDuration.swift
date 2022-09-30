/**
 https://www.codewars.com/kata/52742f58faf5485cae000b9a/train/swift
 */
func formatDuration(_ seconds: Int) -> String {
    let (minutes, secondsPart) = seconds.divMod(60)
    let (hours, minutesPart) = minutes.divMod(60)
    let (days, hoursPart) = hours.divMod(24)
    let (years, daysPart) = days.divMod(365)

    return [
        years.with(currency: "year"),
        daysPart.with(currency: "day"),
        hoursPart.with(currency: "hour"),
        minutesPart.with(currency: "minute"),
        secondsPart.with(currency: "second")
    ]
            .filter {
                !$0.isEmpty
            }
            .join(separator: ", ", lastSeparator: " and ")
            ?? "now"
}

private extension Int {
    func divMod(_ divisor: Int) -> (Int, Int) {
        (self / divisor, self % divisor)
    }

    func with(currency: String) -> String {
        if self <= 0 {
            return ""
        }

        if (self == 1) {
            return "1 \(currency)"
        }

        return "\(self) \(currency)s"
    }
}

private extension Array where Element == String {
    func join(separator: String, lastSeparator: String) -> String? {
        if count <= 0 {
            return nil
        }

        if count == 1 {
            return first!
        }

        return [
            dropLast(1).joined(separator: separator),
            last!
        ].joined(separator: lastSeparator)
    }
}
