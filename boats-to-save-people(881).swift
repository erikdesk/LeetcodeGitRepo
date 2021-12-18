// [09] boats-to-save-people(881)
// https://leetcode.com/problems/boats-to-save-people

import Foundation

print(numRescueBoats([3,2,2,1], 3))
func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    var p = people
    p.sort()
    
    var left = 0
    var right = p.count - 1
    var numOfBoats = 0
    
    while left <= right {
        if left == right {
            numOfBoats += 1
            break
            
        } else if p[left] + p[right] <= limit {
            left += 1
            
        }
        right -= 1
        numOfBoats+=1
        
    }
    return numOfBoats
}
