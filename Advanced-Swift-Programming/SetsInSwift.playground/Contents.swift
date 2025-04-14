//: Playground - noun: a place where people can play

import UIKit


let setOne: Set<Int>
let setTwo = Set<Int>()
print(setTwo)

//print(setOne)


let someArray = [1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5]
let someSet: Set = [1, 2, 3, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5]

print(someArray)
print(someSet)



print(someSet.isEmpty)
print(someSet.count)

print(someSet.contains(4))
print(someSet.contains(2))

print(someSet.first)

if let firstValue = someSet.first {
    
    print(firstValue)
    
}




var wildAnimals: Set = ["Lion", "Leopard", "Bear", "Cat", "Tiger"]
var tameAnimals: Set = ["Domestic Dog", "Demostic Pig", "Desmostic Goat", "Cat", "Tiger"]

wildAnimals.insert("Wild Panther")

print(wildAnimals)


let removedAnimal = wildAnimals.remove("Bear")

print(removedAnimal)

if let bear = removedAnimal {
    
    print(bear)
    
}

print(wildAnimals)





let unionAnimals = wildAnimals.union(tameAnimals)
print(unionAnimals)


let intersectAnimals = wildAnimals.intersection(tameAnimals)
print(intersectAnimals)



let subtractAnimals = wildAnimals.subtracting(tameAnimals)
print(subtractAnimals)

let subtractAnimals2 = tameAnimals.subtracting(wildAnimals)
print(subtractAnimals2)




let symmetricDifferenceAnimals = wildAnimals.symmetricDifference(tameAnimals)
print(symmetricDifferenceAnimals)






