/**
 https://www.codewars.com/kata/54b724efac3d5402db00065e/train/swift
 */
func decodeMorse(_ morseCode: String) -> String {
    decode(morseCode.trimmingCharacters(in: .whitespaces))
}

private func decode(_ morseCode: String) -> String {
    if morseCode.isEmpty {
        return ""
    }

    let found = dictionary.filter {
                morseCode.starts(with: $0.key)
            }
            .first!

    let remainingCode = String(morseCode.dropFirst(found.key.count))

    return found.value + decode(remainingCode)
}

private let dictionary = [
    ".-": "A",
    "-...": "B",
    "-.-.": "C",
    "-..": "D",
    ".": "E",
    "..-.": "F",
    "--.": "G",
    "....": "H",
    "..": "I",
    ".---": "J",
    "-.-": "K",
    ".-..": "L",
    "--": "M",
    "-.": "N",
    "---": "O",
    ".--.": "P",
    "--.-": "Q",
    ".-.": "R",
    "...": "S",
    "-": "T",
    "..-": "U",
    "...-": "V",
    ".--": "W",
    "-..-": "X",
    "-.--": "Y",
    "--..": "Z",
    "-.-.--": "!",
    ".-.-.-": ".",
    " ": "",
    "   ": " ",
    "...---...": "SOS",
].sorted {
    $0.key.count >= $1.key.count
}
