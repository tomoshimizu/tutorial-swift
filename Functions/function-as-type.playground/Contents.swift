import UIKit

/*
 MARK: 関数を他の関数のパラメーターとして指定できる
 */

func betweenOneAndTen(number: Int) -> Bool {
    return number >= 1 && number <= 10
}

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

var numbers = [20, 19, 7, 12]

hasAnyMatches(list: numbers, condition: betweenOneAndTen)

