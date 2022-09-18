import XCTest
@testable import SwiftKatas

class ReversedSequenceTest: XCTestCase {

    static var allTests = [
        ("Test n 5", testN5),
    ]

    func testN5() {
        XCTAssertEqual([5, 4, 3, 2, 1], reverseSeq(n: 5))
    }

}
