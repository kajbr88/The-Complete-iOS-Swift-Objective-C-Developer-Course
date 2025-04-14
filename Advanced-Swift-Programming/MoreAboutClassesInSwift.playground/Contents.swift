//: Playground - noun: a place where people can play

import UIKit

struct Sport {
    
    var sportName: String
    let score: Int
    
}

 class Athlete {
    
    let athleteName: String
    private var athleteSports: [Sport] = []
    
    init(athleteName: String) { // setter
        self.athleteName = athleteName
    }
    
    func addSport(sport: Sport)  { // getter
        
        athleteSports.append(sport)
        
    }
        
    func getAthleteSportsValues() -> [Sport] {
        return athleteSports
    }
}

let jack = Athlete(athleteName: "Jack")
let boxing = Sport(sportName: "Boxing", score: 100)
let kickBoxing = Sport(sportName: "Kick Boxing", score: 400)
jack.addSport(sport: boxing)
jack.addSport(sport: kickBoxing)

jack.athleteSports

let john = Athlete(athleteName: "John")

print(john.getAthleteSportsValues())

print(jack.getAthleteSportsValues())