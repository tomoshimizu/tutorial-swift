
/*
 Structures：値型
 */
struct Student {
    let studentNum: Int
    let score: Int
}

struct Classroom {
    let subject: String
    var students: [Student]
    
    func getHighestScore() -> Int? {
        var scores: [Int] = []
        for student in students {
            scores.append(student.score)
        }
        return scores.max()
    }
}

// Instance
var classroom = Classroom(
    subject: "English",
    students: [
        Student(studentNum: 1, score: 80),
        Student(studentNum: 2, score: 70),
        Student(studentNum: 3, score: 90),
    ]
)
classroom.getHighestScore()
