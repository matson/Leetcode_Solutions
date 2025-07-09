
// Category: hashmap 
// O(n^2)
func first_unique_character(s: String) -> Int {
    
    // brute force
    var word = Array(s)
    
    for i in 0..<word.count{
        var isUnique = true
        for j in 0..<word.count{
            if i != j && word[i] == word[j]{
                isUnique = false
                break
            }
        }
        if isUnique {
            return i
        }
    }
    return -1
}
print(first_unique_character(s: "aabb")) // -1
print(first_unique_character(s: "leetcode")) // 0

// O(n)
func first_unique_character(s: String) -> Int {
    
    var word = Array(s)
    var dict: [Character: Int] = [:]
    // make a dictionary
    
    // store character to index
    for i in 0..<word.count{
        dict[word[i], default: 0] += 1
    }
    
    // second pass to find unique char
    for j in 0..<word.count {
        // word[j] = key
        if dict[word[j]] == 1{
            return j
        }
    }
   
    return -1
}
print(first_unique_character(s: "aabb")) // -1
print(first_unique_character(s: "leetcode")) // 0

