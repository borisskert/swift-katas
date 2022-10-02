import XCTest
@testable import SwiftKatas

class GrasshopperGradeBookTest: XCTestCase {
    static var allTests = [
        ("Test A", testItShouldReturnA),
        ("Test B", testItShouldReturnB),
        ("Test C", testItShouldReturnC),
        ("Test D", testItShouldReturnD),
        ("Test F", testItShouldReturnF),
    ]

    func testItShouldReturnA() {
        XCTAssertEqual(getGrade(95,90,93), "A", "Expected A, but got \(getGrade(95,90,93))")
        XCTAssertEqual(getGrade(100,85,96), "A", "Expected A, but got \(getGrade(100,85,96))")
        XCTAssertEqual(getGrade(92,93,94), "A", "Expected A, but got \(getGrade(92,93,94))")
        XCTAssertEqual(getGrade(100,100,100), "A", "Expected A, but got \(getGrade(100,100,100))")
    }

    func testItShouldReturnB() {
        XCTAssertEqual(getGrade(70,70,100), "B", "Expected B but got \(getGrade(70,70,100))")
        XCTAssertEqual(getGrade(82,85,87), "B", "Expected B but got \(getGrade(82,85,87))")
        XCTAssertEqual(getGrade(84,79,85), "B", "Expected B but got \(getGrade(84,79,85))")
    }

    func testItShouldReturnC() {
        XCTAssertEqual(getGrade(70,70,70), "C", "Expected C but got \(getGrade(70,70,70))")
        XCTAssertEqual(getGrade(75,70,79), "C", "Expected C but got \(getGrade(75,70,79))")
        XCTAssertEqual(getGrade(60,82,76), "C", "Expected C but got \(getGrade(60,82,76))")
    }

    func testItShouldReturnD() {
        XCTAssertEqual(getGrade(65,70,59), "D",  "Expected D but got \(getGrade(65,70,59))")
        XCTAssertEqual(getGrade(66,62,68), "D",  "Expected D but got \(getGrade(66,62,68))")
        XCTAssertEqual(getGrade(58,62,70), "D",  "Expected D but got \(getGrade(58,62,70))")
    }

    func testItShouldReturnF() {
        XCTAssertEqual(getGrade(44,55,52), "F", "Expected F but got \(getGrade(44,55,52))")
        XCTAssertEqual(getGrade(48,55,52), "F", "Expected F but got \(getGrade(48,55,52))")
        XCTAssertEqual(getGrade(58,59,60), "F", "Expected F but got \(getGrade(58,59,60))")
        XCTAssertEqual(getGrade(0,0,0), "F", "Expected F but got \(getGrade(0,0,0))")
    }
}
