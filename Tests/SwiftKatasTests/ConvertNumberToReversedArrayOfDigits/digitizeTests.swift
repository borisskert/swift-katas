import XCTest
@testable import SwiftKatas

class ConvertNumberToReversedArrayOfDigitsTest: XCTestCase {
    func testReversedArrayOfDigits() {
        XCTAssertEqual(digitize(123), [3, 2, 1])
        XCTAssertEqual(digitize(348597), [7,9,5,8,4,3])
        XCTAssertEqual(digitize(35231),[1,3,2,5,3])
        XCTAssertEqual(digitize(23582357),[7,5,3,2,8,5,3,2])
        XCTAssertEqual(digitize(984764738),[8,3,7,4,6,7,4,8,9])
        XCTAssertEqual(digitize(45762893920),[0,2,9,3,9,8,2,6,7,5,4])
        XCTAssertEqual(digitize(548702838394),[4,9,3,8,3,8,2,0,7,8,4,5])
    }

    func testReversedArrayOfDigitsEdgeCases() {
        XCTAssertEqual(digitize(0), [0])
        XCTAssertEqual(digitize(1), [1])
    }
}
