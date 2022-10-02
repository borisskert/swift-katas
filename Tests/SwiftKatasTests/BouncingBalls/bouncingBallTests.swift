import XCTest
@testable import SwiftKatas

class BouncingBallsTest: XCTestCase {
    static var allTests = [
        ("bouncingBall", testExample),
    ]

    func testequal(_ h: Double, _ bounce: Double, _ window: Double, _ expected: Int) {
        XCTAssertEqual(bouncingBall(h, bounce, window), expected)
    }

    func testExample() {
        testequal(3, 0.66, 1.5, 3)
        testequal(30, 0.66, 1.5, 15)
        testequal(10, 0.6, 10, -1)
        testequal(40, 1, 10, -1)
        testequal(5, -1, 1.5, -1)
    }
}
