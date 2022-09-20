import XCTest
@testable import SwiftKatas

class BuildAPileOfCubesTest: XCTestCase {
    static var allTests = [
        ("Test Example", testExample),
    ]

    func testExample() {
        XCTAssertEqual(findNb(4183059834009), 2022)
        XCTAssertEqual(findNb(24723578342962), -1)
        XCTAssertEqual(findNb(135440716410000), 4824)
        XCTAssertEqual(findNb(40539911473216), 3568)
        XCTAssertEqual(findNb(26825883955641), 3218)
    }
}
