

// Level: Medium 
// Category: sliding window
// O(n) 
func lengthOfLongestSubstring(s: String) -> Int {
    
    var arr_s = Array(s)
    var left: Int = 0
    var length: Int = 0
    var set = Set<Character>()
    
    for r in 0..<arr_s.count {
        while set.contains(arr_s[r]){
            set.remove(arr_s[left])
            left += 1
        }
        set.insert(arr_s[r])
        length = max(length, r - left + 1)
    }
    return length
}

func lengthOfLongestSubstring(s: String) -> Int {
    var arr_s = Array(s)
    var set = Set<Character>()
    var length: Int = 0
    // brute force
    for i in 0..<arr_s.count{
        set.removeAll() // reset the set for next iteration
        for j in i..<arr_s.count{
            if set.contains(arr_s[j]){
                break
            }
            set.insert(arr_s[j])
        }
        length = max(length, set.count)
    }
    
    return length
    
}

print(lengthOfLongestSubstring(s: "zxyzxyz")) // 3
print(lengthOfLongestSubstring(s: "xxxx")) // 1
