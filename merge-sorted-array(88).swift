// [43] merge-sorted-array(88)
// https://leetcode.com/problems/merge-sorted-array/

import Foundation

var nums1 = [1,2,3,0,0,0]
merge(&nums1, 3, [2,5,6], 3)
print(nums1)
func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    nums1 = Array(nums1[0..<m])
    nums1.append(contentsOf: Array(nums2[0..<n]))
    nums1.sort()
    
}
