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
        let outputComponent = change(data)
        dataOutputs.append(outputComponent)
    }
    return dataOutputs
}

let lowercasedMartialArtsB = myOwnMapFunction(enteredData: martialArts, change: transformUppercaseLettersToLowercaseLetters)

print(lowercasedMartialArtsB)

/* .map function loops through martialArts array, its a simplified version of myOwnMapFunction funciton defined above using .map e can use error handling capabilites pf the map function */
let lowercaseMartialArtsC = martialArts.map(transformUppercaseLettersToLowercaseLetters)

print(lowercaseMartialArtsC)


let lowercaseMartialArtsD = martialArts.map({
    $0.lowercased()
})

print(lowercaseMartialArtsD)
/* closure inside filter function accepts string as argemnt and returns Bool, the filter function itself return String though */
let moreThan7LetterMartialArts = martialArts.filter({
    $0.count > 7
})

print(moreThan7LetterMartialArts)

func multiplyValuesOfIntegerArrayTogether(intValues: [Int]) -> Int {
    return intValues.reduce(1, *)
}

print(multiplyValuesOfIntegerArrayTogether(intValues: [20, 30, 40, 50, 60, 70, 80]))















