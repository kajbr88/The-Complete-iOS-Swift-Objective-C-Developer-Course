enum  Sport: String {    
    
        case Boxing = "Bo"
        case KickBoxing = "Kb"
        case Judo = "judo"
        case Taekwondo = "Tae"

        init() {
            self = .Boxing
    }

        func giveMeSportTitle() -> String {
            return self.rawValue
        }
        
}

let mySport: Sport = Sport()
mySport.giveMeSportTitle()

class Fighter {
    
    var power: Int
    let speed: Int
    var sport: Sport
    
    init() {
        self.power = 100
        self.speed = 200
        self.sport = .Boxing
    }
    
    init(power: Int, speed: Int, sport : Sport) {
        self.power = power
        self.speed = speed
        self.sport = sport
    }
}

let myFirstFighter = Fighter() 
print(myFirstFighter.power)
print(myFirstFighter.speed)
print(myFirstFighter.sport)

let mySecondFighter = Fighter(power: 300, speed: 400, sport: .KickBoxing) 
print(mySecondFighter.power)
print(mySecondFighter.speed)
print(mySecondFighter.sport)
























