import XCTest
@testable import SwiftKatas

class ChooseBestSumTest: XCTestCase {
    static var allTests = [
        ("chooseBestSum", testExample),
    ]

    func testing(_ t: Int, _ k: Int, _ ls: [Int], _ expected: Int) {
        let ans = chooseBestSum(t, k, ls)
        XCTAssertEqual(ans, expected, "should return \(expected), got \(ans)")
    }

    func testExample() {
        var ts = [50, 55, 56, 57, 58]
        testing(163, 3, ts, 163)
        ts = [50]
        testing(163, 3, ts, -1)
        ts = [91, 74, 73, 85, 73, 81, 87]
        testing(230, 3, ts, 228)
        testing(331, 2, ts, 178)
        testing(331, 4, ts, 331)
    }
}
