import XCTest
@testable import SwiftKatas

class FakeBinaryTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testExample),
    ]

    func testExample() {
        XCTAssertEqual(fakeBin(digits: "45385593107843568"), "01011110001100111")
        XCTAssertEqual(fakeBin(digits: "509321967506747"), "101000111101101")
        XCTAssertEqual(fakeBin(digits: "366058562030849490134388085"), "011011110000101010000011011")
        XCTAssertEqual(fakeBin(digits: "15889923"), "01111100")
        XCTAssertEqual(fakeBin(digits: "800857237867"), "100111001111")
        XCTAssertEqual(fakeBin(digits: ""), "")
    }
}
