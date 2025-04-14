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

var kickBoxerA = KickBoxer(punchSpeed: 100, punchPower: 200, kickSpeed: 150, kickPower: 300)

print(kickBoxerA.kickPower)

var kickBoxerB = KickBoxer(punchSpeed: 200, punchPower: 400, kickSpeed: 1000, kickPower: 5000)

print(kickBoxerB.punchSpeed)



var kickBoxerC = kickBoxerB

kickBoxerB.kickPower = 10

print(kickBoxerB.kickPower)
print(kickBoxerC.kickPower)




