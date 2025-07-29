

// Category: two pointer
// Level: HARD
// O(n)
func trapWater(height: [Int]) -> Int {
    // max area of water again
    // but this time, it's the total
    // more params: there's depth?
    // for problems like these, make sure you have a formula down
    if height.isEmpty {
        return 0
    }
    
    var l = 0, r = height.count - 1
    var leftMax = height[l], rightMax = height[r]
    var res = 0
    
    while l < r {
        if leftMax < rightMax {
            l += 1
            leftMax = max(leftMax, height[l])
            res += leftMax - height[l]
        } else {
            r -= 1
            rightMax = max(rightMax, height[r])
            res += rightMax - height[r]
        }
    }
    return res
}

print(trapWater(height: [0,2,0,3,1,0,1,3,2,1])) // 9
