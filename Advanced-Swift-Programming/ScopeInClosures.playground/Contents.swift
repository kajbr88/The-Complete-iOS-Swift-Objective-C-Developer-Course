//: Playground - noun: a place where people can play

import UIKit




var numberA = 1

let multiplyNumberA = {
    
    //numberA *= 2
    
    numberA = numberA * 2
    
}

multiplyNumberA()
multiplyNumberA()
multiplyNumberA()

numberA



func multiply() -> (() -> Double) {
    
    var number: Double = 1.0
    
    let multiplyClosure: () -> Double = {
        
        //number *= 3
        
        number = number * 3
        
        return number
        
    }
    
    return multiplyClosure
    
    
}

let resultA = multiply()

resultA()
resultA()
resultA()


let resultB = multiply()

resultB()
resultB()




















