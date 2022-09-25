import XCTest
@testable import SwiftKatas

class IsHeGonnaSurviveTest: XCTestCase {
    static var allTests = [
        ("Test Hero will win", testHeroWillWin),
        ("Test Hero will lose", testHeroWillLose),
    ]

    func testHeroWillWin() {
        XCTAssertTrue(hero(bullets: 4, dragons: 2))
    }

    func testHeroWillLose() {
        XCTAssertFalse(hero(bullets: 4, dragons: 3))
    }
}
