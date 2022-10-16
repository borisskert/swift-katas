import XCTest
@testable import SwiftKatas

class GetPlanetNameByIDTests: XCTestCase {
    static var allTests = [
        ("Sample Tests", testExample),
    ]

    func testExample() {
        // sample tests under here
        XCTAssertEqual(getPlanetName(2), "Venus")
        XCTAssertEqual(getPlanetName(5), "Jupiter")
        XCTAssertEqual(getPlanetName(3), "Earth")
    }
}
