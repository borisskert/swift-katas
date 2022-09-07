import XCTest
@testable import SwiftKatas

class CreditCardMaskTest: XCTestCase {
    static var allTests = [
        ("testMaskify", testMaskify),
    ]

    func testMaskify() {
        XCTAssertEqual(maskify("4556364607935616"), "############5616")
        XCTAssertEqual(maskify("1"), "1")
        XCTAssertEqual(maskify("11111"), "#1111")
    }

}
