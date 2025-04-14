import UIKit

protocol Boxing {
    
    func throwJab()
    func throwCross()
    func throwHook()
    func throwUppercut()
    
    var stamina: Int { get set } // Treat this one a Variable
    var punchSpeed: Int { get } // Treat this one as a variable or a constant
    var punchPower: Int { get } // Treat this one as a variable or a constant
}

class Boxer: Boxing {
    
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
    
   /* var stamina: Int = 100
    
    let punchSpeed: Int = 300
    let punchPower: Int = 200*/
    
    /*var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        
    }*/
    
    var stamina: Int = 400
    var punchSpeed: Int = 200
    var punchPower: Int {
        return stamina * punchSpeed
    }
}

let myBoxer = Boxer()
print(myBoxer.stamina)
print(myBoxer.punchSpeed)
print(myBoxer.punchPower)

myBoxer.throwJab()
myBoxer.throwCross()
myBoxer.throwHook()
myBoxer.throwUppercut()

myBoxer.stamina = 400
print(myBoxer.stamina)

myBoxer.punchSpeed = 500
print(myBoxer.punchSpeed)

//myBoxer.punchPower = 900
print(myBoxer.punchPower)


protocol KickBoxing: Boxing {
        
    func throwKick()
    
    var kickPower: Int { get }
    var kickSpeed: Int { get }
}

class KickBoxer: KickBoxing {
    
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
        print("KICK")
    }
    
    var stamina: Int
    var punchSpeed: Int
    var punchPower: Int
    var kickPower: Int
    var kickSpeed: Int
    
    init(stamina: Int, punchSpeed: Int, punchPower: Int, kickPower: Int, kickSpeed: Int) {
        
        self.stamina = stamina
        self.punchSpeed = punchSpeed
        self.punchPower = punchPower
        self.kickPower = kickPower
        self.kickSpeed = kickSpeed
    }
}

let myKickBoxer = KickBoxer(stamina: 500, punchSpeed: 200, punchPower: 400, kickPower: 600, kickSpeed: 100)

print(myKickBoxer.stamina)

myKickBoxer.throwJab()
myKickBoxer.throwCross()
myKickBoxer.throwHook()
myKickBoxer.throwUppercut()
myKickBoxer.throwKick()



protocol Computer {
    
    associatedtype RamType
    
    func turnOn()
    func turnOff()
    func nameOfOperatingSystem() -> String
    func canCalculateHeavyTasks() -> Bool
    
    func returnAmountOfRam() -> RamType
    
    var speed: Int { get }
    var power: Int { get }
    
}

class IPhone7: Computer {
    
    
    func turnOn() {
        print("iPhone7 is turned on")
    }
    func turnOff() {
        print("iPhone7 is turned off")
    }
    func nameOfOperatingSystem() -> String {
        return "iOS"
    }
    func canCalculateHeavyTasks() -> Bool {
        return true
    }
    func returnAmountOfRam() -> Double {
        return 700.100
    }
    
    var speed: Int = 500
    var power: Int = 800
    
}

let myIPhone7 = IPhone7()
print(myIPhone7.power)
print(myIPhone7.speed)
myIPhone7.turnOn()
myIPhone7.nameOfOperatingSystem()
print(myIPhone7.nameOfOperatingSystem())
print(myIPhone7.canCalculateHeavyTasks())
print(myIPhone7.returnAmountOfRam())



protocol Screen {
    
    func specifyTypeOfScreen() -> String
    
}

class GalaxyS6: Computer, Screen {
 
    func turnOn() {
        print("My Galaxy S6 is now turned on")
    }
    
    func turnOff() {
        print("My Galaxy S6 is now turned off")
    }
    
    func nameOfOperatingSystem() -> String {
        return "Android"
    }
    
    func canCalculateHeavyTasks() -> Bool {
        return true
    }
    
    func returnAmountOfRam() -> Int {
        
        return 600
    }
    
    var speed: Int = 500
    var power: Int = 600
    
    
    func specifyTypeOfScreen() -> String {
        return "Touch Screen"
    }
    
    
}

let myGalaxyS6 = GalaxyS6()

print(myGalaxyS6.power)
print(myGalaxyS6.speed)

myGalaxyS6.turnOn()

print(myGalaxyS6.nameOfOperatingSystem())
print(myGalaxyS6.canCalculateHeavyTasks())
print(myGalaxyS6.returnAmountOfRam())
print(myGalaxyS6.specifyTypeOfScreen())

