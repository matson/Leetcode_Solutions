
// Category: stack 
// Level: Easy
// O(n)
func removeDuplicates(s: String) -> String {
    
    var stack: [Character] = [] // make a stack
    
    for char in s{
        if let last = stack.last, last == char {
            stack.popLast()
        }
        else{
            stack.append(char)
        }
    }
    
    return String(stack)
}

print(removeDuplicates(s: "abbaca")) // ca
print(removeDuplicates(s: "azxxzy")) // ay
