
// O(n) solution, even though it will not look like it 
// Level: Medium
// Category: sliding window
// Note: with a variable window 
func minSubArrayLen(nums: [Int], target: Int) -> Int{
    
    // sliding window
    var total: Int = 0
    var left: Int = 0
    var minLength = Int.max
    
    for r in 0..<nums.count{
        total += nums[r]
        while total >= target {
            minLength = min(minLength, r - left + 1)
            total -= nums[left]
            left += 1
        }
    }
    return minLength == Int.max ? 0 : minLength
}

print(minSubArrayLen(nums: [2,3,1,2,4,3], target: 7)) // 2
