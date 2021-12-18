// [03] robot-return-to-origin(657)
// https://leetcode.com/problems/robot-return-to-origin/

import Foundation

print(judgeCircle("UD"))
func judgeCircle(_ moves: String) -> Bool {
    var x = 0
    var y = 0

    for move in moves {
        if move == "U" {
            y += 1
        } else if move == "R" {
            x += 1
        } else if move == "D" {
            y -= 1
        } else if move == "L" {
            x -= 1
        }
    }
    return x == 0 && y == 0
}
