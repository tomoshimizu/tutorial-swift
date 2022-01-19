// Class: 参照型
class Student {
    let studentNum: Int
    var score: Int
    
    init(studentNum: Int, score: Int) {
        self.studentNum = studentNum
        self.score = score
    }
    
    func passed(lowestPass: Int = 50) -> Bool {
        score >= lowestPass
    }
    
    func earnExtraCredit() {
        score += 10
    }
}

let tomo = Student(studentNum: 1, score: 45)
tomo.passed()
tomo.earnExtraCredit()
tomo.passed()

