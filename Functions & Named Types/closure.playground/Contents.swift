// MARK: - Closure

typealias Operate = (Int, Int) -> Int

func add(a: Int, b: Int) -> Int {
  a + b
}

func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
  let result = operate(a, b)
  print(result)
}

var operate = add
var addClosure = { (a: Int, b: Int) -> Int in
    a + b
}

add(a: 7, b: 3)
operate(6, 11)
addClosure(6, 11)

printResult(add, 6, 11)
printResult(operate, 6, 11)
printResult(addClosure, 6, 11)
printResult(+, 6, 11)

printResult(
    { (a: Int, b: Int) -> Int in
        a * b + 100
    },
    3, 10
)


// MARK: - Challenge

// function
func calculateFullName(firstName: String, lastName: String?) -> String {
    firstName + " " + (lastName ?? "")
}

// closure
var calculateFullNameClosure = { (firstName: String, lastName: String) -> String in
    firstName + " " + lastName
}

calculateFullNameClosure("Tomo", "Shimizu")
