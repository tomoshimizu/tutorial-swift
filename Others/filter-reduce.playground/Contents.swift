
let names = [
    "Harumi",
    "Tomo",
    "Sayo",
    "Nodoka"
]

// MARK: - reduce
func concatenateString(_ strArray: [String]) -> String {
    return strArray.reduce("", +)
}
concatenateString(names)

// MARK: - filter + reduce
names.filter {
    $0.count >= 5
}.reduce("", +)


let namesAndAges = [
    "Harumi" : 27,
    "Tomo" : 25,
    "Sayo" : 23,
    "Nodoka" : 18
]

// MARK: - filter
let namesAndAgesLessThanEighteen = namesAndAges.filter { (name, age) -> Bool in
    age <= 18
}

// MARK: - map
let namesMoreThanEighteen = namesAndAges.filter { (name, age) -> Bool in
    age >= 20
}
.map { namesMoreThanEighteen in
    return namesMoreThanEighteen.key
}
