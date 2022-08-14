import XCTest
@testable import SwiftKatas

class MultiplesOf3Or5Tests: XCTestCase {
    static var allTests = [
        ("Test Solution", testSolution),
    ]

    func testSolution() {
        XCTAssertEqual(solution(10), 23)
        XCTAssertEqual(solution(20), 78)
        XCTAssertEqual(solution(30), 195)
        XCTAssertEqual(solution(40), 368) // 16
        XCTAssertEqual(solution(50), 543) // 23.6
        XCTAssertEqual(solution(60), 810) // 35.2
        XCTAssertEqual(solution(70), 1133) // 49.2
        XCTAssertEqual(solution(80), 1428) // 62.08 // 2.26
        XCTAssertEqual(solution(90), 1845) // 80.2 // 2.21
        XCTAssertEqual(solution(100), 2318) // 100.78 // 2.1
        XCTAssertEqual(solution(200), 9168)
    }
}
