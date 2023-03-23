class Student {
    let name: String
    var grade: Int
    var pet: String?
    var libraryBooks: [String]
    
    init(name: String, grade: Int, pet: String? = nil, libraryBooks: [String]) {
        self.name = name
        self.grade = grade
        self.pet = pet
        self.libraryBooks = libraryBooks
    }
  
    func getPassStatus(lowestPass: Int = 50) -> Bool {
        grade >= lowestPass
    }
  
    func earnExtraCredit() {
        grade += 10
    }
}

let chris = Student(name: "Chris", grade: 49, pet: "Mango", libraryBooks: ["The Book of Atrus", "Living by the Code", "Mastering Git"])
let sam = Student(name: "Sam", grade: 99, pet: nil, libraryBooks: ["Mastering Git"])
let catie = Student(name: "Catie", grade: 75, pet: "Ozma", libraryBooks: ["Hogfather", "Good Omens"])
let andrea = Student(name: "Andrea", grade: 88, pet: "Kitten", libraryBooks: ["Dare to Lead", "The Warrior's Apprentice"])
let students = [chris, sam, catie, andrea]



// forEach
students.forEach { (student) in
    student.earnExtraCredit()
}

// map
let grade = students.map { // (student) -> Int in
    $0.grade
}
grade

// compactMap
let pets = students.compactMap { // (student) -> String? in
    $0.pet
}
pets

// flashMap
let libraryBooks = students.flatMap { (student) -> [String] in
    student.libraryBooks
}
print(libraryBooks)
