
// Category: Arrays/hashmap 
// Level: Medium
// O(m * nlogn)
func group_Anagram(strs: [String]) -> [[String]]{
    // brute force
    // given two string, determine
    // now, it's an array of strings
    var dict: [String: [String]] = [:]
    
    for str in strs{
        // we sort the string
        let sortedStr = String(str.sorted())
        // add as key to the dict, then append the corresponding string
        dict[sortedStr, default: []].append(str)
    }
    
    //return the values 
    return Array(dict.values)
    
}



print(group_Anagram(strs: ["act", "pots", "tops", "cat", "stop", "hat"]))
print(group_Anagram(strs: ["x"])) // [["x"]]
print(group_Anagram(strs: [""])) // [[""]]

// dict version?
func group_Anagram(strs: [String]) -> [[String]]{
    
    var dict: [String: [String]] = [:]
    // mapping char count to list of anagrams
    
    for str in strs{
        // frequency array of 26 zeros
        var charCount = Array(repeating: 0, count: 26) // a...z
        
        for char in str {
            if let ascii = char.asciiValue {
                // want to map a to index 0 and z to index 25
                // for example: a..80 - a..80 = 0
                // b..81 - a..80 = 1
                let index = Int(ascii - Character("a").asciiValue!)
                charCount[index] += 1
            }
        }
        
        var key = ""
        for i in 0..<26 {
            key += "\(charCount[i])#"
        }
        
        if dict[key] != nil{
            dict[key]!.append(str)
        }else{
            dict[key] = [str]
        }
        
    }
    return Array(dict.values)
}
