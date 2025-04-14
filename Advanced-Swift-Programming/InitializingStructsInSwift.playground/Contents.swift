//: Playground - noun: a place where people can play
import UIKit

struct Computer {
    
    var power: Int
    var speed: Int
    var ram: Int
    let cpu: String
    let screenSize: Int?
    
    init(power: Int, speed: Int, ram: Int, cpu: String, screenSize: Int) {
        
        self.power = power
        self.speed = speed
        self.ram = ram
        self.cpu = cpu
        self.screenSize = screenSize        
    }
    
    init(power: Int, speed: Int, ram: Int, cpu: String) {
        
        self.power = power
        self.speed = speed
        self.ram = ram
        self.cpu = cpu
        self.screenSize = nil
    }
    
     /*init(power: Int) {
     self.power = power
     }*/
    
    init(values: String) {
        
        let valuesString = values.characters.split(separator: ",")
        self.power = atol(String(valuesString[0]))
        self.speed = atol(String(valuesString[1]))
        self.ram = atol(String(valuesString[2]))
        self.cpu = String(valuesString[3])
        self.screenSize = atol(String(valuesString[4]))    
    }
}

let computerA = Computer(values: "20,30,1000,Corei7,17")
print(computerA)

let myComputer = Computer(power: 10, speed: 20, ram: 100, cpu: "Core2", screenSize: 10)
print(myComputer)

print(myComputer.screenSize)

if let myComputerScreenSize = myComputer.screenSize {
    print(myComputerScreenSize)
}

let intelPortableDesktopComputer = Computer(power: 30, speed: 40, ram: 50, cpu: "Corei3")

print(intelPortableDesktopComputer)

struct DesktopComputer {
    
    var desktopComputers: [Computer]
    let name: String
    var hasTouchPad: Bool
    
    init(desktopComputers: [Computer], name: String, hasTouchPad: Bool) {
        self.desktopComputers = desktopComputers
        self.name = name
        self.hasTouchPad = hasTouchPad
    }
        
    init(name: String, hasTouchPad: Bool) {
        self.desktopComputers = [computerA]
        self.name = name
        self.hasTouchPad = hasTouchPad    
    }
    
    init(portableDesktopComputer: Bool) {
        
        if portableDesktopComputer {
            self.desktopComputers = [intelPortableDesktopComputer]
            self.name = "Intel Computer"
            self.hasTouchPad = false
        } else {
            self.desktopComputers = [computerA]
            self.name = "Apple Computer"
            self.hasTouchPad = false
        }
    }
}

let desktop1 = DesktopComputer(portableDesktopComputer: true)
print(desktop1)

let desktop2 = DesktopComputer(portableDesktopComputer: false)
print(desktop2)

let desktop3 = DesktopComputer(desktopComputers: [computerA, intelPortableDesktopComputer], name: "High Performance Computers", hasTouchPad: true)
print(desktop3)

struct MobileComputer {
    
    var mobileComputers: [Computer]
    let name: String
    var hasTouchScreen: Bool
    
    init(mobileComputers: [Computer], name: String, hasTouchScreen: Bool)
        
    {        
        self.mobileComputers = mobileComputers
        self.name = name
        self.hasTouchScreen = hasTouchScreen   
    }
    
    init?(mobileModel: String, mobileComputers: [Computer], name: String) {
        
        if mobileModel == "iPhone4" {
            print("outdated")
            return nil
        }
        self.mobileComputers = mobileComputers
        self.name = name
        self.hasTouchScreen = true
    }
    
     /*init() {
     
     }*/
}

var mobile1 = MobileComputer(mobileComputers: [computerA, intelPortableDesktopComputer], name: "iPhone7", hasTouchScreen: true)

print(mobile1)

let mobile2 = MobileComputer(mobileModel: "iPhone4", mobileComputers: [computerA, intelPortableDesktopComputer], name: "iPhone")
print(mobile2)

let mobile3 = MobileComputer(mobileModel: "iPhone5s", mobileComputers: [computerA, intelPortableDesktopComputer], name: "iPhone")
print(mobile3)

if let mobile3Unwrapped = mobile3 {
    print(mobile3Unwrapped)
}

























