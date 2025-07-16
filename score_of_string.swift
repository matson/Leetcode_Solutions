

// Category: ASCII
// use unicodeScalars 

// O(n) 
func scoreOfString(s: String) -> Int {
    
    var sum = 0
    let scalars = Array(s.unicodeScalars)
    
    for i in 0 ..< scalars.count - 1 {
        let diff = abs(Int(scalars[i].value) - Int(scalars[i + 1].value))
        sum += diff
    }
    return sum
}

print(scoreOfString(s: "hello")) // 13
print(scoreOfString(s: "zaz")) // 50
