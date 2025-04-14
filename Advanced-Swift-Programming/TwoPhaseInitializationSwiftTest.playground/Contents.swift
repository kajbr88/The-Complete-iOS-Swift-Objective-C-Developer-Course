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
    
    
    init(name: String, color: String, animalPower: Int, animalSpeed: Int, age: Int, canFight: Bool) {
        
        self.canFight = canFight
        
        super.init(name: name, color: color, animalPower: animalPower, animalSpeed: animalSpeed, age: age)
        
    }
    
}




let myLion = Lion(name: "My Lion", color: "Yellow", animalPower: 400, animalSpeed: 200, age: 20, canFight: true)
print(myLion.name)













