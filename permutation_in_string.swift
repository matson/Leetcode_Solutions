



// Level: Medium
// Category: sliding window 

// O(n^2)
func permutationInString(s1: String, s2: String) -> Bool {
    
    // brute force
    let sorted1 = s1.sorted()
    let arr_s = Array(s2)
    
    for i in 0..<arr_s.count{
        for j in i..<arr_s.count{
            let subString = String(arr_s[i...j]).sorted()
            if subString == sorted1 { // array vs array
                return true
            }
        }
    }
    return false
}

print(permutationInString(s1: "abc", s2: "lecabee")) // true
print(permutationInString(s1: "abc", s2: "lecaabee")) // false

