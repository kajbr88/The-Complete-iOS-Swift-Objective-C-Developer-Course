//: Playground - noun: a place where people can play

import UIKit


var intValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var animalNames = ["African Lion", "Fox", "Bear", "Tiger"]



if intValues.count > 5 {
    print("We have more than 5 Integer values")
} else {
    print("We have less than 5 Integer Values")
}




let firstIntegerValue = intValues.first
let lastIntegerValue = intValues.last
let minIntegerValue = intValues.min()
let maxIntegerValue = intValues.max()



let firstAnimal = animalNames.first
let lastAnimal = animalNames.last

// Lowest string value in alphabet order
let minStringValueInAlphabet = animalNames.min()
let maxStringValueInAlphabet = animalNames.max()


print(firstAnimal)


if let firstAnimal = firstAnimal {
    
    print("The first animal is \(firstAnimal)")
    
}


















