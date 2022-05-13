import Foundation

/**
 https://www.codewars.com/kata/5536a85b6ed4ee5a78000035/train/swift
 */
func tour(_ friendsArr: [String], _ friendsTowns: [String: String], _ dist: [String: Double]) -> Int {
    let distances: [Double] = friendsArr
            .compactMap {
                friendsTowns[$0]
            }
            .compactMap {
                dist[$0]
            }

    let distance = grannysDistance(distances)

    return Int(distance)
}

func grannysDistance(_ distances: [Double]) -> Double {
    distances.first!
            + distances.last!
            + distances.toPairs()
            .map {
                oppositeLeg(a: $0.a, c: $0.b)
            }
            .reduce(0, +)
}

/**
 Calculates opposite leg by Pythagorean theorem
 - Parameters:
   - a: the adjacent leg [MATH.]
   - c: the hypotenuse [MATH.]
 - Returns: the opposite leg [MATH.] (alias 'b')
 */
func oppositeLeg(a: Double, c: Double) -> Double {
    sqrt(c * c - a * a)
}

class Pair<T> {
    public final var a: T
    public final var b: T

    init(_ a: T, _ b: T) {
        self.a = a
        self.b = b
    }
}

extension Collection {
    /**
     Split the Collection into pairs:
     [a, b, c, d, e] -> [(a, b), (b, c), (c, d), (d, e)]
     - Returns: a new ContiguousArray<Pair> instance containing the pairs
     */
    func toPairs() -> Array<Pair<Self.Element>> {
        if count < 2 {
            return []
        }

        let pair: Pair<Self.Element> = Pair<Self.Element>.init(first!, dropFirst().first!)

        var result = Array<Pair<Self.Element>>.init()
        result.append(pair)
        result.append(contentsOf: dropFirst().toPairs())

        return result
    }
}
