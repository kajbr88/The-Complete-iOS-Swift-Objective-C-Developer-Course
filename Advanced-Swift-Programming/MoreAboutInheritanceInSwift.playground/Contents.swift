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
    
    func fight() {
        print("The Animal is now fighting")
    }
}

class Lion: Animal {
    
    var canFight: Bool = true
    
      override func fight() {
        
        super.fight()
        print("My Lion Fight")
        
        super.age = 27
        print(super.age)

        age = 55
        print(age)
    }
}

let myLion = Lion(name: "My Lion", color: "Yellow", animalPower: 200, animalSpeed: 150, age: 35)

print(myLion.name)
print(myLion.color)
print(myLion.animalPower)
print(myLion.animalSpeed)
print(myLion.age)

myLion.fight()
