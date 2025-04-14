//: Playground - noun: a place where people can play

import UIKit



for oddNumber in 0 ..< 100 {
    
    if oddNumber % 2 == 0 {
        continue
    }
    
    print("These are the odd Numbers: \(oddNumber)")
    
}




for evenNumber in 0 ... 100 {
    
    if evenNumber % 2 != 0 {
        continue
    }
    
    print("These are the even numbers: \(evenNumber)")
    
}



firstLoop: for numberA in 0 ..< 10 {
    
    print("This is numberA: \(numberA)")
    
    
    secondLoop: for numberB in 0 ..< 10 {
        
        
        if numberB == 5 {
            continue secondLoop
        }
        
        
        print("This is numberB: \(numberB)")
        
        
    }
    
    
}








