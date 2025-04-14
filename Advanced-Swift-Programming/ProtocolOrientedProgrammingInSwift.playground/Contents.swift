//: Playground - noun: a place where people can play

import UIKit


protocol Boxing {
    
    func throwJab()
    func throwCross()
    func throwHook()
    func throwUppercut()
    
   // func calculateOveralValueOfBoxer() -> Int
    
    var stamina: Int { get }
    var punchSpeed: Int { get }
    var punchPower: Int { get }
    
    var accuracy: Int { get }
    
}


extension Boxing {
    
    // Default Implementation of our functions in Protocol
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

    
    var stamina: Int {
        
        return 10
        
    }
    
    var accuracy: Int {
        
        return 50
        
    }
    
    var reflectionSpeed: Int {
        
        return 70
        
    }

   
    
}




class Boxer: Boxing {
    
   /* func throwJab() {
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
    }*/
    
    func calculateOveralValueOfBoxer() -> Int {
        return stamina * punchSpeed * punchPower + 100
    }
    
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
    //var accuracy: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        
        //self.accuracy = accuracy
        
    }
}


let myBoxer: Boxing = Boxer(stamina: 300, punchSpeed: 400, punchPower: 500)
myBoxer.throwJab()
myBoxer.throwCross()
myBoxer.throwHook()
myBoxer.throwUppercut()

print(myBoxer.stamina)

print(myBoxer.accuracy)


print("This is reflection speed: \(myBoxer.reflectionSpeed)")

print(myBoxer.calculateOveralValueOfBoxer())


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
        return (stamina * punchPower * punchSpeed) + (kickSpeed * kickPower)
    }
    
}




class KickBoxer: Boxing, KickBoxing {
    
    /*func throwJab() {
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
    }*/
    
    
    
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
    var accuracy: Int
    
    var kickSpeed: Int
    var kickPower: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int, accuracy: Int, kickSpeed: Int, kickPower: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.accuracy = accuracy
        self.kickSpeed = kickSpeed
        self.kickPower = kickPower
        
    }
    
}


let myKickBoxer = KickBoxer(stamina: 400, punchSpeed: 500, punchPower: 600, accuracy: 700, kickSpeed: 800, kickPower: 900)
myKickBoxer.throwJab()
myKickBoxer.throwCross()
myKickBoxer.throwHook()
myKickBoxer.throwUppercut()
myKickBoxer.throwKick()

print(myKickBoxer.calculateOveralValueOfBoxer())
print(myKickBoxer.calculateOveralValueOfKickBoxer())



let firstBoxer: Boxing = Boxer(stamina: 50, punchSpeed: 60, punchPower: 70)
let secondBoxer: Boxer = Boxer(stamina: 100, punchSpeed: 200, punchPower: 300)
let thirdBoxer: Boxing = Boxer(stamina: 200, punchSpeed: 300, punchPower: 400)

let firstKickBoxer: KickBoxing = KickBoxer(stamina: 100, punchSpeed: 200, punchPower: 300, accuracy: 400, kickSpeed: 500, kickPower: 600)

let secondKickBoxer: KickBoxer = KickBoxer(stamina: 10, punchSpeed: 20, punchPower: 30, accuracy: 40, kickSpeed: 50, kickPower: 60)


firstBoxer.throwJab()


print(firstKickBoxer.calculateOveralValueOfKickBoxer())
//print(firstKickBoxer.calculateOveralValueOfBoxer)

print(firstKickBoxer.throwKick())

//print(firstKickBoxer.stamina)

//firstKickBoxer.

//secondKickBoxer.


print(firstBoxer.calculateOveralValueOfBoxer())



print(secondBoxer.calculateOveralValueOfBoxer())





