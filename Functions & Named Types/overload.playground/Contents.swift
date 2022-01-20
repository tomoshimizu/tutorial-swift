import UIKit

// MARK: - Overload

func multiply(number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}

// different number of parameters
func multiply(number: Int) -> Int {
    return number * number
}
print(multiply(number: 5))

// different argument labels
func multiply(for number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}
print(multiply(for: 10, by: 2))

// different parameter types
func multiply(number: Int, by multiplier: [Int]) -> Int {
    var result = number
    if let max = multiplier.max() {
        result = number * max
    }
    
    return result
}
print(multiply(number: 5, by: [1, 2, 4, 6]))

// different return types
func multiply(number: Int, by multiplier: Int) -> String {
    return "The result is \(number * multiplier)"
}
let result: String = multiply(number: 6, by: 11)
print(result)


// MARK: - Parameter

var score = 50

func update(score: inout Int, withPoints points: Int) {
    score += points
}
update(score: &score, withPoints: 100)
score