myGalaxyS6.turnOff()



protocol ConvertIntToDouble {
    
    func convertToDouble() -> Double
    
}

extension Int: ConvertIntToDouble {
    
    func convertToDouble() -> Double {
        return Double(self)
    }
    
}

2.convertToDouble()

print(2.convertToDouble())

var number20 = 20
print(number20.convertToDouble())


class BoxerClass: Boxing {
    
    
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
    
    var stamina: Int = 200
    var punchSpeed: Int = 300
    var punchPower: Int = 400
    
    
}

struct BoxerStruct: Boxing {
    
    
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
    
    var stamina: Int = 500
    var punchSpeed: Int = 600
    var punchPower: Int = 700
    
}


enum BoxerEnum: Boxing {
    
    
    case AmatureBoxer
    case ProfessionalBoxer
    
    var stamina: Int {
        
        get {
            switch self {
            case .AmatureBoxer:
                return 1000
            case .ProfessionalBoxer:
                return 2000
            }
        }
        
        set {
            
        }
        
    }
    
    var punchSpeed: Int {
        

        switch self {
        case .AmatureBoxer:
            return 1000
        case .ProfessionalBoxer:
            return 2000
        }
        
        //return 1000
    
    }
    
    
    var punchPower: Int {
        
        switch self {
        case .AmatureBoxer:
            return 2000
        case .ProfessionalBoxer:
            return 4000
        }
        
    }
    
    
    func throwJab() {
        
        switch self {
        case .AmatureBoxer:
            print("The Amature Boxer throws JAB")
        case .ProfessionalBoxer:
            print("The Professional Boxer throws JAB")
        }
        
    }
    
    func throwCross() {
        
        switch self {
        case .AmatureBoxer:
            print("The Amature Boxer throws CROSS")
        case .ProfessionalBoxer:
            print("The Professional Boxer throws CROSS")
        }
        
    }
    
    func throwHook() {
        switch self {
        case .AmatureBoxer:
            print("The Amature Boxer throws HOOK")
        case .ProfessionalBoxer:
            print("The Professional Boxer throws HOOK")
        }
    }
    
    
    func throwUppercut() {
        switch self {
        case .AmatureBoxer:
            print("The Amature Boxer throws UPPERCUT")
        case .ProfessionalBoxer:
            print("The Professional Boxer throws UPPERCUT")
        }
    }
    
    
}


var myBoxerOfClass: Boxing = BoxerClass()
print(myBoxerOfClass.stamina)
print(myBoxerOfClass.punchPower)
print(myBoxerOfClass.punchSpeed)
myBoxerOfClass.throwJab()
myBoxerOfClass.throwCross()
myBoxerOfClass.throwHook()
myBoxerOfClass.throwUppercut()


var myBoxerOfStruct: Boxing = BoxerStruct()
print(myBoxerOfStruct.stamina)
print(myBoxerOfStruct.punchPower)
print(myBoxerOfStruct.punchSpeed)
myBoxerOfStruct.throwJab()
myBoxerOfStruct.throwCross()
myBoxerOfStruct.throwHook()
myBoxerOfStruct.throwUppercut()


var amatureBoxerOfEnum: Boxing = BoxerEnum.AmatureBoxer
print(amatureBoxerOfEnum.stamina)
print(amatureBoxerOfEnum.punchPower)
print(amatureBoxerOfEnum.punchSpeed)
amatureBoxerOfEnum.throwJab()
amatureBoxerOfEnum.throwCross()
amatureBoxerOfEnum.throwHook()
amatureBoxerOfEnum.throwUppercut()


var professionalBoxerOfEnum: Boxing = BoxerEnum.ProfessionalBoxer
print(professionalBoxerOfEnum.stamina)
print(professionalBoxerOfEnum.punchPower)
print(professionalBoxerOfEnum.punchSpeed)
professionalBoxerOfEnum.throwJab()
professionalBoxerOfEnum.throwCross()
professionalBoxerOfEnum.throwHook()
professionalBoxerOfEnum.throwUppercut()


var arrayOfBoxers: Array<Boxing> = [myBoxerOfClass, myBoxerOfStruct, amatureBoxerOfEnum, professionalBoxerOfEnum]

//print(arrayOfBoxers[0])
//print(arrayOfBoxers[1])

for boxer in arrayOfBoxers {
    
    print(boxer)
}




