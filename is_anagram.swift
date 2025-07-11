// Category: hashmap 
// O(n)
// in my mind this is the easy way to do it
func isAnagram(s: String, t: String) -> Bool{
    
    var arr_s = Array(s)
    var arr_t = Array(t)
    
    // this is the easy way for me
    var dict1: [Character: Int] = [:]
    var dict2: [Character: Int] = [:]
    
    for i in 0..<arr_s.count {
        dict1[arr_s[i], default: 0] += 1
    }
    
    for j in 0..<arr_t.count {
        dict2[arr_t[j], default: 0] += 1
    }
    
    return dict1 == dict2
    
}
