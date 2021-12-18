// [46] longest-substring-without-repeating-characters(3)
// https://leetcode.com/problems/longest-substring-without-repeating-characters/
// MARK: Time Limit Exceeded

import Foundation

print(lengthOfLongestSubstring("abcabcbb"))
func lengthOfLongestSubstring(_ s: String) -> Int {
    var dict = [String:Int]()
    
    var left = 0
    var right = 0
    var result = 0
    
    while left < s.count && right < s.count {
        let element = String(s[s.index(s.startIndex, offsetBy: right)])
        
        if dict[element] != nil {
            left = max(left, dict[element]! + 1)
        }
        dict[element] = right
        result = max(result, right - left + 1)
        right += 1
    }

    return result
}
