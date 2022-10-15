import XCTest
@testable import SwiftKatas

class RomanNumeralsEncoderTest: XCTestCase {
    func testOneThroughTen() {
        XCTAssertEqual(solution(1), "I")
        XCTAssertEqual(solution(2), "II")
        XCTAssertEqual(solution(3), "III")
        XCTAssertEqual(solution(4), "IV")
        XCTAssertEqual(solution(5), "V")
        XCTAssertEqual(solution(6), "VI")
        XCTAssertEqual(solution(7), "VII")
        XCTAssertEqual(solution(8), "VIII")
        XCTAssertEqual(solution(9), "IX")
        XCTAssertEqual(solution(10), "X")
    }

    func testBigNumbers() {
        XCTAssertEqual(solution(100), "C")
        XCTAssertEqual(solution(444), "CDXLIV")
        XCTAssertEqual(solution(1000), "M")
        XCTAssertEqual(solution(1954), "MCMLIV")
        XCTAssertEqual(solution(1990), "MCMXC")
        XCTAssertEqual(solution(1999), "MCMXCIX")
        XCTAssertEqual(solution(2000), "MM")
        XCTAssertEqual(solution(2008), "MMVIII")
        XCTAssertEqual(solution(3000), "MMM")
        XCTAssertEqual(solution(3900), "MMMCM")
        XCTAssertEqual(solution(3914), "MMMCMXIV")
    }
}
