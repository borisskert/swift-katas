import XCTest

@testable import SwiftKatas

class WeightForWeightTest: XCTestCase {
    static var allTests = [
        ("orderWeight", testExample),
    ]

    func testing(_ s: String, _ expected: String) {
        XCTAssertEqual(orderWeight(s), expected)
    }

    func testExample() {
        testing("103 123 4444 99 2000", "2000 103 123 4444 99")
        testing("2000 10003 1234000 44444444 9999 11 11 22 123",
                "11 11 2000 10003 22 123 1234000 44444444 9999")
        testing("", "")
        testing("10003 1234000 44444444 9999 2000 123456789",
                "2000 10003 1234000 44444444 9999 123456789")
    }
}
