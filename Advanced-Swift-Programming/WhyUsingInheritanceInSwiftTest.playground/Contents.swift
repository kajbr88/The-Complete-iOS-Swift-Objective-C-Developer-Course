//: Playground - noun: a place where people can play

import UIKit

class Computer {
    
    let name: String
    let power: Int
    let speed: Int
    
    init(name: String, power: Int, speed: Int) {
        
        self.name = name
        self.power = power
        self.speed = speed
        
    }
   
}

class MobileComputer: Computer {
    
    let screenType: String
    
    init(name: String, power: Int, speed: Int, screenType: String) {
        
        self.screenType = screenType
        
        super.init(name: name, power: power, speed: speed)
    }
    
}

class DesktopComputer: Computer {
    
    var hasKeyboard: Bool
    var hasMouse: Bool
    
    init(name: String, power: Int, speed: Int, hasKeyboard: Bool, hasMouse: Bool) {
        
        self.hasKeyboard = hasKeyboard
        self.hasMouse = hasMouse
        
        super.init(name: name, power: power, speed: speed)
        
    }
    
    
}

    



