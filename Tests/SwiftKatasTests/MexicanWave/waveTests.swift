import XCTest
@testable import SwiftKatas

class MexicanWaveTest: XCTestCase {
    static var allTests = [
        ("hello", testHello),
        ("codewars", testCodewars),
        ("emptyString", testEmptyString),
        ("twoWords", testTwoWords),
        ("gap", testGap),
    ]

    func testHello() {
        let actual = wave("hello")
        XCTAssertEqual(actual, ["Hello", "hEllo", "heLlo", "helLo", "hellO"])
    }

    func testCodewars() {
        let actual = wave("codewars")
        XCTAssertEqual(actual, ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"])

    }

    func testEmptyString() {
        let actual = wave("")
        XCTAssertEqual(actual, [])

    }

    func testTwoWords() {
        let actual = wave("two words")
        XCTAssertEqual(actual, ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"])
    }


    func testGap() {
        let actual = wave(" gap ")
        XCTAssertEqual(actual, [" Gap ", " gAp ", " gaP "])

    }
}
