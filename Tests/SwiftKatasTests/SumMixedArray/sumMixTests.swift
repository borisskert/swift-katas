import XCTest
@testable import SwiftKatas

class SumMixedArrayTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual(sumMix([9, 3, "7", "3"]), 22)
        XCTAssertEqual(sumMix(["5", "0", 9, 3, 2, 1, "9", 6, 7]), 42)
        XCTAssertEqual(sumMix(["3", 6, 6, 0, "5", 8, 5, "6", 2,"0"]), 41)
        XCTAssertEqual(sumMix(["1", "5", "8", 8, 9, 9, 2, "3"]), 45)
        XCTAssertEqual(sumMix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61)
    }
}
