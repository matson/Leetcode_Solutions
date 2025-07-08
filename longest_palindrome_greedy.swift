// Category: greedy 
// O(n) 
func longestPalindrome(s: String) -> Int{
    // make a dict with character count
    var charCount: [Character: Int] = [:]
    
    // populate
    for c in s {
        charCount[c, default: 0] += 1
    }
    
    var maxLength = 0
    var hasOdd = false
    
    // iterate through dict
    for count in charCount.values {
        maxLength += (count / 2) * 2
        if count % 2 == 1 {
            hasOdd = true
        }
    }
    return hasOdd ? maxLength + 1 : maxLength
}

print(longestPalindrome(s: "abccccdd"))
print(longestPalindrome(s: "a"))
