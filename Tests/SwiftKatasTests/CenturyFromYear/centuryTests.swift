import XCTest
@testable import SwiftKatas

class CenturyFromYearTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(century(1705), 18)
        XCTAssertEqual(century(1900), 19)
        XCTAssertEqual(century(1601), 17)
        XCTAssertEqual(century(2000), 20)
        XCTAssertEqual(century(89), 1)
    }
}
