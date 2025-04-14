import UIKit

class Computer {
    let computerName: String
    var computerPower: Int
    var computerSpeed: Int
    
    required init(computerName: String, computerPower: Int, computerSpeed: Int) {
        self.computerName = computerName
        self.computerPower = computerPower
        self.computerSpeed = computerSpeed
    }
}

class Mobile: Computer {
    var screenType: String = ""
    
    init(computerName: String, computerPower: Int, computerSpeed: Int, screenType: String) {
        self.screenType = screenType
        super.init(computerName: computerName, computerPower: computerPower, computerSpeed: computerSpeed)
    }
/*if init is a required in superclass then it needs to be overridden in subclass*/
    required init(computerName: String, computerPower: Int,  computerSpeed: Int) {
        self.screenType = "Touch Screen"
        super.init(computerName: computerName, computerPower: computerPower, computerSpeed: computerSpeed)
    }

    convenience init (computer: Computer, screenType: String) {
        self.init(computerName: computer.computerName, computerPower: computer.computerPower, computerSpeed: computer.computerSpeed)
        self.screenType = screenType
    }
}

let myMobile = Mobile(computerName: "iPhone7", computerPower: 500, computerSpeed: 1000)
print(myMobile.computerName)
print(myMobile.computerSpeed)
print(myMobile.computerPower)

let mySecondMobile = Mobile(computerName: "iPhone6", computerPower: 200, computerSpeed: 100, screenType: "Touch Screen")

print(mySecondMobile.computerName)
print(mySecondMobile.computerPower)
print(mySecondMobile.computerSpeed)
print(mySecondMobile.screenType)

let myMobileComputer = Computer(computerName: "Galaxy S6", computerPower: 300, computerSpeed: 250)

let myThirdMobile = Mobile(computer: myMobileComputer, screenType: "Touch Screen")

print(myThirdMobile.computerName)
print(myThirdMobile.computerPower)
print(myThirdMobile.computerSpeed)
print(myThirdMobile.screenType)
