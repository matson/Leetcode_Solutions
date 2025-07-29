
// O(n)
// Category: sliding window
// Level: easy 
func containsDuplicate(nums: [Int], k: Int) -> Bool {
    // optimized way
    // sliding window
    var window = Set<Int>()
    var left: Int = 0
    
    for r in 0..<nums.count {
        if (r - left) > k {
            window.remove(nums[left])
            left += 1
        }
        if window.contains(nums[r]){
            return true
        }
        window.insert(nums[r])
    }
    return false
}

// "at most k elements"
func isWindow(nums: [Int], k: Int) -> Bool {
    
    var window = Set<Int>() // make a set
    var left: Int = 0
    
    for r in 0..<nums.count {
        if r - left + 1 > k { // if it exceeds window size
            window.remove(nums[left])
            left += 1 // move left up
        }
        if window.contains(nums[r]){
            return true
        }
        window.insert(nums[r]) // insert in the set
    }
    return false
    
}


// O(n^2)
func containsDuplicate(nums: [Int], k: Int) -> Bool {
    
    // brute force way
    // awful I know
    for i in 0..<nums.count{
        for j in i+1..<nums.count {
            if nums[i] == nums[j]{
                if abs(i - j) <= k{
                    return true
                }
            }
        }
    }
    return false
}

print(containsDuplicate2(nums: [1,2,3,1], k: 3)) // true
print(containsDuplicate2(nums: [1,0,1,1], k: 1)) // true
print(containsDuplicate2(nums: [1,2,3,1,2,3], k: 2)) // false

func containsDuplicate(nums: [Int], k: Int) -> Bool {
    
    // last seen
    var lastSeen: [Int: Int] = [:]
    
    for i in 0..<nums.count{
        let num = nums[i]
        // if there is a previous index match
        if let prevIndex = lastSeen[num]{
            if i - prevIndex <= k {
                return true
            }
        }
        // place in dict 
        lastSeen[num] = i
    }
    return false
}
