// [39] kids-with-the-greatest-number-of-candies(1431)
// https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/

import Foundation

print(kidsWithCandies([2,3,5,1,3], 3))
func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    
    var arr = [Bool](repeating: false, count: candies.count)
    
    for i in 0..<arr.count {
        if (candies[i] + extraCandies >= candies.max()!) {
            arr[i] = true
        }
    }
    
    return arr;
}
