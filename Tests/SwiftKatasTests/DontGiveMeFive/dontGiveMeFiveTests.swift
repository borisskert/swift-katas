import XCTest
@testable import SwiftKatas

class DontGiveMeFiveTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(8, dontGiveMeFive(1, 9));
        XCTAssertEqual(12, dontGiveMeFive(4, 17));
        XCTAssertEqual(72, dontGiveMeFive(1, 90));
        XCTAssertEqual(13, dontGiveMeFive(-14, -1));
    }
}
