// [15] valid-mountain-array(941)
// https://leetcode.com/problems/valid-mountain-array/

import Foundation

print(validMountainArray([0,3,2,1]))
func validMountainArray(_ arr: [Int]) -> Bool {
    if arr.count < 3 {
        return false
    }

    var n = 1
    while n < arr.count && arr[n] > arr[n-1] {
        n += 1
    }

    if n == 1 || n == arr.count {
        return false
    }

    while n < arr.count && arr[n] < arr[n-1] {
        n += 1
    }

    return n == arr.count
}
