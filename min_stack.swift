

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
