import XCTest
@testable import SwiftKatas

class FindTheUniqueNumberTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(findUniq([1, 1, 1, 2, 1, 1]), 2)
        XCTAssertEqual(findUniq([0, 0, 55, 0, 0]), 55)
        XCTAssertEqual(findUniq([3, 10, 3, 3, 3]), 10)
        XCTAssertEqual(findUniq([3, 9, 3, 3, 3]), 9)
        XCTAssertEqual(findUniq([3, 9, 3]), 9)
    }
}
