import XCTest
@testable import SwiftKatas

func checkAll() {
    check("abcde", 0)
    check("abcdea", 1)
    check("indivisibility", 1)
    check("abcdeaB", 2)
}
func check(_ s:String, _ c:Int) {
    XCTAssertEqual(countDuplicates(s), c)
}

class CountingDuplicatesTest: XCTestCase {
    func testExample() {
        checkAll()
    }
}
