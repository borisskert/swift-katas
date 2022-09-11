import XCTest
@testable import SwiftKatas

class PrinterErrorsTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(printerError("aaabbbbhaijjjm"), "0/14")
        XCTAssertEqual(printerError("aaaxbbbbyyhwawiwjjjwwm"), "8/22")
    }
}
//sivko und boris = meine jungs<3
