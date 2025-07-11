// Category: hashmap 
// O(n)
func findTheDiff(s: String, t: String) -> Character{
    // whatever letter that was not present in s
    
    var dictT: [Character: Int] = [:]

    for c in t {
        // add to dictionary
        dictT[c, default: 0] += 1
    }
    
    for c in s {
        // remove from dictionary
        dictT[c, default: 0] -= 1
    }
    
    // what's left? get that character
    for key in dictT{
        if key.value != 0{
            return key.key
        }
    }
    return "f"
}

print(findTheDiff(s: "abcd", t: "abcde"))
print(findTheDiff(s: "", t: "y"))
