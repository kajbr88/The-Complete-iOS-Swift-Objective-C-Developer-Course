import UIKit

class Lion {
    
    let name: String//Instance variables.
    var speed: Int
    var power: Int
    
    static var numberOfLions: Int = 0 /* Type property aka class property or class variable is a property that is allocated to all instances of this class. */
    init(name: String, speed: Int, power: Int) {/* init is run whenever a
        instance of class is created. */
        self.name = name
        self.speed = speed
        self.power = power
        
        //Lion.numberOfLions += 1
        Lion.numberOfLions = Lion.numberOfLions + 1
    }
}


let firstLion = Lion(name: "First Lion", speed: 200, power: 300)
print(Lion.numberOfLions)

let secondLion = Lion(name: "Second Lion", speed: 400, power: 500)
print(Lion.numberOfLions)

let thirdLion = Lion(name: "Third Lion", speed: 800, power: 100)
print(Lion.numberOfLions)

let fourthLion = Lion(name: "Fourth Lion", speed: 300, power: 200)
print(Lion.numberOfLions)

let fifthLion = Lion(name: "Fifth Lion", speed: 300, power: 200)
print(Lion.numberOfLions)















