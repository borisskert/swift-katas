import XCTest
@testable import SwiftKatas

class CountTheMonkeysTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasics),
    ]

    func testBasics() {
        XCTAssertEqual(monkeyCount(5), [1, 2, 3, 4, 5])
        XCTAssertEqual(monkeyCount(3), [1, 2, 3])
        XCTAssertEqual(monkeyCount(9), [1, 2, 3, 4, 5, 6, 7, 8, 9])
        XCTAssertEqual(monkeyCount(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        XCTAssertEqual(monkeyCount(20), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
    }

}
