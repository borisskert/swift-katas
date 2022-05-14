import XCTest

@testable import SwiftKatas

class JosephusSurvivorTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(josephusSurvivor(7, 3), 4)
        XCTAssertEqual(josephusSurvivor(11, 19), 10)
        XCTAssertEqual(josephusSurvivor(40, 3), 28)
        XCTAssertEqual(josephusSurvivor(14, 2), 13)
        XCTAssertEqual(josephusSurvivor(100, 1), 100)
        XCTAssertEqual(josephusSurvivor(1, 300), 1)
        XCTAssertEqual(josephusSurvivor(2, 300), 1)
        XCTAssertEqual(josephusSurvivor(5, 300), 1)
        XCTAssertEqual(josephusSurvivor(7, 300), 7)
        XCTAssertEqual(josephusSurvivor(300, 300), 265)
    }
}
