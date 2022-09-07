import XCTest
@testable import SwiftKatas

class PersistentBuggerTest: XCTestCase {
    func testPersistence() {
        XCTAssertEqual(persistence(for: 18), 1)
    }

    func testPersistenceAgain() {
        XCTAssertEqual(persistence(for: 28), 2)
    }
}
