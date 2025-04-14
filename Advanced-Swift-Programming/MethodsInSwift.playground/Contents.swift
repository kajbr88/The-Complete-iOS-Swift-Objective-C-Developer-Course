//: Playground - noun: a place where people can play

import UIKit



struct Calculation {
    
    let firstNumber: Int
    let secondNumber: Int
    
    
    init(firstNumber: Int, secondNumber: Int) {
        
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
    
    
    func calculateSum() -> Int {
        
        return firstNumber + secondNumber
        
        
    }
    
    func calculateSubtraction() -> Int {
        
        return firstNumber - secondNumber
        
        
    }
    
    func calculateMultiplication() -> Int {
        
        return firstNumber * secondNumber
        
        
    }
    
    
    func calculateDivision() -> Int {
        
        return firstNumber / secondNumber
        
        
    }

}


let calculation1 = Calculation(firstNumber: 100, secondNumber: 20)

calculation1.calculateSum()
calculation1.calculateSubtraction()
calculation1.calculateMultiplication()
calculation1.calculateDivision()












