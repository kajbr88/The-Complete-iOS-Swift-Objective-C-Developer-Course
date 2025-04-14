import UIKit

class Boxer {
    
   private let maxPunchingPower = 500
   private let maxPunchingSpeed = 800
    
    var punchingPower: Int = 300 {
        didSet {
            if punchingPower > maxPunchingPower {
                print("The punching power of your boxer instance is too high. Let's change it back to the old Value: \(oldValue)")
                punchingPower = oldValue
            }
        }
    }
    
    var punchingSpeed: Int = 200 {
        didSet {
            if punchingSpeed > maxPunchingSpeed {
                print("The punching speed of your boxer instance is too high. Let's change it back to the old Value: \(oldValue)")
                punchingSpeed = oldValue
            }
        }
    }
}

let myBoxer = Boxer()

myBoxer.punchingPower = 700

print(myBoxer.punchingPower)


print(myBoxer.punchingSpeed)

myBoxer.punchingSpeed = 900

print(myBoxer.punchingSpeed)

