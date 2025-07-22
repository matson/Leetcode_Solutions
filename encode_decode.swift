

// Category: design and Strings
// Level: Medium 
// O(e) + O(d) = O(n)
func encode(s: [String]) -> String {
    // encode a list of strings to a string
    // would need to separate words
    // "neet#code"
    // we can't do that
    // we can do instead... 4#neet, 5#co#de
    
    var result: String = ""
    
    // go through each string
    for str in s{
        result += "\(str.count)#\(str)"
    }
    
    return result
    
}

func decode(s: String) -> [String] {
    // decode a list of strings to a string
    var result: [String] = []
    var i = s.startIndex
    
    while i < s.endIndex{
        // find the "#" -> position of #
        guard let j = s[i...].firstIndex(of: "#") else {break}
        // parse length
        let length = Int(s[i..<j])! // this would get the number
        // move the index past '#'
        let start = s.index(after: j)
        let end = s.index(start, offsetBy: length)
        // extract substring
        result.append(String(s[start..<end]))
        i = end
    }
    return result
    
    // know how to use these functions
}

var encoded = encode(s: ["neet", "code"])
print(decode(s: encoded))
print(encode(s: ["neet","code","love","you"]))
