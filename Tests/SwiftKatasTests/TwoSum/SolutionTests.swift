import XCTest
@testable import SwiftKatas

class TwoSumTest: XCTestCase {
    static var allTests = [
        ("Test 1 - [1,54,24,35], 59 -> [2,3]", test1)
    ]

    func test1() {
        let actual = [2,3]
        XCTAssertEqual(actual, Solution.twosum(numbers: [1,54,24,35], target: 59))
    }
}

// Weißt du was Schatz? Ich bin sehr glücklich mit dir. du bist meine Liebe. te amo<3
