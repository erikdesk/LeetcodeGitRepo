// [04] missing-number(268)
// https://leetcode.com/problems/missing-number/

import Foundation

print(missingNumber([9,6,4,2,3,5,7,0,1]))
func missingNumber(_ nums: [Int]) -> Int {
    let currentSum = nums.reduce(0) { $0 + $1 }
    let n = nums.count
    let intendedSum = n * (n + 1) / 2

    return Int(intendedSum - currentSum)
}
