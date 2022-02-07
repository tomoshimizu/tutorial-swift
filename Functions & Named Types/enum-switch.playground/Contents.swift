
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


// Associated Values

enum TwoDimensionalPoint {
    case origin
    case onXAxis(Double)
    case onYAxis(Double)
    case noZeroCoordinate(x: Double, y: Double)
}

let coordinates = (1.0, 3.0)
let twoDimensionalPoint: TwoDimensionalPoint

switch coordinates {
case (0, 0):
    twoDimensionalPoint = .origin
case (_, 0):
    twoDimensionalPoint = .onXAxis(coordinates.0)
case (0, _):
    twoDimensionalPoint = .onYAxis(coordinates.1)
default:
    twoDimensionalPoint = .noZeroCoordinate(x: coordinates.0, y: coordinates.1)
}

func getValues(for point: TwoDimensionalPoint) -> (x: Double, y: Double) {
    switch point {
    case .origin:
        return (0, 0)
    case .onXAxis(let x):
        return (x, 0)
    case .onYAxis(let y):
        return (0, y)
    case let .noZeroCoordinate(x: x, y: y):
        return (x, y)
    }
}

getValues(for: .origin)
getValues(for: .onXAxis(6.11))
getValues(for: .onYAxis(-2.5))
getValues(for: .noZeroCoordinate(x: 9, y: 20))
