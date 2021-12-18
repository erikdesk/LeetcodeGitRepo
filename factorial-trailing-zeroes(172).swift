// [21] factorial-trailing-zeroes(172)
// https://leetcode.com/problems/factorial-trailing-zeroes/

import Foundation

print(trailingZeroes(5))
func trailingZeroes(_ n: Int) -> Int {
    var count = 0
    var x = n
    
    while x  > 0 {
        x /= 5
        count += x
    }
    
    return count
}
