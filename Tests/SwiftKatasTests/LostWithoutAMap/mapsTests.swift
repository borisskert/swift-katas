import XCTest
@testable import SwiftKatas

class LostWithoutAMapTest: XCTestCase {
    static var allTests = [
        ("Works for some examples", testExample),
        ("Works for empty array", testEmptyArray)
    ]

    func testExample() {
        XCTAssertEqual(maps(a: [1, 2, 3, 4, 5]), [2, 4, 6, 8, 10])
        XCTAssertEqual(maps(a: [1, -2, 3, 4, 5]), [2, -4, 6, 8, 10])
        XCTAssertEqual(maps(a: [-1, 2, 3, 4, -5]), [-2, 4, 6, 8, -10])
    }

    func testEmptyArray() {
        XCTAssertEqual(maps(a: []), []);
    }
}
