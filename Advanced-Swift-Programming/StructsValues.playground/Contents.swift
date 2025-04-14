//: Playground - noun: a place where people can play

import UIKit

var numberA = 20
var numberB = numberA


print(numberA)
print(numberB)


numberA = 100

print(numberA)
print(numberB)


struct KickBoxer {
    
    var punchSpeed: Int
    var punchPower: Int
    var kickSpeed: Int
    var kickPower: Int
    
    
    init(punchSpeed: Int, punchPower: Int, kickSpeed: Int, kickPower: Int) {
        
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.kickSpeed = kickSpeed
        self.kickPower = kickPower
        
        
    }
    
    
}

var kickBoxerA = KickBoxer(punchSpeed: 200, punchPower: 400, kickSpeed: 500, kickPower: 500)
let kickBoxerB = kickBoxerA

print(kickBoxerA.kickPower)
print(kickBoxerB.kickPower)

kickBoxerA.kickPower = 1000

print(kickBoxerA.kickPower)
print(kickBoxerB.kickPower)











