import XCTest
@testable import SwiftKatas

class ConsecutiveStringsTest: XCTestCase {
    static var allTests = [
        ("longestConsec", testExample),
    ]

    func testing(_ strarr: [String], _ k: Int, _ expected: String) {
        XCTAssertEqual(longestConsec(strarr, k), expected)
    }

    func testExample() {
        testing(["zone", "abigail", "theta", "form", "libe", "zas"], 2, "abigailtheta")
        testing(["ejjjjmmtthh", "zxxuueeg", "aanlljrrrxx", "dqqqaaabbb", "oocccffuucccjjjkkkjyyyeehh"], 1,
                "oocccffuucccjjjkkkjyyyeehh")
        testing([], 3, "")
        testing(["itvayloxrp", "wkppqsztdkmvcuwvereiupccauycnjutlv", "vweqilsfytihvrzlaodfixoyxvyuyvgpck"], 2,
                "wkppqsztdkmvcuwvereiupccauycnjutlvvweqilsfytihvrzlaodfixoyxvyuyvgpck")
        testing(["A", "B", "C"], -2, "")
    }

    func testDivvy() {
        XCTAssertEqual(["A", "B", "C"].divvy(2, 1), [["A", "B"], ["B", "C"]])
    }
}
