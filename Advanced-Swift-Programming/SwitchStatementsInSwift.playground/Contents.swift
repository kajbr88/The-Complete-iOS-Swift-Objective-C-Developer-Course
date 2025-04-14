//: Playground - noun: a place where people can play

import UIKit




let scores = 2

switch scores {
    
case 50:
    print("Good")
case 80:
    print("Great")
case 100:
    print("Excellent")
default:
    print("Not Valid")
}




let name: String = "Jack"

switch name {
    
case "John", "Jack":
    print("This is name \(name)")
default:
    break
    
    
}




let numberValue = 19

switch numberValue {
    
case let n where n % 2 == 0:
    print("This number is even")
case let n where n % 2 != 0:
    print("This number is odd")
default:
    break
    
}





let numbers: (number1: Int, number2: Int, number3: Int) = (10, 20, 30)

switch numbers {
    
case (10, 20, 30):
    print("These are the correct values")
    fallthrough
case (_, 20, 30):
    print("Without the first number")
    fallthrough
case (10, _, 30):
    print("Without the second Number")
    fallthrough
case (10, 20, _):
    print("Without the third Number")
    
case (1000, 2000, 3000):
    print("Other Vaues")
    
default:
    print("Invalid Value")
}



switch numbers {
    
case (let number1, let number2, let number3):
    print("This is number1: \(number1), This is number2: \(number2), and This is number3: \(number3)")
    //fallthrough
case (_, let number2, let number3):
    print("This is number2: \(number2), And This is number3: \(number3)")
}



switch numbers {
    
case (let number1, let number2, let number3) where number2 == number1 * number3:
    print("Right!")
case (let number1, _, let number3) where number1 == number3 * number3:
    
    print("Nice!!!")
    
default:
    break
    
}














