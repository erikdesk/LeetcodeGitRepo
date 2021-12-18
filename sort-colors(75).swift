// [42] sort-colors(75)
// https://leetcode.com/problems/sort-colors/

import Foundation

var nums42 = [2,0,2,1,1,0]
sortColors(&nums42)
print(nums42)
func sortColors(_ nums: inout [Int]) {
    var low = 0
    var mid = 0
    var high = nums.count - 1
    
    while mid <= high {
        if nums[mid] == 0 {
            let tmp = nums[low]
            nums[low] = nums[mid]
            nums[mid] = tmp
            low += 1
            mid += 1
            
        } else if nums[mid] == 1 {
            mid += 1
            
        } else {
            let tmp = nums[mid]
            nums[mid] = nums[high]
            nums[high] = tmp
            high -= 1
        }
    }
}
