import UIKit

enum BoxingError: Error {
    case NotHavingEnoughPower
    case NotHavingEnoughSpeed
}

class Boxer {
    private func throwJab(power: Int, speed: Int) throws {
        let boxingError: BoxingError
        
        if power < 70 {
            boxingError = BoxingError.NotHavingEnoughPower
            throw boxingError
        } else if speed < 70 {
            boxingError = .NotHavingEnoughSpeed
            throw boxingError
        } else {
            print("Boxer Throws Jab")
        }
    }
    
    func startThrowingJab(power: Int, speed: Int) -> String {
        
        do {
            try throwJab(power: power, speed: speed)
            return "Jab is Thrown Successfully"
            
        } catch BoxingError.NotHavingEnoughPower {
            return "The Boxer does not have enough power in order to throw the jab"
        } catch BoxingError.NotHavingEnoughSpeed {
            return "The Boxer does not have enough speed in order to throw the jab"
        } catch {
            return "This is an Unknown Error that is occured here"
        }
    }
}

let myBoxer = Boxer()

myBoxer.startThrowingJab(power: 80, speed: 100)
