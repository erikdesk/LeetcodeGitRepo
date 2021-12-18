// [48] add-binary(67)
// https://leetcode.com/problems/add-binary/

import Foundation

print(addBinary("1010", "1011"))
func addBinary(_ a: String, _ b: String) -> String {
    var result: [String] = []
    var carry = 0
    var i = a.count - 1
    var j = b.count - 1

    while i >= 0 || j >= 0 || carry != 0 {
        var total = carry

        if i >= 0 {
            total += Int(String(a[a.index(a.startIndex, offsetBy: i)]))!
            i -= 1
        }
        if j >= 0 {
            total += Int(String(b[b.index(b.startIndex, offsetBy: j)]))!
            j -= 1
        }

        result.append(String(total % 2))
        carry = Int(total / 2)
    }

    return result.reversed().joined(separator: "")
}
