import XCTest
@testable import SwiftKatas

class SumOfPositiveTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(sumOfPositives([1, 2, 3, 4, 5]), 15);
        XCTAssertEqual(sumOfPositives([1, -2, 3, 4, 5]), 13);
        XCTAssertEqual(sumOfPositives([-1, 2, 3, 4, -5]), 9);
        XCTAssertEqual(sumOfPositives([]), 0);
    }
}
