import XCTest
@testable import SwiftKatas

class SquareEveryDigitTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(squareDigits(9119), 811181)
        XCTAssertEqual(squareDigits(0), 0)
    }
}
