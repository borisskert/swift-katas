import XCTest
@testable import SwiftKatas

class StringRepeatTest: XCTestCase {
    func testRepeat() {
        XCTAssertEqual(repeatStr(5, "Hello"), "HelloHelloHelloHelloHello")
    }
}
