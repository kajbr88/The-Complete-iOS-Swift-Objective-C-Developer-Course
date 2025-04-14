import UIKit

class Lion {
    
    let name: String
    var power: Int
    var speed: Int
    var age: Int
    var canFight: Bool {
        
        willSet {
            print("willSet is called and this is the new value: \(newValue)")
        }
        
        didSet {
            
            print("didSet is called and this is the old value: \(oldValue)")
            
            if canFight && age > 18 {
                print("Our Lion instance can now fight!🦁")
            }
        }
    } // canFight
    
    init(name: String, power: Int, speed: Int, age: Int, canFight: Bool) {
        self.name = name
        self.power = power
        self.speed = speed
        self.age = age
        self.canFight = canFight
    }
} // Lion

let myLion = Lion(name: "My Lion", power: 200, speed: 400, age: 20, canFight: true)

/*myLion.age = 20

print(myLion.canFight)

myLion.canFight = true*/

myLion.canFight = true
