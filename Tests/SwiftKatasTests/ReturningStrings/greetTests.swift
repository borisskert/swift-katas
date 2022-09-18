import XCTest
@testable import SwiftKatas

class ReturningStringsTest: XCTestCase {
    static var allTests = [
        ("Test with first name Blazej", testFirstNameBlazej),
    ]

    func testFirstNameBlazej() {
        XCTAssertEqual(greet("Blazej"), "Hello, Blazej how are you doing today?")
    }
}
