//: Playground - noun: a place where people can play

import UIKit


var intValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var animalNames = ["African Lion", "Fox", "Bear", "Tiger"]


var firstAnimal = animalNames[0]
print(firstAnimal)

let someAnimals = animalNames[1...3]
print(someAnimals)
print(animalNames)



if intValues.contains(20) {
    print("\(intValues) array contains the value: 20")
} else {
    print("\(intValues) array does not contain the value: 20")
    
}



if animalNames.contains("Bear") {
    print("We have bear inside our array")
} else {
    print("We don't have bear inside our array")
}
if animalNames.contains("Tiger") {
    print("We don't have Tiger inside our array")
}


if animalNames[0...2].contains("Fox") {
    print("We have Fox inside our array")
}














