
// Category: stack
// Level: Medium

// O(n)
func evalRPN(tokens: [String]) -> Int {
    
    var stack: [Int] = []
    
    for c in tokens{
        if c == "+"{
            stack.append(stack.popLast()! + stack.popLast()!)
        } else if c == "-" {
            // since order matters:
            var a = stack.popLast()!
            var b = stack.popLast()!
            stack.append(b-a)
        } else if c == "*" {
            stack.append(stack.popLast()! * stack.popLast()!)
        } else if c == "/" {
            // since order matters:
            var a = stack.popLast()!
            var b = stack.popLast()!
            stack.append(Int(b/a))
            
        } else{
            stack.append(Int(c)!)
        }
    }
    return stack.last!
}
print(evalRPN(tokens: ["1","2","+","3","*","4","-"])) // 5
print(evalRPN(tokens: ["4","13","5","/","+"])) // 6
