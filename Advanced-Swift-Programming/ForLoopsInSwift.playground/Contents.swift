//: Playground - noun: a place where people can play

import UIKit





let count = 10

var sum = 0

// 0, 1, 2, 3, 4, 5, 6, 7, 8, 9

for _ in 0 ..< count {
    
    sum = sum + 1
    
    print("Here is our first loop \(sum)")
    
}




var value = 0

// 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

for i in 1 ... 10 {
    
   // value += i
    value = value + i
    print("This is the value of i in our second loop: \(i)")
    
    print("Here is our second loop  \(value)")
    
}





var number1 = 2
var number2 = 2

// 0, 1, 2, 3, 4

for i in 0 ..< 5 {
    
    print("third loop i: \(i)")
    
    number1 = number1 * number2
    
    
    print("Here is our third loop  \(number1)")
    
}

















