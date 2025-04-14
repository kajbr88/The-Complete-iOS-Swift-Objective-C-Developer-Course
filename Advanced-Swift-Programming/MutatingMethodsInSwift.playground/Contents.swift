import UIKit

struct Fighter {
    
    var power: Int
    var speed: Int
    
    mutating func increasePowerBy10() { /* structs need mutating to modify stored properties. */
        
        self.power = power + 10
    }
    
    mutating func increaseSpeedBy20() {
        
        speed = speed + 20
        
    }
}


var firstFighter = Fighter(power: 50, speed: 90)
var secondFighter = firstFighter

firstFighter.power = 200

print(firstFighter.power)

print(secondFighter.power)


class Boxer {
    
    
    var punchPower: Int
    var punchSpeed: Int
    
    init(punchPower: Int, punchSpeed: Int) {
        
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        
    }
    
    func increasePunchPowerBy10() {
        
        punchPower = punchPower + 10
    }
    
    func increasePunchSpeedBy20() {
        
        punchSpeed = punchSpeed + 20
        
    }   
}

var firstBoxer = Boxer(punchPower: 100, punchSpeed: 500)
var secondBoxer = firstBoxer


firstBoxer.punchPower = 800

print(firstBoxer.punchPower)

print(secondBoxer.punchPower)


