//: Playground - noun: a place where people can play

import UIKit

var intValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var animalNames = ["African Lion", "Fox", "Bear", "Tiger"]

animalNames.append("Leopard")

//animalNames += ["Cat"]
animalNames = animalNames + ["Cat"]

animalNames += ["Dog", "Fish", "Dolphin"]

animalNames.insert("Panther", at: 4)

print(animalNames)




var deletedAnimal = animalNames.removeLast()
print(deletedAnimal)

print("\(animalNames) without dolphin")

deletedAnimal = animalNames.remove(at: 5)

print("\(animalNames) without leopard")

animalNames.index(of: "African Lion")


animalNames[2] = "Panda"

print(animalNames)

animalNames.count



intValues[0...1] = [100, 200]

print(intValues)


intValues[0...2] = [1000, 2000, 3000, 4000, 5000, 6000]

print(intValues)


let number4 = intValues.remove(at: 6)
intValues.insert(number4, at: 0)
print(intValues)


intValues = intValues.sorted()
print(intValues)

/*intValues = intValues.sorted(isOrderedBefore: { (a: Int, b: Int) -> Bool in
    
    a > b
    
})*/

intValues = intValues.sorted {
    $0 > $1
}


print(intValues)























