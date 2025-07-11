
// O(n^2)
func containsDuplicate2(nums: [Int], k: Int) -> Bool {
    
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

func containsDuplicate2(nums: [Int], k: Int) -> Bool {
    
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
