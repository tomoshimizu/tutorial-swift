
// Create Set
var fruits: Set<String> = [
    "Apple",
    "Banana",
    "Grape",
    "Peach",
    "La France"
]

var fruitsDaily = Set<String>()
fruitsDaily.insert("Apple")
fruitsDaily.insert("Kiwi")
fruitsDaily.insert("Orange")


// Union
let union = fruits.union(fruitsDaily)
print(union)


// Intersection
let intersection = fruits.intersection(fruitsDaily)
print(intersection)


// Remove
fruits.remove("La France")
print(fruits)


// formUnion
fruits.formUnion(fruitsDaily)
print(fruits)

