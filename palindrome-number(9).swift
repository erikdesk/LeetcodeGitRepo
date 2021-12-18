// [49] palindrome-number(9)
// https://leetcode.com/problems/palindrome-number/

import Foundation

print(isPalindrome(-121))
func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
        
    } else if x % 10 == 0 && x != 0 {
        return false
        
    } else {
        var n = x
        var reversedNumber = 0
        
        while n > reversedNumber {
            reversedNumber = reversedNumber * 10 + (n % 10)
            n = n / 10
        }
        
        if n == reversedNumber {
            return true
            
        } else if n == reversedNumber / 10 {
            return true
            
        } else {
            return false
        }
    }
}
