import UIKit

enum Sport: String { // String is the datatype of the raw value of the enum
    
    case Boxing = "This is Boxing"
    case KickBoxing = "This is Kick Boxing"
    case Judo = "This is Judo"
    case Taekwondo = "This is Taekwondo"
    case Aikido = "This is Aikido"
    
    // This is a Method
    /*func giveMeSportTitle(sport: Sport) -> String {
        
        return sport.rawValue
        
    }*/
    
    func giveMeSportTitle() -> String {
        
        return self.rawValue
    }
}

// This is a function
/*func giveMeSportTitle(sport: Sport) -> String {
    
    return sport.rawValue
    
}*/

//giveMeSportTitle(sport: Sport.Boxing)

/*let boxing = Sport.Boxing
boxing.giveMeSportTitle(sport: boxing)*/

let boxing = Sport.Boxing // boxing is a instance variable
boxing.giveMeSportTitle()

print(boxing.giveMeSportTitle())
