import XCTest
@testable import SwiftKatas

class DuplicateEncoderTest: XCTestCase {
    func testBasics() {
        XCTAssertEqual(duplicateEncode("din"), "(((")
        XCTAssertEqual(duplicateEncode("recede"), "()()()")
        XCTAssertEqual(duplicateEncode("Success"), ")())())", "should ignore case")
        XCTAssertEqual(duplicateEncode("(( @"), "))((")
    }
}
