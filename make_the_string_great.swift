

// Category: stack 
// Level: easy
// O(n) 
func makeTheStringGreat(s: String) -> String {
    
    // stack
    var stack: [Character] = []
    
    for char in s{
        if let last = stack.last,
           (char.lowercased() == last.lowercased() && char != last) {
            stack.removeLast()
        }else{
            stack.append(char)
        }
    }
    return String(stack)
}


print(makeTheStringGreat(s: "leEeetcode")) // "leetcode"
print(makeTheStringGreat(s: "abBAcC")) // ""
print(makeTheStringGreat(s: "s")) // "s"
print(makeTheStringGreat(s: "Pp")) // ""
