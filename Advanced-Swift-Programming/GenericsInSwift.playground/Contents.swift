import UIKit

enum MartialArts {
    case Boxing
    case KickBoxing
    case Taekwondo
    case Karate
}

struct MartialArtsCoachType {
    var coachFor: MartialArts
}

let boxingCoach: MartialArtsCoachType = MartialArtsCoachType(coachFor: MartialArts.Boxing)

let kickBoxingCoach = MartialArtsCoachType(coachFor: .KickBoxing)
let taekwondoCoach = MartialArtsCoachType(coachFor: .Taekwondo)
let karateCoach = MartialArtsCoachType(coachFor: .Karate)

print(boxingCoach.coachFor)
print(kickBoxingCoach.coachFor)
print(taekwondoCoach.coachFor)
print(karateCoach.coachFor)

struct Boxer {
    let name: String
    var punchSpeed: Int
    var punchPower: Int
}

struct KickBoxer {
    let name: String
    var punchSpeed: Int
    var punchPower: Int
    var kickSpeed: Int
    var kickPower: Int
}

struct Coach<T> {
    var name: String
    var martialArtsType: T
}

let coachA = Coach(name: "Coach A", martialArtsType: Boxer(name: "Boxer A", punchSpeed: 200, punchPower: 400))
print(coachA.name)
print(coachA.martialArtsType.name)
print(coachA.martialArtsType.punchPower)
print(coachA.martialArtsType.punchSpeed)


enum OptionalPunchSpeed {
    case None
    case Some(Int)
}

enum OptionalPunchPower {
    case None
    case Some(Int)
}

enum OptionalStamina {
    case None
    case Some(Int)
}

struct Boxer2 {

    var punchSpeed: OptionalPunchSpeed
    var punchPower: OptionalPunchPower
    var stamina: OptionalStamina
}

let myBoxer2 = Boxer2(punchSpeed: OptionalPunchSpeed.Some(30), punchPower: OptionalPunchPower.Some(50), stamina: OptionalStamina.Some(70))

print(myBoxer2.punchSpeed)
print(myBoxer2.punchPower)
print(myBoxer2.stamina)


/*if let boxerPunchSpeed = myBoxer2.punchSpeed {
    
    
}*/




func returnArgumentValues<A, B>(firstArgument: A, secondArgument: B) -> String {
    
    return "\(firstArgument), \(secondArgument)"
    
}


print(returnArgumentValues(firstArgument: "Android App", secondArgument: "Development"))
print(returnArgumentValues(firstArgument: "iOS App Development", secondArgument: 20))
print(returnArgumentValues(firstArgument: "Android App Development", secondArgument: 100.10))








