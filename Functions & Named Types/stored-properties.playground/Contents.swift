
// MARK: willSet, didSet

struct User {
    var email: String
    var password: String {
        willSet {
            print("変更前：\(password)／変更後：\(newValue)")
        }
        didSet {
            if password.count < 8 {
                print("パスワードは8文字以上で入力してください")
                password = oldValue
            }
        }
    }
}
var user = User(email: "sample@gmail.com", password: "sample1234")
user.password = "newsample1234"
user.password = "sample"

