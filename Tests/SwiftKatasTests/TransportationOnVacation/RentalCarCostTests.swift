import XCTest
@testable import SwiftKatas

class TransportationOnVacationTest: XCTestCase {
    func testSampleTests() {
        XCTAssertEqual(RentalCarCost(1), 40)
        XCTAssertEqual(RentalCarCost(2), 80)
        XCTAssertEqual(RentalCarCost(3), 100)
        XCTAssertEqual(RentalCarCost(4), 140)
        XCTAssertEqual(RentalCarCost(5), 180)
        XCTAssertEqual(RentalCarCost(7), 230)
        XCTAssertEqual(RentalCarCost(8), 270)
        XCTAssertEqual(RentalCarCost(9), 310)
        XCTAssertEqual(RentalCarCost(10), 350)
    }
}
