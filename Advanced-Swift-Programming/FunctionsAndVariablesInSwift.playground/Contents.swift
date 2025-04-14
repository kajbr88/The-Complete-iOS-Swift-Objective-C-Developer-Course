//: Playground - noun: a place where people can play

import UIKit



func multiplyTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
    
    return firstNumber * secondNumber
    
    
}


var myFunction: (Int, Int) -> Int

myFunction = multiplyTwoNumbers

let resultA = myFunction(20, 30)
print(resultA)




func divideTwoNumbers(numberA: Int, numberB: Int) -> Int {
    
    return numberA / numberB
    
}

myFunction = divideTwoNumbers

let resultB: Int = myFunction(100, 50)
print(resultB)





func printTheResultOfOperationToTheConsole(function: (Int, Int) -> Int, firstNumber: Int, secondNumber: Int) {
    
    
    let resultValue = function(firstNumber, secondNumber)
    print(resultValue)
    
    
}


printTheResultOfOperationToTheConsole(function: multiplyTwoNumbers, firstNumber: 20, secondNumber: 2)
















