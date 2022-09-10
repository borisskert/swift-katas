import XCTest
@testable import SwiftKatas

class DecodeTheMorseCodeTest: XCTestCase {
    func testExample() {
        XCTAssertEqual(decodeMorse(".... . -.--   .--- ..- -.. ."), "HEY JUDE")
    }

    func testBasic() {
        XCTAssertEqual(decodeMorse(".-"), "A")
        XCTAssertEqual(decodeMorse(".."), "I")
        XCTAssertEqual(decodeMorse(". ."), "EE")
        XCTAssertEqual(decodeMorse(".   ."), "E E")
        XCTAssertEqual(decodeMorse("...---..."), "SOS")
        XCTAssertEqual(decodeMorse("... --- ..."), "SOS")
        XCTAssertEqual(decodeMorse("...   ---   ..."), "S O S")
    }

    func testComplex() {
        XCTAssertEqual(decodeMorse(" . "), "E")
        XCTAssertEqual(decodeMorse("   .   . "), "E E")
        XCTAssertEqual(decodeMorse("      ...---... -.-.--   - .... .   --.- ..- .. -.-. -.-   -... .-. --- .-- -.   ..-. --- -..-   .--- ..- -- .--. ...   --- ...- . .-.   - .... .   .-.. .- --.. -.--   -.. --- --. .-.-.-  "), "SOS! THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG.")
    }
}
//mein bester boris ich liebe dich sehr
