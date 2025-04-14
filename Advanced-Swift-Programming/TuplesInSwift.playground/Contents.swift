//: Playground - noun: a place where people can play

import UIKit


let twoIntegerNumbers: (number1: Int, number2: Int) = (10, 20)


twoIntegerNumbers.number1
twoIntegerNumbers.number2


var number1: Int = twoIntegerNumbers.number1
var number2: Int = twoIntegerNumbers.number2


var twoDecimalValues: (decimalValue1: Double, decimalValue2: Double) = (2.456, 456.234)


twoDecimalValues.decimalValue1
twoDecimalValues.decimalValue2


var twoValuesOfDifferentTypes: (Double, Int) = (23.45678, 234)

twoValuesOfDifferentTypes.0
twoValuesOfDifferentTypes.1


let threeIntegerValues: (num1: Int, num2: Int, num3: Int) = (20, 30, 50)

let a = threeIntegerValues.num1
let b = threeIntegerValues.num2
let c = threeIntegerValues.num3


let (a1, a2, a3) = threeIntegerValues

a1
a2
a3


let (x, y, _) = threeIntegerValues

x
y








