import XCTest
@testable import led

class LEDTests: XCTestCase {
    func testLEDIsOffByDefault() {
        let led = LED()
        XCTAssertTrue(led.isOff())
    }


    static var allTests = [
        ("testLEDIsOffByDefault", testLEDIsOffByDefault),
    ]
}
