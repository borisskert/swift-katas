import XCTest
@testable import SwiftKatas

class FindTheFirstNonConsecutiveNumberTest: XCTestCase {
    func testSimpleExample() {
        let first = firstNonConsecutive([1, 2, 3, 4, 6, 7, 8])
        XCTAssertEqual(first, 6)
    }
}
