// Category: stacks 
// Level: Easy
// O(n)
// stack way
func isValid(s: String) -> Bool {
    
    var dict: [Character: Character] = [")" : "(", "}" : "{", "]" : "["]
    var stack: [Character] = []
    
    for char in s{
        // if the char is a closing bracket
        if let open = dict[char]{
            if !stack.isEmpty && stack.last! == open {
                // if the stack is not empty, and the last one is an open
                // remove from stack
                stack.popLast()
            } else{
                return false
            }
        } else{
            // if it's an opening one
            stack.append(char)
        }
    }
    
    
    return stack.isEmpty
    
}

print(isValid1(s: "[]")) // true
print(isValid1(s: "([{}])")) //true
print(isValid1(s: "[(])")) //false

// brute force
func isValid(s: String) -> Bool {
    
    var s = s
    while s.contains("()") || s.contains("{}") || s.contains("[]"){
        s = s.replacingOccurrences(of: "()", with: "")
        s = s.replacingOccurrences(of: "[]", with: "")
        s = s.replacingOccurrences(of: "{}", with: "")
    }
    return s.isEmpty
}

print(isValid(s: "[]")) // true
print(isValid(s: "([{}])")) //true
print(isValid(s: "[(])")) //false
