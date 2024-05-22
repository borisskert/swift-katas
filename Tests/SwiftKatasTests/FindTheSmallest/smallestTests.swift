import XCTest
@testable import SwiftKatas

class SmallestTest: XCTestCase {
  static var allTests = [
    ("smallest", testExample),
  ]

  func dotest(_ n: Int, _ expected: (Int, Int, Int)) {
    let ans = smallest(n)
    XCTAssertTrue(ans == expected, "should return \(expected) but got \(ans)")
  }

  func testExample() {
    dotest(261_235, (126_235, 2, 0))
    dotest(209_917, (29917, 0, 1))
    dotest(285_365, (238_565, 3, 1))
    dotest(269_045, (26945, 3, 0))
    dotest(296_837, (239_687, 4, 1))
  }
}
