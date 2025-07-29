
/* 
question: find the length of the longest subarray,
with the same value in each position
*/

// O(n) 
// Category: sliding window variable length
// Level: Easy
func longestSubArr(nums: [Int]) -> Int {
    
    var maxLength: Int = 0
    var left: Int = 0

    for r in 0..<nums.count{
        if nums[left] != nums[r] {
            left = r
        }
        maxLength = max(maxLength, r - left + 1)
    }
    return maxLength
    
    
}

func longestSubArr(nums: [Int]) -> Int {
  
    var maxLength: Int = 1
    var currentLength: Int = 1
    
    for i in 1..<nums.count{
        if nums[i] == nums[i-1] {
            currentLength += 1
        }else{
            currentLength = 1
        }
        maxLength = max(maxLength, currentLength)
    }
    return maxLength
}

print(longestSub(nums: [4,2,2,3,3,3]))
