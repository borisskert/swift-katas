import XCTest
@testable import SwiftKatas

class IsNDivisibleByXAndYTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(isDivisible(3, 3, 4), false)
        XCTAssertEqual(isDivisible(12, 3, 4), true)
        XCTAssertEqual(isDivisible(8, 3, 4), false)
        XCTAssertEqual(isDivisible(48, 3, 4), true)
        XCTAssertEqual(isDivisible(100, 5, 10), true)
        XCTAssertEqual(isDivisible(100, 5, 3), false)
        XCTAssertEqual(isDivisible(4, 4, 2), true)
        XCTAssertEqual(isDivisible(5, 2, 3), false)
        XCTAssertEqual(isDivisible(17, 17, 17), true)
        XCTAssertEqual(isDivisible(17, 1, 17), true)
    }
}
