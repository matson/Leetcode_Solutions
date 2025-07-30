
// Category: tries
// Level: easy 
// O(n^2)
func countPrefixSuffixPairs(words: [String]) -> Int{
    // brute force
    var pairs: Int = 0
    
    for i in 0..<words.count{
        for j in i+1..<words.count{
            if isPrefixAndSuffix(str1: words[i], str2: words[j]){
                pairs += 1
            }
        }
    }
    
    return pairs
}


func isPrefixAndSuffix(str1: String, str2: String) -> Bool {
    // is prefix and suffix
    // is str1 bigger than str2?
    guard str1.count <= str2.count else { return false}
    return str2.hasPrefix(str1) && str2.hasSuffix(str1)
}

print(countPrefixSuffixPairs(words: ["a","aba","ababa","aa"])) // 4
print(countPrefixSuffixPairs(words: ["pa","papa","ma","mama"])) // 2
