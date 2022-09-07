import XCTest
@testable import SwiftKatas

class OppositeNumberTest: XCTestCase {
    static var allTests = [
        ("Basic test", testExample),
    ]

    func testExample() {
        XCTAssertEqual(opposite(number: 1), -1)
    }
}
