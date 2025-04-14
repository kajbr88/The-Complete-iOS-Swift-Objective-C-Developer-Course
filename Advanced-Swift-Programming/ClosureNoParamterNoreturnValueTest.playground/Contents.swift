//: Playground - noun: a place where people can play

import UIKit


let closureWithNoParameter: () -> String = {
    
    
    "This is Closure with no parameters!!!"
    
}

closureWithNoParameter()

var stringValue = closureWithNoParameter()
print(stringValue)

let closureWithNoReturnValue: (a: Int) -> Void = {
    
    print($0 * 5)
    
    
}

closureWithNoReturnValue(a: 4)


let closureWithNoParametersAndNoReturnValues: () -> Void = {
    
    print("This is a closure With No Parameters and No Return Values")
    
    
}

closureWithNoParametersAndNoReturnValues()








