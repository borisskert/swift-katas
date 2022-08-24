import XCTest
@testable import SwiftKatas

class ShortestWordTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(3, find_short("bitcoin take over the world maybe who knows perhaps"))
        XCTAssertEqual(3, find_short("lets talk about javascript the best language"))
        XCTAssertEqual(1, find_short("i want to travel the world writing code one day"))
        XCTAssertEqual(2, find_short("Lets all go on holiday somewhere very cold"))
        XCTAssertEqual(2, find_short("Let's travel abroad shall we"))
    }
}
