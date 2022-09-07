/**
 https://www.codewars.com/kata/5412509bd436bd33920011bc/train/swift
 */
func maskify(_ string: String) -> String {
    let maskLength = max(string.count - 4, 0)
    return "#".replicate(maskLength) + string.suffix(4)
}

private extension String {
    func replicate(_ count: Int) -> String {
        String(repeating: self, count: count)
    }
}
