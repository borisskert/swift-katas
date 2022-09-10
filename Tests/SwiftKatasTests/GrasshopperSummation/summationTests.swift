import XCTest
@testable import SwiftKatas

class GrasshopperSummationTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(summation(1), 1)
        XCTAssertEqual(summation(8), 36)
        XCTAssertEqual(summation(22), 253)
        XCTAssertEqual(summation(100), 5050)
        XCTAssertEqual(summation(213), 22791)
    }
}
