import XCTest
@testable import SwiftKatas

class QuarterOfTheYearTest: XCTestCase {
    func testBasicTest() {
        let testCases = [
            (1, 1),
            (2, 1),
            (3, 1),
            (4, 2),
            (5, 2),
            (6, 2),
            (7, 3),
            (8, 3),
            (9, 3),
            (10, 4),
            (11, 4),
            (12, 4),
        ]

        for testCase in testCases {
            XCTAssertEqual(quarter(of: testCase.0), testCase.1)
        }
    }
}
