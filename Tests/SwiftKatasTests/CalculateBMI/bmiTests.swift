import XCTest
@testable import SwiftKatas

class CalculateBMITest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual("Underweight", bmi(50, 1.80))
        XCTAssertEqual("Normal", bmi(80, 1.80))
        XCTAssertEqual("Overweight", bmi(90, 1.80))
        XCTAssertEqual("Obese", bmi(110, 1.80))
        XCTAssertEqual("Normal", bmi(50, 1.50))
    }

}
