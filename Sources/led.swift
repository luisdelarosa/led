//
//  led.swift
//  led
//
//  Created by Luis de la Rosa on 10/3/17.
//
//

import Foundation
import SwiftyGPIO

public class LED {
    
    public let gpioPin: GPIOName
    
    public let gpio: GPIO?
    
    public var value: Int = 0 {
        // Ensure that SwiftyGPIO value is set for the gpio that we're representing, but only on Linux
        didSet {
            if let gpio = self.gpio {
                #if os(Linux)
                    gpio.value = value
                #endif
            }
        }
    }
    
    
    public init(gpioPin: GPIOName, swiftyGPIOs: [GPIOName: GPIO]) {
        self.gpioPin = gpioPin
        
        self.gpio = swiftyGPIOs[self.gpioPin]
    }
    
    public func isOff() -> Bool {
        return value == 0
    }

    public func isOn() -> Bool {
        return value == 1
    }

}
