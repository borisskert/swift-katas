import XCTest
@testable import SwiftKatas

class BeginnerReduceButGrowTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual(6, grow([1, 2, 3]))
        XCTAssertEqual(16, grow([4, 1, 1, 1, 4]))
        XCTAssertEqual(64, grow([2, 2, 2, 2, 2, 2]))
    }

}
