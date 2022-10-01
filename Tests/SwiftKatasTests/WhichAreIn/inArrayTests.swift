import XCTest
@testable import SwiftKatas

class WhichAreInTest: XCTestCase {
    static var allTests = [
        ("inArray", testExample),
    ]

    func testing(_ a1: [String], _ a2: [String], _ expected: [String]) {
        XCTAssertTrue(inArray(a1, a2) == expected, "should return \(expected)")
    }

    func testExample() {
        var a1 = ["live", "arp", "strong"]
        var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        var r = ["arp", "live", "strong"]
        testing(a1, a2, r)

        a1 = ["arp", "mice", "bull"]
        a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
        r = ["arp"]
        testing(a1, a2, r)
    }
}
