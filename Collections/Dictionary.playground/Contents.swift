
// Create Dictionary
var profile = [
    "name" : "Tomo",
    "profession" : "Engineer",
    "country" : "Japan",
    "city" : "Tokyo"
]
print(profile)

// Add or Update Value
profile["age"] = "25"
profile.updateValue("Australia", forKey: "country")
print(profile)

// Remove Item
profile.removeValue(forKey: "country")
profile["city"] = nil
print(profile)

// Iterate
for (key, value) in profile {
    print("\(key): \(value)")
}
