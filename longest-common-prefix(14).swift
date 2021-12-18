// [41] longest-common-prefix(14)
// https://leetcode.com/problems/longest-common-prefix/

import Foundation

print(longestCommonPrefix(["flower","flow","flight"]))
func longestCommonPrefix(_ strs: [String]) -> String {
    if strs.count == 1 {
        return strs[0]
    } else {
        var prefix = strs[0]
        for i in 1...strs.count - 1 {
            while !strs[i].hasPrefix(prefix) {
                prefix.remove(at: prefix.index(prefix.endIndex, offsetBy: -1))
                if prefix.isEmpty {
                    return ""
                }
            }
        }
        return prefix
    }
}
