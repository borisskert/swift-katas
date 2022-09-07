import XCTest
@testable import SwiftKatas

class ConvertBooleanValuesToStringsYesOrNoTest: XCTestCase {
    static var allTests = [
        ("Fixed Tests", testFixed)
    ]

    func testFixed() {
        XCTAssertEqual(boolToWord(true), "Yes", "Input: true")
        XCTAssertEqual(boolToWord(false), "No", "Input: false")
    }
}
