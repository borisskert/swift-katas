import XCTest

@testable import SwiftKatas

class DirectionsReductionTests: XCTestCase {
    func testing(_ arr: [String], _ expected: [String]) {
        let ans = dirReduc(arr)
        XCTAssertTrue(ans == expected, "should return \(expected), got \(ans)")
    }

    func testExample() {
        var a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
        testing(a, ["WEST"])
        a = ["EAST", "EAST", "WEST", "NORTH", "WEST", "EAST", "EAST", "SOUTH", "NORTH", "WEST"]
        testing(a, ["EAST", "NORTH"])
        a = ["NORTH", "WEST", "SOUTH", "EAST"]
        testing(a, ["NORTH", "WEST", "SOUTH", "EAST"])
    }
}
