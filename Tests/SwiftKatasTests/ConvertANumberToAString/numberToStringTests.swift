import XCTest
@testable import SwiftKatas

class ConvertANumberToAStringTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(numberToString(number: 5), "5")
        XCTAssertEqual(numberToString(number: 79585), "79585")
        XCTAssertEqual(numberToString(number: 1 + 2), "3")
        XCTAssertEqual(numberToString(number: 1 - 2), "-1")
    }
}
