import UIKit

struct Computer {
    
    var ram: Int
    var cpuPower: Int
    
    // Computed property must be variable and we must specify the data type of the property. Computed properties do not store values and they simply calculate a value and then return that value
    
    var computerPower: Int {
        let result = ram * cpuPower
        return result
    }
    
    var computerSpeed: Int {
        get {
            let result = ram + cpuPower
            return result
        }
        
        set {
            /*let ramAmout = 500
            let cpuPowerAmount = 700*/
            
            ram = newValue
            cpuPower = newValue + 100
        }
    }
}


var myComputer = Computer(ram: 256, cpuPower: 1000)

print(myComputer.computerPower)

//myComputer.computerPower = 200

print(myComputer.computerSpeed)


myComputer.computerSpeed = 200


print(myComputer.computerSpeed)




