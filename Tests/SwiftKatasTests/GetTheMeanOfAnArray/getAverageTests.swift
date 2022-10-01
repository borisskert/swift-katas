import XCTest
@testable import SwiftKatas

final class GetTheMeanOfAnArrayTest: XCTestCase {
    static var allTests = [
        ("Simple tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(getAverage([2, 2, 2, 2]), 2);
        XCTAssertEqual(getAverage([1, 2, 3, 4, 5, ]), 3);
        XCTAssertEqual(getAverage([1, 1, 1, 1, 1, 1, 1, 2]), 1);
    }
}
