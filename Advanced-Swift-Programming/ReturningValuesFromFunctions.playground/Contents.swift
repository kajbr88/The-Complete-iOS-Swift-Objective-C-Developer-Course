//: Playground - noun: a place where people can play

import UIKit




func returnYourName() -> String {
    
    
    return "Morteza"
    
}

returnYourName()

var name = returnYourName()

print(name)




func sumOfTwoNumbers(firstNumber: Int, secondNumber: Int) -> Int {
    
    return firstNumber + secondNumber
    
}

let resultOfSum: Int = sumOfTwoNumbers(firstNumber: 4, secondNumber: 8)
resultOfSum

print(resultOfSum)





func sumAndSubtractTwoNumbers(firstNumber: Int, secondNumber: Int) -> (resultOfSum: Int, resultOfSubtract: Int) {
    
    return (firstNumber + secondNumber, firstNumber - secondNumber)
    
}

let resultOfSumAndSubtract = sumAndSubtractTwoNumbers(firstNumber: 80, secondNumber: 30)

let sumResult = resultOfSumAndSubtract.resultOfSum
print(sumResult)


let subtractResult = resultOfSumAndSubtract.resultOfSubtract

print(subtractResult)





func sumAndSubtractAndMultiplyAndDivideTwoNumbers(firstNumber: Int, secondNumber: Int) -> (sum: Int, subtract: Int, multiply: Int, divide: Int) {
    
    return (firstNumber + secondNumber, firstNumber - secondNumber, firstNumber * secondNumber, firstNumber / secondNumber)
    
    
}


let resultOfSumAndSubtractAndMultiplyAndDivide = sumAndSubtractAndMultiplyAndDivideTwoNumbers(firstNumber: 70, secondNumber: 40)


let sumValue = resultOfSumAndSubtractAndMultiplyAndDivide.sum
print(sumValue)

let subtractValue = resultOfSumAndSubtractAndMultiplyAndDivide.subtract
print(subtractValue)


let multiplyValue = resultOfSumAndSubtractAndMultiplyAndDivide.multiply
print(multiplyValue)


let divideValue = resultOfSumAndSubtractAndMultiplyAndDivide.divide
print(divideValue)