protocol Artist {
    
    var name: String { get }
    var art: String { get }
    
    func performArt()
    
}

class Actor: Artist {
    
    var name: String
    var art: String
    
    init(name: String, art: String) {
        self.name = name
        self.art = art
    }
    
    func performArt() {
        print("\(name) is \(art)")
    }
    
}


let myActor = Actor(name: "My Actor", art: "Acting")
myActor.performArt()



class Singer: Artist {
    
    var name: String
    var art: String
    
    init(name: String, art: String) {
        self.name = name
        self.art = art
    }
    
    func performArt() {
        print("\(name) is \(art)")
    }
}



let mySinger = Singer(name: "My Singer", art: "Singing")
mySinger.performArt()



var artists: Array<Artist> = [Actor(name: "M", art: "Acting"), myActor, mySinger]



func printNameAndArtOfArtists(artists: [Artist]) {
    
    for artist in artists {
        
        print("\(artist.name), \(artist.art)")
        
    }
    
}

printNameAndArtOfArtists(artists: artists)




class Mobile {
    
    let name: String
    var power: Int
    var speed: Int
    var mobileID: Int
    
    init(name: String, power: Int, speed: Int, mobileID: Int) {
        
        self.name = name
        self.power = power
        self.speed = speed
        self.mobileID = mobileID
        
    }
    
}

let firstMobile = Mobile(name: "iPhone5", power: 200, speed: 300, mobileID: 1)
let secondMobile = Mobile(name: "iPhone5", power: 200, speed: 300, mobileID: 2)
let thirdMobile = Mobile(name: "iPhone6", power: 500, speed: 700, mobileID: 3)
let fourthMobile = Mobile(name: "iPhone7", power: 800, speed: 900, mobileID: 4)


//firstMobile == secondMobile

extension Mobile: Equatable {
    
    public static func ==(lhs: Mobile, rhs: Mobile) -> Bool {
        
        return lhs.name == rhs.name && lhs.power == rhs.power && lhs.speed == rhs.speed

        
    }

}

firstMobile == secondMobile
print(firstMobile == secondMobile)

thirdMobile == fourthMobile




//firstMobile < secondMobile


extension Mobile: Comparable {
    
    
    public static func <(lhs: Mobile, rhs: Mobile) -> Bool {
        
        let lhsValue = lhs.power + lhs.speed
        let rhsValue = rhs.power + rhs.speed
        
        return lhsValue < rhsValue
        
    }

    
}



firstMobile < secondMobile


firstMobile < thirdMobile
firstMobile > thirdMobile

firstMobile <= secondMobile



let mobiles: Array<Mobile> = [firstMobile, secondMobile, thirdMobile, fourthMobile]


print(mobiles.sorted())

mobiles.max()


mobiles.min()


mobiles.sorted()



mobiles.starts(with: [secondMobile, fourthMobile])
mobiles.starts(with: [firstMobile, secondMobile])

mobiles.contains(thirdMobile)




let mobileDictionary: [Int : Mobile] = [ firstMobile.mobileID : firstMobile, secondMobile.mobileID : secondMobile, thirdMobile.mobileID : thirdMobile, fourthMobile.mobileID : fourthMobile]




extension Mobile: Hashable {
    
    var hashValue: Int {
        
        return self.mobileID
        
    }
    
}

let mobileSet: Set<Mobile> = [firstMobile, secondMobile, firstMobile, firstMobile, thirdMobile, fourthMobile, thirdMobile, thirdMobile]
print(mobileSet)

for mobile in mobileSet {
    
    print(mobile.name)
}


let mobileDictionary2: [Mobile : Int] = [firstMobile : firstMobile.hashValue, secondMobile : secondMobile.mobileID, thirdMobile : thirdMobile.mobileID, fourthMobile : fourthMobile.mobileID]

print(mobileDictionary2)



protocol CustomBooleanType {
    var booleanValue: Bool { get }
}

extension Mobile: CustomBooleanType {
    
    var booleanValue: Bool {
        
        return self.power + self.speed > 1000
        
    }
    
}

if firstMobile.booleanValue {
    print("This is true")
} else {
    print("This is false")
}


extension Mobile: CustomStringConvertible {
    
    var description: String {
        
        return "\(self.name), \(self.power), \(self.speed)"
        
    }
}

print(firstMobile.description)
print(secondMobile.description)
print(thirdMobile.description)
print(fourthMobile.description)
















