import XCTest
@testable import SwiftKatas

class HumanReadableDurationFormatTest: XCTestCase {
    static var allTests = [
        ("Basic Tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual(formatDuration(1), "1 second")
        XCTAssertEqual(formatDuration(62), "1 minute and 2 seconds")
        XCTAssertEqual(formatDuration(120), "2 minutes")
        XCTAssertEqual(formatDuration(3600), "1 hour")
        XCTAssertEqual(formatDuration(3662), "1 hour, 1 minute and 2 seconds")
        XCTAssertEqual(formatDuration(0), "now")
        XCTAssertEqual(formatDuration(15731080), "182 days, 1 hour, 44 minutes and 40 seconds")
        XCTAssertEqual(formatDuration(132030240), "4 years, 68 days, 3 hours and 4 minutes")
    }
}
