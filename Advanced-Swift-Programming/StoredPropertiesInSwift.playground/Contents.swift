//: Playground - noun: a place where people can play

import UIKit



enum Computer {
    
    case DesktopComputer, LaptopComputer, MobileComputer
    
}

struct IPhone {
    
    let name: String
    let screenType: String
    let type: Computer = Computer.MobileComputer
    
}



struct IMac {
    
    let name: String
    let type: Computer = .DesktopComputer
    
}



var myIphone = IPhone(name: "iPhone7", screenType: "Touch Screen")

var myIPhoneName = myIphone.name
var myIPhoneScreenType = myIphone.screenType

print(myIPhoneName)
print(myIPhoneScreenType)

var myIMac = IMac(name: "iMac 2016")

print(myIMac.name)








