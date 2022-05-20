import XCTest
@testable import SwiftKatas

class Caesar2Test: XCTestCase {
    static var allTests = [
        ("encode", testExample1),
        ("decode", testExample2),
    ]

    func dotest1(_ s: String, _ shift: Int, _ expected: [String]) {
        XCTAssertEqual(encode(s, shift), expected, "should return \(expected)")
    }

    func dotest2(_ arr: [String], _ expected: String) {
        XCTAssertEqual(decode(arr), expected, "should return \(expected)")
    }

    func testExample1() {
        let u = "I should have known that you would have a perfect answer for me!!!";
        let v = ["ijJ tipvme ibw", "f lopxo uibu z", "pv xpvme ibwf ", "b qfsgfdu botx", "fs gps nf!!!"];
        dotest1(u, 1, v);
    }

    func testExample2() {
        let u = "I should have known that you would have a perfect answer for me!!!";
        let v = ["ijJ tipvme ibw", "f lopxo uibu z", "pv xpvme ibwf ", "b qfsgfdu botx", "fs gps nf!!!"];
        dotest2(v, u);
    }
}
