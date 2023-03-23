import UIKit

// MARK: - Functions as Parameters

func add(number1: Int, number2: Int) -> Int {
    number1 + number2
}
var function = add
function(4, 2)

func subtract(number1: Int, number2: Int) -> Int {
    number1 - number2
}
function = subtract
function(4, 2)

func sayHello(name: String) {
    print("Hello")
}
var hello = sayHello


// MARK: - TypeAlias

typealias Operate = (Int, Int) -> Int

func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
    let result = operate(a, b)
    print(result)
}
printResult(add, 4, 2)
printResult(subtract, 4, 2)
printResult(+, 4, 2)
printResult(*, 4, 2)

