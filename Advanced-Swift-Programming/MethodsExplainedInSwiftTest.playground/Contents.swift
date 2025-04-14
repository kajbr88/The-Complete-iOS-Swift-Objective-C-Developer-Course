//: Playground - noun: a place where people can play

import UIKit

enum Sport: String {
    
    case Boxing = "This is Boxing"
    case KickBoxing = "This is Kick Boxing"
    case Judo = "This is Judo"
    case Taekwondo = "This is Taekwondo"
    case Aikido = "This is Aikido"
    
   /* func giveMeSportTitle(sport: Sport) -> String {
        
        return sport.rawValue
        
    }*/
    
    
    func giveMeSportTitle() -> String {
        
        return self.rawValue
    }
    
}

/*func giveMeSportTitle(sport: Sport) -> String {

    return sport.rawValue

}*/

//giveMeSportTitle(sport: .Boxing)

/*let boxing = Sport.Boxing
boxing.giveMeSportTitle(sport: boxing)*/


let boxing = Sport.Boxing
boxing.giveMeSportTitle()




