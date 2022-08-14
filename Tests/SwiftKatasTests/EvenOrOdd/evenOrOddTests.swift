import XCTest
@testable import SwiftKatas

class EvenOrOddTest: XCTestCase {
    static var allTests = [
        ("EvenOrOdd Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(evenOrOdd(2), "Even")
        XCTAssertEqual(evenOrOdd(0), "Even")
        XCTAssertEqual(evenOrOdd(7), "Odd")
        XCTAssertEqual(evenOrOdd(1), "Odd")
        XCTAssertEqual(evenOrOdd(-4), "Even")
        XCTAssertEqual(evenOrOdd(-3), "Odd")
    }
}
