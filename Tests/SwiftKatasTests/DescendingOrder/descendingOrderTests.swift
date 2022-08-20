import XCTest
@testable import SwiftKatas

class DescendingOrderTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(descendingOrder(of: 0), 0)
        XCTAssertEqual(descendingOrder(of: 15), 51)
        XCTAssertEqual(descendingOrder(of: 123456789), 987654321)
        XCTAssertEqual(descendingOrder(of: 123465789), 987654321)
    }
}
