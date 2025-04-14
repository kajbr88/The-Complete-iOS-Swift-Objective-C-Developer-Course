//: Playground - noun: a place where people can play

import UIKit


let dictionaryA: Dictionary<String, Int>


let dictionaryB = Dictionary<String, Int>()

let dictionaryC = [String : Int]()




let animalsPower: Dictionary<String, Int> = ["Lion" : 100, "Leopard" : 70, "Bear" : 90, "Fox" : 40]

let animalsSpeed: Dictionary<String, Int> = ["Lion" : 95, "Leopard" : 120, "Bear" : 60, "Fox" : 85]



print(animalsPower)
print(animalsSpeed)





var emptyDictionary: [Int : Int]
emptyDictionary = [ : ]

print(emptyDictionary)


print(animalsPower["Lion"])


if let lionPower = animalsPower["Lion"] {
    
    print(lionPower)
    
}



print(animalsSpeed.isEmpty)
print(animalsPower.count)



print(Array(animalsPower.keys))
print(Array(animalsPower.values))



print(Array(animalsSpeed.keys))
print(Array(animalsSpeed.values))


var bird = ["animalName" : "My Bird", "color" : "White", "power" : "20", "speed" : "70"]

bird.updateValue("80", forKey: "speed")

bird["power"] = "30"

let oldAnimalName = bird.updateValue("My Flying Bird", forKey: "animalName")

print(oldAnimalName)


bird["color"] = "Blue and White"


bird.removeValue(forKey: "color")

bird["color"]

bird["animalName"] = nil

bird.count



// Let's iterate through dictionary values

for (key, value) in animalsPower {
    print("\(key) - \(value)")
}


for key in animalsPower.keys {
    print("\(key), ", terminator: "") // no new line
}


for value in animalsPower.values {
    print("\(value), ", terminator: "") // no new line
}

print()


for (key, value) in animalsSpeed {
    print("\(key) - \(value)")
}


for key in animalsSpeed.keys {
    print("\(key), ", terminator: "") // no new line
}


for value in animalsSpeed.values {
    
    print("\(value), ", terminator: "") // No new Line Character
    
}






print() // Print one final new line

// use reduce and filter functions on dictionaries

let animalsPowerKeys = animalsPower.reduce("", combine: {
    
    $0 + "\($1.0), "
    
})

print(animalsPowerKeys)


let animalsPowerValues = animalsPower.reduce("", combine: {
    $0 + "\($1.1), "
})


print(animalsPowerValues)



print(animalsPower.filter({
    $0.1 > 80
}))


let name = animalsPower.filter({
    $0.1 > 80
})






