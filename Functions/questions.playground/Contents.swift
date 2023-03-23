import UIKit

/*
 📙Last Digit
   Write a function that takes an Int and returns it's last digit.
   Name the function lastDigit.
   Use _ to ignore the external parameter name.
 
 > lastDigit(12345)
 > 5
 */
func lastDigit(_ number: Int) -> Int {
    /*
     1. 10で割る → 1の位の値が出てくる
     2. 文字列に変換して最後の文字を返す
     */
    return number % 10
}
lastDigit(12345)


/*
 📙First Numbers
   Write a function named first that takes an Int named N and returns an array with the first N numbers starting from 1.
   Use _ to ignore the external parameter name.
 
 > first(3)
 > [1, 2, 3]
 */
func first(_ N: Int) -> [Int] {
    var numbers = [Int]()
    
    for number in 1...N {
        numbers.append(number)
    }
    
    return numbers
}
first(3)
