import XCTest
@testable import SwiftKatas

class BeginnerSeries2ClockTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(past(0, 1, 1), 61000)
        XCTAssertEqual(past(1, 1, 1), 3661000)
        XCTAssertEqual(past(0, 0, 0), 0)
        XCTAssertEqual(past(1, 0, 1), 3601000)
        XCTAssertEqual(past(1, 0, 0), 3600000)
    }
}
