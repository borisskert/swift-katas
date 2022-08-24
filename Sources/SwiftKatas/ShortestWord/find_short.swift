/**
 https://www.codewars.com/kata/57cebe1dc6fdc20c57000ac9/train/swift
 */
func find_short(_ str: String) -> Int {
    let words = str.split(separator: " ")

    return words.map {
                $0.count
            }
            .min() ?? 0
}
