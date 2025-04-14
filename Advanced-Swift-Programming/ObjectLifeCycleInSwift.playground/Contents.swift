import UIKit

class Animal {
    let name: String
    var power: Int
    var speed: Int
    
    init(name: String, power: Int, speed: Int) {
        
        self.name = name
        self.power =  power
        self.speed = speed
    }
    deinit {/* this method is called everytime a abject is removed from memory */
        print("\(name) is now being removed from the device memory")
    }
}

// Referecne count to myAnimal object is 1
var myAnimal: Animal? = Animal(name: "My Animal", power: 1000, speed: 2000)

// Reference count to yourAnimal Object is 1
var yourAnimal: Animal? = Animal(name: "Your Animal", power: 500, speed: 700)

// Reference count to myOtherAnimal instance is 1
var myOtherAnimal: Animal? = Animal(name: "My Other Animal", power: 900, speed: 200)

// Refere count to myAnimal instance is 2
var animal4: Animal? = myAnimal

var arrayOfAnimals = [myAnimal, animal4, yourAnimal, myOtherAnimal]

myAnimal = nil // Reference count to myAnimal instance inside the memory is 3

animal4 = nil // Reference count to myAnimal instance inside the memory is 2

arrayOfAnimals = [] // Reference count to myAnimal instance inside the memory is 0

yourAnimal = nil

myOtherAnimal = nil
