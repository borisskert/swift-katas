import XCTest
@testable import SwiftKatas

class ProductOfConsecutiveFibNumbersTest: XCTestCase {
    func doTest(input: UInt64, expected: (UInt64, UInt64, Bool)) {
        let actual = productFib(input)
        XCTAssertTrue(actual == expected, "Incorrect answer for prod=\(input)\nActual: \(actual)\nExpected: \(expected)")
    }

    func testBasicTests() {
        doTest(input: 4895, expected: (55, 89, true))
        doTest(input: 5895, expected: (89, 144, false))
        doTest(input: 74049690, expected: (6765, 10946, true))
    }
}
