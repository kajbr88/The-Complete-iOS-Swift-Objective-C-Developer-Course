//: Playground - noun: a place where people can play

import UIKit




// Declaring Variables that can hold closures

var sumClosure: (Int, Int) -> Int
var subtractClosure: (Int, Int) -> Int
var multiplyClosure: (Int, Int) -> Int
var divideClosure: (Int, Int) -> Int

/*
sumClosure = { (a: Int, b: Int) -> Int in
    
    return a + b
    
}*/

/*
sumClosure = { (a: Int, b: Int) -> Int in
    
    a + b
    
    
}
*/

/*
sumClosure = { (a: Int, b: Int) in
    
    a + b
    
    
}
*/

// Final Version of our sumClosure
sumClosure = {
    
    $0 + $1
}


let sumResult = sumClosure(5, 6)
print(sumResult)


/*
subtractClosure = { (a: Int, b: Int) -> Int in
    
    return a - b
    
    
}
*/
/*
subtractClosure = { (a: Int, b: Int) -> Int in
    
    
    a - b
    
}
*/

/*
subtractClosure = { (a: Int, b: Int) in
    
    a - b
    
    
}
*/

subtractClosure = {
    
    $0 - $1
    
    
}

let subtractResult = subtractClosure(40, 20)
print(subtractResult)

/*
multiplyClosure = { (a: Int, b: Int) -> Int in
    
    return a * b
    
}
*/

/*
multiplyClosure = { (a: Int, b: Int) -> Int in
    
    a * b
    
    
}
*/

/*
multiplyClosure = { (a: Int, b: Int) in
    
    a * b
    
}
*/

multiplyClosure = {
    
    $0 * $1
    
    
}

let multiplyResult = multiplyClosure(2, 8)
print(multiplyResult)



divideClosure = {
    
    $0 / $1
}

let divideResult = divideClosure(20, 10)
print(divideResult)





func calculateNumbers(numberA: Int, numberB: Int, calculate: (Int, Int) -> Int) -> Int {
    
    let calculationResult = calculate(numberA, numberB)
    print(calculationResult)
    return calculationResult
    
    
}

calculateNumbers(numberA: 30, numberB: 50, calculate: sumClosure)
calculateNumbers(numberA: 20, numberB: 10, calculate: subtractClosure)
calculateNumbers(numberA: 50, numberB: 2, calculate: multiplyClosure)
calculateNumbers(numberA: 500, numberB: 5, calculate: divideClosure)



calculateNumbers(numberA: 2, numberB: 3, calculate: { (a: Int, b: Int) in
    
    a + b
    
})

calculateNumbers(numberA: 10, numberB: 2) {
    
    $0 - $1
    
}








