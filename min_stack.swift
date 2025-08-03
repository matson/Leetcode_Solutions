
// Category: stacks
// Level: Medium

// O(1)
// using two stacks
class MinStack {
    
    private var stack: [Int] = []
    private var minStack: [Int] = []
    
    init(){}
    
    func push(val: Int){
        stack.append(val)
        // compare input with the last value added to stack 
        let minVal = min(val, minStack.last ?? val)
        minStack.append(minVal)
    }
    
    func pop(){
        stack.popLast()
        minStack.popLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int{
        return minStack.last!
    }
}




// brute force
class MinStack {
    private var stack: [Int] = []
    
    init() {
        
    }
    func push(_ val: Int) {
        // appends val
        stack.append(val)
    }
    
    func pop() {
        // removes the last
        stack.removeLast()
    }
    
    func top() -> Int {
        // returns the last
        return stack.last!
    }
    
    func getMin() -> Int {
        return stack.min()!
    }
}
