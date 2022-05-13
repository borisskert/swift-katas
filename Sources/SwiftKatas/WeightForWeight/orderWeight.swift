import Foundation

/**
 https://www.codewars.com/kata/55c6126177c9441a570000cc/train/swift
 */
func orderWeight(_ s: String) -> String {
    s.split(separator: " ").map {
                Weight.from($0)
            }
            .sorted()
            .map {
                $0.toString()
            }
            .joined(separator: " ")
}

class Weight: Comparable {
    private final let raw: String
    private final let crossSum: Int

    private init(_ raw: String, _ crossSum: Int) {
        self.raw = raw
        self.crossSum = crossSum
    }

    public func toString() -> String {
        raw
    }

    static func ==(lhs: Weight, rhs: Weight) -> Bool {
        lhs.raw == rhs.raw
    }

    static func <(lhs: Weight, rhs: Weight) -> Bool {
        if lhs.crossSum == rhs.crossSum {
            return lhs.raw < rhs.raw
        }

        return lhs.crossSum < rhs.crossSum
    }

    public static func from(_ weight: String.SubSequence) -> Weight {
        Weight.init(String(weight), crossSumOf(weight))
    }

    private static func crossSumOf(_ weight: String.SubSequence) -> Int {
        Array(weight)
                .map {
                    Int(String($0))!
                }
                .reduce(0, +)
    }
}
