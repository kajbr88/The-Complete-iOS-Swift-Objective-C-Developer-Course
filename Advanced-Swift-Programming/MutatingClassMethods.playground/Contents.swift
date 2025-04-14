//: Playground - noun: a place where people can play

import UIKit


class Car {
    
    let make: String
    
    private(set) var color: String
    
    init() {
        
        make = "Ford"
        color = "Black"
        
    }
    
    
    required init(make: String, color: String) {
        
        self.make = make
        self.color = color
        
    }
    
    func paint(color: String) {
        self.color = color
    }
    
    
}


let car = Car(make: "Tesla", color: "Red")
car.paint(color: "Blue")

print(car.color)

//car.color = "Green"

