
// MARK: - get season from month

enum Season: String {
    case spring = "🌸"
    case summer = "🏖"
    case autumn = "🍁"
    case winter = "⛄️"
}
                
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

func getSeason(for month: Month) -> Season {
    switch month {
    case .march, .april, .may:
        return .spring
    case .june, .july, .august:
        return .summer
    case .september, .october, .november:
        return .autumn
    case .december, .january, .february:
        return .winter
    }
}

getSeason(for: .june)


// MARK: - get location from movements

enum Direction {
    case north, south, east, west
}

func getLocation(movements: [Direction]) -> (x: Int, y: Int) {
    movements.reduce(into: (x: 0, y: 0)) { (location, movement) in
        switch movement {
        case .north:
            location.y += 1
        case .south:
            location.y -= 1
        case .east:
            location.x += 1
        case .west:
            location.x -= 1
        }
    }
}

getLocation(movements: [.north, .west, .west, .south, .south, .west, .east, .south])
