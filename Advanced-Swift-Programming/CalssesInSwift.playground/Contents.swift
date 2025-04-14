//: Playground - noun: a place where people can play

import UIKit




class KickBoxer {
    
    
    var name: String
    var punchPower: Int
    var punchSpeed: Int
    var kickPower: Int
    var kickSpeed: Int
    
    
    init(name: String, punchPower: Int, punchSpeed: Int, kickPower: Int, kickSpeed: Int) {
        
        self.name = name
        self.punchPower = punchPower
        self.punchSpeed = punchSpeed
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
        
    }
    
    func kickBoxerIdentity() -> String {
        
        return "\(name), \(punchPower), \(punchSpeed), \(kickPower), \(kickSpeed)"
        
    }
}


var kickBoxerA = KickBoxer(name: "A", punchPower: 200, punchSpeed: 300, kickPower: 400, kickSpeed: 500)
print(kickBoxerA.kickPower)

var kickBoxerB = KickBoxer(name: "B", punchPower: 300, punchSpeed: 600, kickPower: 200, kickSpeed: 100)
print(kickBoxerB.punchSpeed)


var kickBoxerC = kickBoxerB


print(kickBoxerA.kickBoxerIdentity())
print(kickBoxerB.kickBoxerIdentity())
print(kickBoxerC.kickBoxerIdentity())



kickBoxerB.punchPower = 800

print(kickBoxerB.punchPower)
print(kickBoxerC.punchPower)



if kickBoxerB === kickBoxerC {
    print("These two Variables are referring to the same object in memory")
} else {
    print("These two Variables are not referring to the same object in memory")
}



if kickBoxerA === kickBoxerB {
    
    print("These two Variables are referring to the same object in memory")
    
} else {
    print("These two Variables are not referring to the same object in memory")
}



kickBoxerA === kickBoxerB
kickBoxerB === kickBoxerC




