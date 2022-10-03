import XCTest
@testable import SwiftKatas

class GrasshopperPersonalizedMessageTest: XCTestCase {
    func testBasicTests() {
        XCTAssertEqual(great("Daniel", "Daniel"), "Hello boss")
        XCTAssertEqual(great("Greg", "Daniel"), "Hello guest")
        XCTAssertEqual(great("Bill", "Daniel"), "Hello guest")
        XCTAssertEqual(great("Mary", "Mary"), "Hello boss")
        XCTAssertEqual(great("Kate", "Bob"), "Hello guest")
    }
}
