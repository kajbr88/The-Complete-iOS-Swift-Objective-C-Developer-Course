//: Playground - noun: a place where people can play

import UIKit

class Lion {
    
    let name: String
    var power: Int
    var speed: Int
    var age: Int
    var canFight: Bool = false {
        
        willSet {
            
            print("willSet is called and this is the new value: \(newValue)")
            
        }
        
        didSet {
            
            print("didSet is called and this is the old value: \(oldValue)")
            
            if canFight && age > 18 {
                print("Our Lion instance can now fight!🦁")
            }
            
        }
        
    }
    
    init(name: String, power: Int, speed: Int, age: Int) {
        
        self.name = name
        self.power = power
        self.speed = speed
        self.age = age
        
    }
    
}

let myLion = Lion(name: "My Lion", power: 200, speed: 400, age: 15)

myLion.age = 20
myLion.canFight = true









