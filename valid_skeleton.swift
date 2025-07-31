

// wildcard problem
// maybe a trie?
// pattern
// this was on a coding assessment 

func validSkeletons(word: String, skeleton: [String]) -> [String]{
    let arr_w = Array(word) // make into array
    var list: [String] = []
    
    for s in skeleton{
        let arr_s = Array(s) // make each into an array of characters
        
        // 1). count should be the same
        if arr_s.count != arr_w.count{
            continue // loop to not execute bottom
        }
        
        // 2). First and last letters
        if arr_s[0] == "-" || arr_s[arr_s.count - 1] == "-" {
            continue
        }
        
        // 3). consecutive dashes 
        if s.contains("--") { continue }
        
        // 4). all non-dashes must match
        var matches = true
        for i in 0..<arr_s.count {
            if arr_s[i] != "-" && arr_s[i] != arr_w[i] {
                matches = false
                break
            }
        }
        
        if !matches {
            continue
        }
    
        list.append(s)
    }
    return list
}




let skeletons = [
  "he-lo",   // valid
  "-ello",   // invalid: starts with dash
  "he--o",   // invalid: lacks internal literal letter (only edges)
  "-ell-",   // invalid: edges are dashes
  "h-llo",   // valid: edges letters, internal 'l'
  "hel-o",   // valid: edges letters, internal 'l' and 'e'
  "hello",   // valid: all letters
  "h----o",  // invalid: internal wildcards only
  "he-l-",   // invalid: ends with dash
]

print(validSkeletons(word: "hello", skeleton: skeletons))
