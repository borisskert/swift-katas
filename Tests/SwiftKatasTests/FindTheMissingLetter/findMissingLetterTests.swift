import XCTest
@testable import SwiftKatas

class FindTheMissingLetterTest: XCTestCase {
    static var allTests = [
        ("Basic tests", testBasic),
    ]

    func testBasic() {
        XCTAssertEqual(findMissingLetter(["a","b","c","d","f"]), "e")
        XCTAssertEqual(findMissingLetter(["O","Q","R","S"]), "P")
    }

}
