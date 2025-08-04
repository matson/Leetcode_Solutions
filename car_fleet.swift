
// Category: stack 
// Level: Medium
// O(n)
//// I hate this problem
func carFleet(p: [Int], s: [Int], t: Int) -> Int {
    // use a stack
    var stack : [Double] = []
    var pair = zip(p, s).map { ($0, $1) } // make a pair of speed and positions
    pair.sort { $0.0 > $1.0 } // sort in decending order position
    
    // iterate in reverse order
    for (p,s) in pair {
        // calculate time
        stack.append(Double((t - p) / s)) // target - position / speed
        if stack.count >= 2 && stack.last! <= stack[stack.count - 2]{
            stack.removeLast()
        }
    }
    return stack.count
}

print(carFleet(p: [1,4], s: [3,2], t: 10)) // 1
print(carFleet(p: [4,1,0,7], s: [2,2,1,1], t: 10)) // 3
