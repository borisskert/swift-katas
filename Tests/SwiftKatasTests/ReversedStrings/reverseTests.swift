import XCTest
@testable import SwiftKatas

class ReversedStringsTest: XCTestCase {
    static var allTests = [
        ("Short words", testShortWords),
        ("Longer words", testLongerWords)
    ]

    func testShortWords() {
        XCTAssertEqual(reverse("hello"), "olleh")
        XCTAssertEqual(reverse("rat"), "tar")
        XCTAssertEqual(reverse("alpha"), "ahpla")
    }

    func testLongerWords() {
        XCTAssertEqual(reverse("codewars"), "srawedoc")
        XCTAssertEqual(reverse("football"), "llabtoof")
        XCTAssertEqual(reverse("translation"), "noitalsnart")
    }
}
