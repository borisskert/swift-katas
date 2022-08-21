import XCTest
@testable import SwiftKatas

class BitCountingTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(5, countBits(1234));
        XCTAssertEqual(1, countBits(4));
        XCTAssertEqual(3, countBits(7));
        XCTAssertEqual(2, countBits(9));
        XCTAssertEqual(2, countBits(10));
    }
}
