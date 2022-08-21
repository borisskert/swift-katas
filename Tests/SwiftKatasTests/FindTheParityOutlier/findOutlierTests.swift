import XCTest
@testable import SwiftKatas

class FindTheParityOutlierTest: XCTestCase {
    func testSampleTestCase() {
        XCTAssertEqual(findOutlier([1, 33, 10053359313, 2, 1, 1, 1, 1, 1, 1, -3, 9]), 2)
        XCTAssertEqual(findOutlier([8, 80, 14, 2, 20, 0, 21, 80]), 21)
    }
}
