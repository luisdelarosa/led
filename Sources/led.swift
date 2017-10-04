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
    
    public var value: Int = 0
    
    public func isOff() -> Bool {
        return value == 0
    }
    
}
