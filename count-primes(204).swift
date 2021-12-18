// [11] count-primes(204)
// https://leetcode.com/problems/count-primes/

import Foundation

print(countPrimes(10))
func countPrimes(_ n: Int) -> Int {
    if n < 2 {
        return 0
    }
    
    var isPrime = [Bool](repeating: true, count: n)
    isPrime[0] = false
    isPrime[1] = false
    
    for m in 2..<Int(ceil(sqrt(Double(n)))) {
        if isPrime[m] {
            for multiples in stride(from: m*m, to: n, by: m) {
                isPrime[multiples] = false
            }
        }
    }
    return isPrime.reduce(0) { $0 + ($1 ? 1 : 0) }
}
