import XCTest
@testable import SwiftKatas

class PlayingWithDigitsTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(digPow(for: 89, using: 1), 1)
        XCTAssertEqual(digPow(for: 92, using: 1), -1)
        XCTAssertEqual(digPow(for: 46288, using: 3), 51)
        XCTAssertEqual(digPow(for: 46288, using: 5), -1)
    }
}
