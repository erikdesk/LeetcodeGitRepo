// [01] contains-duplicate(217)
// https://leetcode.com/problems/contains-duplicate/

import Foundation

print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
func containsDuplicate(_ nums: [Int]) -> Bool {
    var dict = [Int:Int]()

    for num in nums {
        if dict[num] != nil {
            dict[num]! += 1
            return true
        }
        dict[num] = 1
    }
    return false
}
