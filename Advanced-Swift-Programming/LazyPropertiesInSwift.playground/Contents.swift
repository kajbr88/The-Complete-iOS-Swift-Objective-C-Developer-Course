import UIKit

class Computer {
    
    var power: Int
    var speed: Int
    var ram: Int
    
    lazy var cpuPower: Int = { // lazy properties are stored properties
        return (1000 * 2) + (2000 * 2) + (3000 * 2) + 1000
    }() // () means the closure is going to be executed immediately.
    
    var computerOveralValue: Int {
        return power * speed * ram + cpuPower
    }
    
    init(power: Int, speed: Int, ram: Int) {
        self.power = power
        self.speed = speed
        self.ram = ram
    }
}

let myComputer = Computer(power: 300, speed: 200, ram: 700)

print(myComputer.computerOveralValue)







