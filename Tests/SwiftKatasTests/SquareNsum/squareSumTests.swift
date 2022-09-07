import XCTest
@testable import SwiftKatas

class SquareNsumTest: XCTestCase {
    func testNoValue() {
        XCTAssertEqual(squareSum([]), 0)
    }

    func testOneValue() {
        XCTAssertEqual(squareSum([1]), 1)
    }

    func testTwoValues() {
        XCTAssertEqual(squareSum([1, 2]), 5)
        XCTAssertEqual(squareSum([3, 4]), 25)
        XCTAssertEqual(squareSum([-3, -4]), 25)
    }

    func testThreeValues() {
        XCTAssertEqual(squareSum([1, 2, 3]), 14)
        XCTAssertEqual(squareSum([5, 3, 4]), 50)
        XCTAssertEqual(squareSum([-3, -4, 0]), 25)
    }
}
