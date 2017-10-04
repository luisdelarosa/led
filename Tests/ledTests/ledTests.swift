import XCTest
@testable import led

class LEDTests: XCTestCase {
    // value
    func testLEDIs0ByDefault() {
        let led = LED()
        XCTAssertEqual(0, led.value)
    }
    
    func testLEDIs1AfterSettingValueTo1() {
        let led = LED()
        led.value = 1
        XCTAssertEqual(1, led.value)
    }

    // isOff
    func testLEDIsOffByDefault() {
        let led = LED()
        XCTAssertTrue(led.isOff())
    }

    func testLEDIsNotOffAfterSettingValueTo1() {
        let led = LED()
        led.value = 1
        XCTAssertFalse(led.isOff())
    }

    func testLEDIsNotOffAfterSettingValueBackTo0() {
        let led = LED()
        led.value = 1
        led.value = 0
        XCTAssertTrue(led.isOff())
    }

    // isOn
    func testLEDIsNotOnByDefault() {
        let led = LED()
        XCTAssertFalse(led.isOn())
    }
    
    func testLEDIsOnAfterSettingValueTo1() {
        let led = LED()
        led.value = 1
        XCTAssertTrue(led.isOn())
    }

    func testLEDIsOffAfterSettingValueBackTo0() {
        let led = LED()
        led.value = 1
        led.value = 0
        XCTAssertFalse(led.isOn())
    }

    static var allTests = [
        ("testLEDIsOffByDefault", testLEDIsOffByDefault),
        ("testLEDIs1AfterSettingValueTo1", testLEDIs1AfterSettingValueTo1),
        ("testLEDIsOffByDefault", testLEDIsOffByDefault),
        ("testLEDIsNotOffAfterSettingValueTo1", testLEDIsNotOffAfterSettingValueTo1),
        ("testLEDIsNotOffAfterSettingValueBackTo0", testLEDIsNotOffAfterSettingValueBackTo0),
        ("testLEDIsNotOnByDefault", testLEDIsNotOnByDefault),
        ("testLEDIsOnAfterSettingValueTo1", testLEDIsOnAfterSettingValueTo1),
        ("testLEDIsOffAfterSettingValueBackTo0", testLEDIsOffAfterSettingValueBackTo0)
    ]
}
