//: Playground - noun: a place where people can play

import UIKit



var intValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var animalNames = ["African Lion", "Fox", "Bear", "Tiger"]


for intValue in intValues {
    print(intValue)
}

for animalName in animalNames {
    
    print(animalName)
    
}


for (index, integerValue) in intValues.enumerated() {
    print("\(index). \(integerValue)")
}

for animalName in animalNames {
    print(animalName + "A")
}


print(animalNames)


for (index, animalName) in animalNames.enumerated() {
    print("\(index). \(animalName)")
}

func getMultiplicationResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var multiplyResult = 1
    
    
    for number in integerNumbers {
        multiplyResult = multiplyResult * number
    }
    
    return multiplyResult
    
}

print(getMultiplicationResultOfIntegerArrayValues(integerNumbers: intValues))




func getDivisionResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var divisionResult = 1
    
    
    for number in integerNumbers {
        divisionResult = divisionResult / number
    }
    
    return divisionResult
    
}


print(getDivisionResultOfIntegerArrayValues(integerNumbers: intValues))



func getSumResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var sumResult = 0
    
    
    for number in integerNumbers {
        sumResult = sumResult + number
    }
    
    return sumResult
    
}

print(getSumResultOfIntegerArrayValues(integerNumbers: intValues))





func getSubtractionResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var subtractionResult = 0
    
    
    for number in integerNumbers {
        subtractionResult = subtractionResult - number
    }
    
    return subtractionResult
    
}

print(getSubtractionResultOfIntegerArrayValues(integerNumbers: intValues))















