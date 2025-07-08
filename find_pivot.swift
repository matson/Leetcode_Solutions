
// O(n) 
func find_pivot_index(nums: [Int]) -> Int {
    // get total running sum
    // subtract
    // compare
    var total = nums.reduce(0, +)
    var leftSum = 0
    
    for i in 0..<nums.count{
        let rightSum = total - leftSum - nums[i] // the so called pivot value
        if leftSum == rightSum {
            return i
        }
        leftSum += nums[i]
    }
    
    return -1
}

print(find_pivot_index(nums: [1,7,3,6,5,6]))

// Brute force
// O(n^2)
