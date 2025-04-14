//: Playground - noun: a place where people can play

import UIKit




let closedRangeExample1 = 20 ... 30 // closed Range

//20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30

let closedRangeExample2 = 30 ... 40

// 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40

let halfOpenRangeExample1 = 10 ..< 15 // half open range

// 10, 11, 12, 13, 14

let halfOpenRangeExample2 = 70 ..< 100

// 70, 71.....99



let studentGrade: Int = 600
let message: String

switch studentGrade {
    
case 90 ... 100:
    message = "Awesome😎"
    
case 80 ..< 90:
    message = "Great😀"
case 70 ..< 80:
    message = "Good🙂"
    
case 60 ..< 70:
    message = "Not Bad😐"
default:
    message = "Failed😱"
}

















