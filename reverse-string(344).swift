// [40] reverse-string(344)
// https://leetcode.com/problems/reverse-string/

import Foundation

var s: [Character] = ["h","e","l","l","o"]
reverseString(&s)
print(s)
func reverseString(_ s: inout [Character]) {
    var left = 0
    var right = s.count - 1
    
    while left < right {
        let tmp = s[left]
        s[left] = s[right]
        s[right] = tmp
        left += 1
        right -= 1
    }
}
