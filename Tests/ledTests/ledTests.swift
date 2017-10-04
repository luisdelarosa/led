import XCTest
@testable import led

class LEDTests: XCTestCase {
    func testLEDIsOffByDefault() {
        let led = LED()
        XCTAssertTrue(led.isOff())
    }

    func testLEDIsOnAfterSettingValueTo1() {
        let led = LED()
        led.value = 1
        XCTAssertFalse(led.isOff())
    }


    static var allTests = [
        ("testLEDIsOffByDefault", testLEDIsOffByDefault),
    ]
}
