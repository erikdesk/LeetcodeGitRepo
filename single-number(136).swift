// [31] single-number(136)
// https://leetcode.com/problems/single-number/

import Foundation

print(singleNumber([4,1,2,1,2]))
func singleNumber(_ nums: [Int]) -> Int {
    let set = Set(nums)
    
    return 2 * set.reduce(0) { $0 + $1 } - nums.reduce(0) { $0 + $1 }
}
