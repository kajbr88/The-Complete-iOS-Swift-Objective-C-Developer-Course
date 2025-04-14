//: Playground - noun: a place where people can play

import UIKit

let martialArts = ["BOXING", "KICKBOXING", "KARATE", "TAEKWONDO", "JUDO", "JUJITSU"]

func transformUppercaseLettersToLowercaseLetters(stringValue: String) -> String {
    
    return stringValue.lowercased()
    
}

var lowercasedMartialArts: [String] = []

for martialArt in martialArts {
    
    let lowercaseMartialArt = transformUppercaseLettersToLowercaseLetters(stringValue: martialArt)
    lowercasedMartialArts.append(lowercaseMartialArt)
    
}

print(lowercasedMartialArts)

func myOwnMapFunction<EnteredDataType, OutputDataType>(enteredData: [EnteredDataType], change: (EnteredDataType) -> (OutputDataType)) -> [OutputDataType] {
    
    var dataOutputs: [OutputDataType] = []
    
    for data in enteredData {
        
        let outComponent = change(data)
        dataOutputs.append(outComponent)
        
    }
    
    return dataOutputs
}


let lowercasedMartialArtsB = myOwnMapFunction(enteredData: martialArts, change: transformUppercaseLettersToLowercaseLetters)

print(lowercasedMartialArtsB)


let lowercaseMartialArtsC = martialArts.map(transformUppercaseLettersToLowercaseLetters)

print(lowercaseMartialArtsC)


let lowercaseMartialArtsD = martialArts.map({
    
    $0.lowercased()
    
})

print(lowercaseMartialArtsD)

let moreThan7LetterMartialArts = martialArts.filter({
    
    $0.characters.count > 7
    
})

print(moreThan7LetterMartialArts)

func multiplyValuesOfIntegerArrayTogether(intValues: [Int]) -> Int {
    
    return intValues.reduce(1, *)
    
}

print(multiplyValuesOfIntegerArrayTogether(intValues: [20, 30, 40, 50, 60, 70, 80]))

