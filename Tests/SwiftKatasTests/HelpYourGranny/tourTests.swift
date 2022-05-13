import XCTest

@testable import SwiftKatas

class HelpYourGrannyTests: XCTestCase {
    func testExample1() {
        XCTAssertEqual(
                tour(
                        ["A1", "A2", "A3", "A4", "A5"],
                        ["A1": "X1", "A2": "X2", "A4": "X4", "A3": "X3"],
                        ["X3": 250.0, "X1": 100.0, "X2": 200.0, "X4": 300.0]
                ),
                889
        )
    }

    func testExample2() {
        XCTAssertEqual(
                tour(
                        ["A1", "A2", "A3", "A4", "A5"],
                        ["A1": "X1", "A4": "X4", "A2": "X2", "A3": "X3"],
                        ["X2": 210.0, "X3": 260.0, "X4": 360.0, "X1": 110.0]
                ),
                1051
        )
    }

    func testExample3() {
        XCTAssertEqual(
                tour(
                        ["A1", "A2", "A3", "A4", "A5"],
                        ["A1": "X1", "A2": "X2", "A5": "X5", "A4": "X4", "A3": "X3"],
                        ["X3": 250.0, "X1": 100.0, "X5": 320.0, "X2": 200.0, "X4": 300.0]
                ),
                1020
        )
    }

    func testExample4() {
        XCTAssertEqual(
                tour(
                        ["B1", "B2"],
                        ["B4": "Y4", "B5": "Y5", "B1": "Y1", "B2": "Y2", "B3": "Y3"],
                        ["Y2": 70.0, "Y5": 150.0, "Y1": 50.0, "Y4": 110.0, "Y3": 90.0]
                ),
                168
        )
    }

    func testExample5() {
        XCTAssertEqual(
                tour(
                        ["B1", "B2", "B3"],
                        ["B4": "Y4", "B5": "Y5", "B3": "Y3", "B2": "Y2", "B1": "Y1"],
                        ["Y2": 80.0, "Y1": 60.0, "Y3": 100.0, "Y5": 150.0, "Y4": 110.0]
                ),
                272
        )
    }

    func testExample6() {
        XCTAssertEqual(
                tour(
                        ["B1", "B2", "B3", "B4"],
                        ["B4": "Y4", "B5": "Y5", "B1": "Y1", "B2": "Y2", "B3": "Y3"],
                        ["Y2": 80.0, "Y5": 150.0, "Y1": 60.0, "Y4": 110.0, "Y3": 100.0]
                ),
                328
        )
    }
}
