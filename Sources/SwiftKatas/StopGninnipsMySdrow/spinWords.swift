import Foundation

/**
 https://www.codewars.com/kata/5264d2b162488dc400000001/train/swift
 */
func spinWords(in sentence: String) -> String {
    sentence.components(separatedBy: " ")
            .map(spinWord)
            .joined(separator: " ")
}

func spinWord(in word: String) -> String {
    if word.lengthOfBytes(using: String.Encoding.utf8) >= 5 {
        return String(word.reversed())
    }

    return word
}
