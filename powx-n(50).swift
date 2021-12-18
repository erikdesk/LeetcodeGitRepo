// [05] powx-n(50)
// https://leetcode.com/problems/powx-n/

import Foundation

print(myPow(2,10))
func myPow(_ x: Double, _ n: Int) -> Double {
    var answer = 1.0;
    var num = n;
    
    if n < 0 {
        num = -1 * num;
    }
    
    var y = x
    while num > 0 {
        if num % 2 == 0 {
            y = y * y;
            num = num / 2;
        } else {
            answer = answer * y;
            num = num - 1;
        }
    }
    
    if (n < 0) {
        return 1.0 / answer;
    }
    
    return answer;
}
