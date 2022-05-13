import Foundation

/**
 https://www.codewars.com/kata/550f22f4d758534c1100025a/train/swift
 */
func dirReduc(_ arr: [String]) -> [String] {
    arr.reduce(Directions.empty()) {
                $0.append($1)
            }
            .toArray()
}

class Directions {
    private final let directions: [String]

    private init(_ directions: [String]) {
        self.directions = directions
    }

    public func append(_ direction: String) -> Directions {
        if directions.isEmpty {
            return Directions.init([direction])
        }

        let last: String = directions.last!

        if last.isOppositeOf(direction) {
            return Directions.init(directions.dropLast(1))
        }

        var newDirections: [String] = []
        newDirections.append(contentsOf: directions)
        newDirections.append(direction)

        return Directions.init(newDirections)
    }

    public func toArray() -> [String] {
        directions
    }

    public static func empty() -> Directions {
        Directions.init([])
    }
}

extension String {
    public func isOppositeOf(_ other: String) -> Bool {
        "NORTH" == self && "SOUTH" == other
                || "SOUTH" == self && "NORTH" == other
                || "EAST" == self && "WEST" == other
                || "WEST" == self && "EAST" == other
    }
}
