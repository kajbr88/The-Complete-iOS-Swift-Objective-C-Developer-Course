//: Playground - noun: a place where people can play

import UIKit


var intValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var animalNames = ["African Lion", "Fox", "Bear", "Tiger"]

// Reduce


func getSumResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var sumResult = 0
    
    
    for number in integerNumbers {
        sumResult = sumResult + number
    }
    
    return sumResult
    
}

let sumResult = intValues.reduce(0, combine: +)
print(sumResult)




let subtractResult = intValues.reduce(0, combine: -)
print(subtractResult)

func getSubtractionResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var subtractionResult = 1
    
    
    for number in integerNumbers {
        subtractionResult = subtractionResult - number
    }
    
    return subtractionResult
    
}



let multiplicationResult = intValues.reduce(1, combine: *)
print(multiplicationResult)


func getMultiplicationResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var multiplyResult = 1
    
    
    for number in integerNumbers {
        multiplyResult = multiplyResult * number
    }
    
    return multiplyResult
    
}


let divisionResult = intValues.reduce(1, combine: /)
print(divisionResult)


func getDivisionResultOfIntegerArrayValues(integerNumbers: [Int]) -> Int {
    
    var divisionResult = 1
    
    
    for number in integerNumbers {
        divisionResult = divisionResult / number
    }
    
    return divisionResult
    
}



// Filter

print(intValues.filter({ (a: Int) -> Bool in
    a < 6
}))



let animalNamesWithLetteri = animalNames.filter { (a: String) -> Bool in
    a.contains("i")
}

print(animalNamesWithLetteri)



let intNumbersLessThan5 = intValues.filter { (a: Int) -> Bool in
    
    a < 5
}

print(intNumbersLessThan5)




let intNumbersLessThan7AndGreaterThan3 = intValues.filter { (a: Int) -> Bool in
    
    a < 7 && a > 3
    
}

print(intNumbersLessThan7AndGreaterThan3)





// Map

let newIntegerNumbers = intValues.map { (a: Int) -> Int in
    
    a * 2
}

print(newIntegerNumbers)


print(intValues)




let uppercasedAnimalNames = animalNames.map { (a: String) -> String in
    
    a.uppercased()
    
}

print(uppercasedAnimalNames)
print(animalNames)




let lowercasedAnimalNames = animalNames.map { (a: String) -> String in
    a.lowercased()
}

print(lowercasedAnimalNames)




let animalNamesWithLetterA = animalNames.map { (a: String) -> Bool in
    a.contains("A")
    
}

print(animalNamesWithLetterA)





