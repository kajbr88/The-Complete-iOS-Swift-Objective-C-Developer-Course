//: Playground - noun: a place where people can play

import UIKit


func multiplyAndPrintThisNumber(number: Int) {
    
    var myNumber: Int = number
    
    myNumber = myNumber * 7
    //myNumber *= 7
    
    //number += 1
    
    print(myNumber)
    
}

//multiplyAndPrintThisNumber(number: 4)


var numberA = 7

multiplyAndPrintThisNumber(number: numberA)

print(numberA)



func multiplyAndPrintThisNumberInOut(number: inout Int) {
    
    number = number * 7
    // number *= 7
    
    print(number)
    
    
}

var numberB = 10

multiplyAndPrintThisNumberInOut(number: &numberB)

print(numberB)








