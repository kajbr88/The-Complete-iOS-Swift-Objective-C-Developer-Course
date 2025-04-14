//: Playground - noun: a place where people can play

import UIKit




class Animal {
    
    let name: String
    let color: String
    var power: Int
    var speed: Int
    
    init(name: String, color: String, power: Int, speed: Int) {
        
        self.name = name
        self.color = color
        self.power = power
        self.speed = speed
    }
    
}


class Dog: Animal {
    
    let canFight = false
    
    
}




func returnAnimal(animal: Animal) -> String {
    
    
    return "\(animal.name), \(animal.color), \(animal.power), \(animal.speed)"
    
}


let myAnimal = Animal(name: "My Animal", color: "Blue", power: 200, speed: 300)
let myDog = Dog(name: "My Dog", color: "White", power: 200, speed: 400)


print(returnAnimal(animal: myAnimal))
print(returnAnimal(animal: myDog))





















