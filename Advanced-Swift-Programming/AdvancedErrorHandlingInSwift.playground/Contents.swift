import UIKit

enum BoxingPunch {
    case Jab
    case Cross
    case Hook
    case Uppercut
}

enum BoxerError: Error {
    case NotThrowingJab(thrownPunch: BoxingPunch) //BoxingPunch enum is the datatype of thrownPunch aassociated value.
    case NotThrowingCross(thrownPunch: BoxingPunch)
    case NotThrowingHook(thrownPunch: BoxingPunch)
    case NotThrowingUppercut(thrownPunch: BoxingPunch)
    case RunningOutOfPunchesToThrow
}

class Boxer {
    let speed: Int
    let power: Int
    let allowedPunchesToThrow: [BoxingPunch]
    var numberOfPunchesThrown: Int = 0
    // ? is failable initializer.
    init?(speed: Int, power: Int, allowedPunchesToThrow: [BoxingPunch] ) {
        self.speed = speed
    
        guard speed > 70 else {
            return nil
        }
        
        self.power = power
        
        guard power > 70 else {
            return nil
        }
        
        self.allowedPunchesToThrow = allowedPunchesToThrow
        
        guard allowedPunchesToThrow.count > 0 else {
            return nil
        }
    }

    func throwJab() throws {
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != BoxingPunch.Jab {
            throw BoxerError.NotThrowingJab(thrownPunch: punch)
        }
        //numberOfPunchesThrown = numberOfPunchesThrown + 1
        numberOfPunchesThrown += 1
    }
    
    func throwCross() throws {
        
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != BoxingPunch.Cross {
            throw BoxerError.NotThrowingCross(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    func throwHook() throws {
        
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        let punch: BoxingPunch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != .Hook {
            throw BoxerError.NotThrowingHook(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    func throwUppercut() throws {
        
        guard numberOfPunchesThrown < allowedPunchesToThrow.count else {
            throw BoxerError.RunningOutOfPunchesToThrow
        }
        
        let punch = allowedPunchesToThrow[numberOfPunchesThrown]
        if punch != .Uppercut {
            throw BoxerError.NotThrowingUppercut(thrownPunch: punch)
        }
        numberOfPunchesThrown = numberOfPunchesThrown + 1
    }
    
    func startThrowingPunches() throws {
        try throwJab()
        try throwCross()
        try throwHook()
        try throwUppercut()
    }
    
    func throwPunchesCorrectly(throwPunches: () throws -> ()) -> String {
        
        do {
            try throwPunches()
            return "Punches are thrown successfully"
            
        } catch BoxerError.NotThrowingJab(let thrownPunch) {
            
            return "The Boxer was supposed to throw a jab, But he has thrown a \(thrownPunch)"
            
        } catch BoxerError.NotThrowingCross(let thrownPunch) {
            
            return "The Boxer was supposed to throw a cross, but has thrown a \(thrownPunch)"
            
        } catch BoxerError.NotThrowingHook(let thrownPunch) {
            
            return "The Boxer was supposed to throw a hook, but he has thrown a \(thrownPunch)"
            
        } catch BoxerError.NotThrowingUppercut(let thrownPunch) {
            
            return "The Boxer was supposed to throw an uppercut, but he has thrown a \(thrownPunch)"
            
        } catch BoxerError.RunningOutOfPunchesToThrow {
            
            return "The Boxer has already thrown all the punches that he was allowed to throw"
        } catch {
            
            return "An Unknown error occured here. Please try Again"
        }
    }
}

let correctPunchesToThrow: [BoxingPunch] = [BoxingPunch.Jab, BoxingPunch.Cross, BoxingPunch.Hook, BoxingPunch.Uppercut]

let wrongPunchesToThrow: [BoxingPunch] = [BoxingPunch.Uppercut, BoxingPunch.Cross, BoxingPunch.Jab, BoxingPunch.Hook]

let aBadBoxer = Boxer(speed: 40, power: 60, allowedPunchesToThrow: correctPunchesToThrow)

let aGoodBoxer = Boxer(speed: 85, power: 90, allowedPunchesToThrow: correctPunchesToThrow)

print(aGoodBoxer?.power)
print(aGoodBoxer?.speed)

if let boxerPower = aGoodBoxer?.power {
    print(boxerPower)
}

let aWrongBoxer = Boxer(speed: 100, power: 100, allowedPunchesToThrow: wrongPunchesToThrow)

aWrongBoxer?.throwPunchesCorrectly(throwPunches: (aWrongBoxer?.startThrowingPunches)!)

aGoodBoxer?.throwPunchesCorrectly(throwPunches: (aGoodBoxer?.startThrowingPunches)!)
