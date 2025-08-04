



// Category: Stack
// Level: Medium

// O(n)
func dailyTemp(temps: [Int]) -> [Int] {
    
    var stack: [Int] = [] // # pair [temp, index] -- tuple in this case
    var result = Array(repeating: 0, count: temps.count) // [0,0,0,0]
    
    for i in 0..<temps.count{
        let t = temps[i] // temperature at index i
        while !stack.isEmpty && temps[i] > temps[stack.last!] {
            let prevIdx = stack.removeLast()
            result[prevIdx] = i - prevIdx
        }
        stack.append(i)
    }
    return result
}

print(dailyTemp(temps: [30,38,30,36,35,40,28])) // [1,4,1,2,1,0,0]
print(dailyTemp(temps: [22,21,20])) // [0,0,0]

// brute force
func dailyTemp(temps: [Int]) -> [Int] {
    
    var result = Array(repeating: 0, count: temps.count) // [0,0,0,0]
    
    
    // brute force:
    for i in 0..<temps.count{
        for j in i+1..<temps.count{
            if temps[i] < temps[j]{
               result[i] = j - i
               break // first warmer day
            }
        }
    }
    
    return result
}

print(dailyTemp(temps: [30,38,30,36,35,40,28])) // [1,4,1,2,1,0,0]
print(dailyTemp(temps: [22,21,20])) // [0,0,0]
