import XCTest
@testable import SwiftKatas

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Single Words", testSingleWords),
        ("Test Multiple Words", testMultipleWords),
    ]

    func testSingleWords() {
        let testCases = [
            ("Welcome", "emocleW"),
            ("to", "to"),
            ("CodeWars", "sraWedoC"),
        ]
        assertTest(testCases)
    }

    func testMultipleWords() {
        let testCases = [
            ("Hey fellow warriors", "Hey wollef sroirraw"),
            ("This sentence is a sentence", "This ecnetnes is a ecnetnes"),
        ]
        assertTest(testCases)
    }

    private func assertTest(_ testCase: [(String, String)]) {
        testCase.forEach {
            XCTAssertEqual(spinWords(in: $0.0), $0.1)
        }
    }
}
