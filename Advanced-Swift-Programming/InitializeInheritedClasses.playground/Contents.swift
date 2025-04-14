//: Playground - noun: a place where people can play

import UIKit

class Animal {
    
    let name: String
    let color: String
    var animalPower: Int
    var animalSpeed: Int
    var age: Int
    
    init(name: String, color: String, animalPower: Int, animalSpeed: Int, age: Int) {
        
        self.name = name
        self.color = color
        self.animalPower = animalPower
        self.animalSpeed = animalSpeed
        self.age = age
    }
    
}


class Lion: Animal {
    
    var canFight: Bool
    
    init(canFight: Bool) {
        
        self.canFight = canFight
    }
}

















