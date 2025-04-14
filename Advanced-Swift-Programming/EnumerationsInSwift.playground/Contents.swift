import UIKit

enum Animal {
    case Lion
    case Tiger
    case Horse
    case Sheep
    case Cat
    case Leopard
    case Panther
    case Monkey
    case Dolphin
}

Animal.Lion
Animal.Tiger
Animal.Horse
Animal.Sheep
Animal.Cat
Animal.Leopard
Animal.Panther
Animal.Monkey
Animal.Dolphin

/*
enum Animal2 {
    case Lion, Tiger
}
*/

func specifyWildAnimalsAndTameAnimals(animal: Animal) -> String {
    
    switch animal {
    case Animal.Lion, Animal.Tiger, Animal.Leopard, Animal.Panther:
        return "Wild Animal"
        
    case Animal.Horse, Animal.Cat, Animal.Monkey, Animal.Dolphin:
        return "Tame Animal"
        
    default:
        return "Unknown"
    }
}

specifyWildAnimalsAndTameAnimals(animal: Animal.Leopard)
specifyWildAnimalsAndTameAnimals(animal: Animal.Dolphin)

var myAnimal = Animal.Lion

myAnimal = Animal.Leopard

specifyWildAnimalsAndTameAnimals(animal: myAnimal)


enum Computer: Int {
    
    case iMac = 1, MacbookPro, iPhone7, iPhone6, iPhone5, iPhone4, GalaxyS5
}

Computer.iPhone5.rawValue

Computer.iMac.rawValue

Computer.GalaxyS5.rawValue

print(Computer.iMac.rawValue)
print(Computer.MacbookPro.rawValue)
print(Computer.iPhone7.rawValue)
print(Computer.iPhone6.rawValue)
print(Computer.iPhone5.rawValue)
print(Computer.iPhone4.rawValue)
print(Computer.GalaxyS5.rawValue)


enum Sport: Int {
    
    case Boxing = 20, KickBoxing = 50, Judo = 100, Jujitsu = 200, AiKido = 12, Taekwondo = 400, Wrestling = 1
}

print(Sport.AiKido.rawValue)

print(Sport.Boxing.rawValue)

func multiplyBoxingRawValue(sport: Sport) -> Int {
        
    return Sport.Boxing.rawValue * sport.rawValue
    
}

multiplyBoxingRawValue(sport: Sport.Judo)

let kickBoxing = Sport(rawValue: 50)
multiplyBoxingRawValue(sport: kickBoxing!)

if let kickBoxing = kickBoxing {
    multiplyBoxingRawValue(sport: kickBoxing)
    
}


enum PersonGender: Int {
    
    case Male = 1
    case Female = 2
}

let male = PersonGender.Male
male.rawValue

let female = PersonGender.Female
female.rawValue


enum OutCome {
    
    case victory(String) // String means case victory is gonna have String value as associated value
    case failure(String)
}

func evaluateSport(sport: Sport) -> OutCome {
    
    switch sport {
    case Sport.Boxing:
        return .victory("Awesome")
    default:
        return .failure("Bad")
    }
}

evaluateSport(sport: Sport.Boxing)
evaluateSport(sport: Sport.AiKido)



let outcome = evaluateSport(sport: Sport.KickBoxing)

switch outcome {
case .victory:
    print("Great")
case .failure:
    print("Not Good")
}
