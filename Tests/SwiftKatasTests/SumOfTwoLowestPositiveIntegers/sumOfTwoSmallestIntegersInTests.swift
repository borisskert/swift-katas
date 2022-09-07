import XCTest
@testable import SwiftKatas

class SumOfTwoLowestPositiveIntegersTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22]), 13)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([7, 15, 12, 18, 22]), 19)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([25, 42, 12, 18, 22]), 30)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([1, 8, 12, 18, 5]), 6)
        XCTAssertEqual(sumOfTwoSmallestIntegersIn([13, 12, 5, 61, 22]), 17)
    }
}
