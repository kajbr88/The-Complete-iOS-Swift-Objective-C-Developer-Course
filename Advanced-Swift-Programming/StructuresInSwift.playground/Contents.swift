//: Playground - noun: a place where people can play

import UIKit



struct Computer {
    
    var power: Int
    var speed: Int
    var ram: Int
    let cpu: String
    let screenSize: Int
    
}


var computerA: Computer = Computer(power: 2000, speed: 1000, ram: 16000, cpu: "Core i7", screenSize: 15)
var computerB: Computer = Computer(power: 1000, speed: 500, ram: 1000, cpu: "Mediatec", screenSize: 5)


print(computerA.power)
print(computerA.cpu)
print(computerA.screenSize)

print(computerB.ram)




struct DesktopComputer {
    
    var computer: Computer
    let name: String
    var hasTouchPad: Bool
    
}



var myDesktopComputer = DesktopComputer(computer: computerA, name: "Macbook Pro", hasTouchPad: true)




struct MobileComputer {
    
    var computer: Computer
    let name: String
    var hasTouchScreen: Bool
    
}


var myMobileComputer = MobileComputer(computer: computerB, name: "iPhone7", hasTouchScreen: true)













