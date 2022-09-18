import XCTest
@testable import SwiftKatas

class RGBToHexConversionTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual("FFFFFF", rgb(255,255,255))
        XCTAssertEqual("FFFFFF", rgb(255,255,300))
        XCTAssertEqual("000000", rgb(0,0,0))
        XCTAssertEqual("9400D3", rgb(148,0,211))
        XCTAssertEqual("9400D3", rgb(148,-20,211))
        XCTAssertEqual("90C3D4", rgb(144,195,212))
        XCTAssertEqual("D4350C", rgb(212,53,12))
        XCTAssertEqual("010101", rgb(1,1,1))
    }
}
