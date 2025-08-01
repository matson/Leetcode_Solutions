

// O(n)
// Level: Medium
// Category: Sliding window 
func characterReplacement(s: String, k: Int) -> Int {
    
    // k - fixed size
    // sliding window with comparing frequencies
    var arr_s = Array(s)
    var count: [Character: Int] = [:] // for frequencies
    var left: Int = 0
    var result: Int = 0
    var maxf: Int = 0
    
    for r in 0..<arr_s.count{
        // count the freq
        count[arr_s[r], default: 0] += 1
        
        // calculate max freq
        maxf = max(maxf, count[arr_s[r]]!)
        
        // while the window is valid
        while ( r - left + 1) - maxf > k{
            count[arr_s[left], default: 0] -= 1
            // update left pointer
            left += 1
        }
        // get the result
        result = max(result, r - left + 1)
        
    }
    return result
}

print(characterReplacement(s: "XYYX", k: 2)) // 4
print(characterReplacement(s: "AAABABB", k: 1)) // 5
