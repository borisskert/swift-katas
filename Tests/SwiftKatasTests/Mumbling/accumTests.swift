import XCTest
@testable import SwiftKatas

class MumblingTest: XCTestCase {
    func testAccum() {
        XCTAssertEqual(accum("abcd"), "A-Bb-Ccc-Dddd")
    }

    func testAccum1() {
        XCTAssertEqual(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
    }

    func testAccum2() {
        XCTAssertEqual(accum("cwAt"), "C-Ww-Aaa-Tttt")
    }
}

/*bester boris ich liebe dich sehr<3*/
