//: Playground - noun: a place where people can play

import UIKit


class Animal {
    
    let name: String
    let color: String
    var animalPower: Int
    var animalSpeed: Int
    
    init(name: String, color: String, animalPower: Int, animalSpeed: Int) {
        
        self.name = name
        self.color = color
        self.animalPower = animalPower
        self.animalSpeed = animalSpeed
    }
    
}


class Lion: Animal {
    
    let canFight: Bool = true
    
    
    
}

let myAnimal = Animal(name: "My Animal", color: "Black", animalPower: 200, animalSpeed: 400)


let myLion = Lion(name: "My Lion", color: "Yellow", animalPower: 300, animalSpeed: 200)


print(myAnimal)
print(myLion)

print(myLion.canFight)
print(myLion.name)
print(myLion.color)
print(myLion.animalPower)
print(myLion.animalSpeed)





