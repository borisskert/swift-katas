import XCTest
@testable import SwiftKatas

class SimpleMultiplicationTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(simpleMultiplication(8), 64)
        XCTAssertEqual(simpleMultiplication(2), 16)
        XCTAssertEqual(simpleMultiplication(5), 45)
        XCTAssertEqual(simpleMultiplication(21), 189)
    }
}
