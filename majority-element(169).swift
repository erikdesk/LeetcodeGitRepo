// [02] majority-element(169)
// https://leetcode.com/problems/majority-element/

import Foundation

print(majorityElement([2,2,1,1,1,2,2]))
func majorityElement(_ nums: [Int]) -> Int {
    var dict = [Int:Int]()
    
    for num in nums {
        if dict[num] != nil {
            dict[num]! += 1
        } else {
            dict[num] = 1
        }
        
    }
    for num in nums {
        if dict[num]! > Int(floor(Double(nums.count / 2))) {
            return num
        }
    }
    return -1
}
