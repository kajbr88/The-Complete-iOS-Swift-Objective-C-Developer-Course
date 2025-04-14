import UIKit

class Leopard {
    
    let name: String
    var power: Int
    var speed: Int
    
    //Below we create a type property which is a single instance of type leopard class.
    static let myOnlyLeopardInstance = Leopard(name: "My Leopard", power: 700, speed: 900)
    
    private init(name: String, power: Int, speed: Int) {
        self.name = name
        self.power = power
        self.speed = speed
    }
}

//let myLeopard = Leopard(

print(Leopard.myOnlyLeopardInstance.name)
print(Leopard.myOnlyLeopardInstance.power)
print(Leopard.myOnlyLeopardInstance.speed)


Leopard.myOnlyLeopardInstance.power = 400
Leopard.myOnlyLeopardInstance.speed = 100


print(Leopard.myOnlyLeopardInstance.power)
print(Leopard.myOnlyLeopardInstance.speed)




