import XCTest
@testable import SwiftKatas

class ValidBracesTest: XCTestCase {
    func testNonNested() {
        XCTAssertTrue(validBraces("()"))
        XCTAssertTrue(validBraces("[]"))
        XCTAssertTrue(validBraces("{}"))
        XCTAssertTrue(validBraces("(){}[]"))
    }

    func testNested() {
        XCTAssertTrue(validBraces("([{}])"))
        XCTAssertFalse(validBraces("(}"))
        XCTAssertFalse(validBraces("[(])"))
        XCTAssertTrue(validBraces("({})[({})]"))
        XCTAssertFalse(validBraces("(})"))
        XCTAssertTrue(validBraces("(({{[[]]}}))"))
        XCTAssertTrue(validBraces("{}({})[]"))
        XCTAssertFalse(validBraces(")(}{]["))
        XCTAssertFalse(validBraces("())({}}{()][]["))
        XCTAssertFalse(validBraces("(((({{"))
        XCTAssertFalse(validBraces("}}]]))}])"))
    }
}
