//: Playground - noun: a place where people can play

import UIKit

protocol Boxing {
    
    func throwJab()
    func throwCross()
    func throwHook()
    func throwUppercut()
    
    func calculateOveralValueOfBoxer() -> Int
    
    var stamina: Int { get }
    var punchSpeed: Int { get }
    var punchPower: Int { get }
    
    var accuracy: Int { get }
    
}

/*class Boxer: Boxing {
    
    func throwJab() {
        print("JAB")
    }
    func throwCross() {
        print("CROSS")
    }
    func throwHook() {
        print("HOOK")
    }
    func throwUppercut() {
        print("UPPERCUT")
    }
    
    func calculateOveralValueOfBoxer() -> Int {
        return stamina * punchSpeed * punchPower
    }
    
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        
    }
    
    
}

let myBoxer = Boxer(stamina: 300, punchSpeed: 400, punchPower: 500)
myBoxer.throwJab()
myBoxer.throwCross()
myBoxer.throwHook()
myBoxer.throwUppercut()

print(myBoxer.calculateOveralValueOfBoxer())

 */
 /*
 
class KickBoxer: Boxing {
    
    func throwJab() {
        print("JAB")
    }
    func throwCross() {
        print("CROSS")
    }
    func throwHook() {
        print("HOOK")
    }
    func throwUppercut() {
        print("UPPERCUT")
    }
    func throwKick() {
        print("Kick")
    }
    func calculateOveralValueOfBoxer() -> Int {
        return stamina * punchPower * punchSpeed
    }
    
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        
    }
    
}


let myKickBoxer = KickBoxer(stamina: 400, punchSpeed: 500, punchPower: 600)
myKickBoxer.throwJab()
myKickBoxer.throwCross()
myKickBoxer.throwHook()
myKickBoxer.throwUppercut()
myKickBoxer.throwKick()

print(myKickBoxer.calculateOveralValueOfBoxer())

*/
 
 
extension Boxing {
    
    func throwJab() {
        print("JAB")
    }
    func throwCross() {
        print("CROSS")
    }
    func throwHook() {
        print("HOOK")
    }
    func throwUppercut() {
        print("UPPERCUT")
    }
    func throwKick() {
        print("Kick")
    }
    
    func calculateOveralValueOfBoxer() -> Int {
        return stamina * punchPower * punchSpeed
    }
   
    var accuracy: Int {
        
        return 50
        
    }
    
    var reflectionSpeed: Int {
    
        return 70
    
    }
}


class Boxer2: Boxing {
    
    var stamina: Int = 100
    var punchPower: Int = 200
    var punchSpeed: Int = 300
    
    var reflectionSpeed: Int = 4
    
    func calculateOveralValueOfBoxer() -> Int {
        return 2
    }
    
}


let myBoxer2: Boxing  = Boxer2()
print(myBoxer2.calculateOveralValueOfBoxer())
print(myBoxer2.accuracy)
print(myBoxer2.reflectionSpeed)

let myBoxer3: Boxer2 = Boxer2()
print(myBoxer3.calculateOveralValueOfBoxer())
print(myBoxer3.reflectionSpeed)

//myBoxer2.reflectionSpeed = 57

protocol KickBoxing {
    
    func throwKick()
    
    func calculateOveralValueOfKickBoxer() -> Int
    
    var kickPower: Int { get }
    var kickSpeed: Int { get }
    
}



extension KickBoxing where Self: Boxing {
    
    func throwKick() {
        
        print("KICK")
        
    }
    
    func calculateOveralValueOfKickBoxer() -> Int {
        
        return (stamina * punchSpeed * punchPower) + (kickSpeed * kickPower)
    }
    
}

class KickBoxer2: Boxing, KickBoxing {
    
    
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    var kickSpeed: Int
    var kickPower: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int, kickSpeed: Int, kickPower: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.kickSpeed = kickSpeed
        self.kickPower = kickPower
        
    }
    
    func calculateOveralValueOfKickBoxer() -> Int {
        return 5
    }
    
    
}

let myKickBoxer2: KickBoxing = KickBoxer2(stamina: 300, punchSpeed: 200, punchPower: 400, kickSpeed: 500, kickPower: 600)
//myKickBoxer2.calculateOveralValueOfBoxer()
myKickBoxer2.calculateOveralValueOfKickBoxer()

let myKickBoxer3: KickBoxer2 = KickBoxer2(stamina: 5, punchSpeed: 4, punchPower: 2, kickSpeed: 5, kickPower: 7)
myKickBoxer3.calculateOveralValueOfKickBoxer()


