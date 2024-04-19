@testable import SwiftKatas
import XCTest

class GapInPrimesTest: XCTestCase {
    func testing(_ g: Int, _ m: Int, _ n: Int, _ expected: (Int, Int)?) {
        XCTAssert(gap(g, m, n)! == expected!, "should return \(expected!), but returned \(gap(g, m, n)!)")
    }

    func testingNil(_ g: Int, _ m: Int, _ n: Int) {
        XCTAssertTrue(gap(g, m, n) == nil, "Should return nil")
    }

    func testExample() {
        testing(2, 100, 110, (101, 103))
        testing(4, 100, 110, (103, 107))
        testingNil(6, 100, 110)
        testingNil(11, 30000, 100_000)
        testing(2, 10_000_000, 11_000_000, (10_000_139, 10_000_141))
    }
}
