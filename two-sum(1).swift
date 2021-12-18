// [44] two-sum(1)
// https://leetcode.com/problems/two-sum/

import Foundation

print(twoSum([2,7,11,15],9))
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int:Int]()
    
    for i in 0..<nums.count {
        let goal = target - nums[i]
        
        if dict[goal] != nil {
            return [dict[goal]!, i]
        }
        dict[nums[i]] = i
    }
    return []
}
