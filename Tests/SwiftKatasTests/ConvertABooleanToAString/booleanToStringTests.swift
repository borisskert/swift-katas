import XCTest
@testable import SwiftKatas

class ConvertABooleanToAStringTest: XCTestCase {
    static var allTests = [
        ("Function should return \"true\" when true is passed as input.", testExample1),
        ("Function should return \"false\" when false is passed as input.", testExample2)
    ]

    func testExample1() {
        XCTAssertEqual(booleanToString(true), "true")
    }

    func testExample2() {
        XCTAssertEqual(booleanToString(false), "false")
    }
}
