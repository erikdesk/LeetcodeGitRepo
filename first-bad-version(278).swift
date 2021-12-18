// [45] first-bad-version(278)
// https://leetcode.com/problems/first-bad-version/

import Foundation

print(firstBadVersion(5))
func firstBadVersion(_ n: Int) -> Int {
    var left = 1
    var right = n

    while left < right {
        let mid = left + Int((right - left) / 2)
        
        if !isBadVersion(mid) {
            left = mid + 1
        } else {
            right = mid
        }
    }
    
    return left
}
func isBadVersion(_ version: Int) -> Bool {
    return version == 4
}
