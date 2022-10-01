import XCTest
@testable import SwiftKatas

class AreTheyTheSameTest: XCTestCase {
    static var allTests = [
        ("comp", testExample),
    ]

    func testing(_ a: [Int], _ b: [Int], _ expected: Bool) {
        XCTAssertTrue(comp(a, b) == expected, "should return \(expected)")
    }

    func testExample() {
        var a1 = [121, 144, 19, 161, 19, 144, 19, 11];
        var a2 = [11 * 11, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19];
        testing(a1, a2, true);
        a1 = [121, 144, 19, 161, 19, 144, 19, 11];
        a2 = [11 * 21, 121 * 121, 144 * 144, 19 * 19, 161 * 161, 19 * 19, 144 * 144, 19 * 19];
        testing(a1, a2, false);
    }
}
