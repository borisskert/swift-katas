import XCTest
@testable import SwiftKatas

class HelpTheBooksellerTest: XCTestCase {
    static var allTests = [
        ("stockList", testExample),
    ]
    
    func testing(_ listOfArt: [String], _ listOfCat: [String], _ expected: String) {
        let ans = stockList(listOfArt, listOfCat)
        XCTAssertTrue(ans == expected, "should return \(expected), got \(ans)")
    }
    
    func testExample() {
        let b = ["BBAR 150", "CDXE 515", "BKWR 250", "BTSQ 890", "DRTY 600"]
        let c = ["A", "B", "C", "D"]
        let res = "(A : 0) - (B : 1290) - (C : 515) - (D : 600)"
        testing(b, c, res)
    }
    
    func testEmptyExample() {
        let b = [String]()
        let c = ["B", "R", "D", "X"]
        let res = ""
        testing(b, c, res)
    }
}
