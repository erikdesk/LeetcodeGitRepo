// [10] move-zeroes(283)
// https://leetcode.com/problems/move-zeroes/

import Foundation

var nums10 = [0,1,0,3,12]
moveZeroes(&nums10)
print(nums10)
func moveZeroes(_ nums: inout [Int]) {
    var n = 0
    for num in nums {
        if num != 0 {
            nums[n] = num
            n += 1
        }
    }
    for m in n..<nums.count {
        nums[m] = 0
    }
}
