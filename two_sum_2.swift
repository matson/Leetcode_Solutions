// Level: Medium 
// Category: Two pointer 
// O(n)
func twoSum(nums: [Int], target: Int) -> [Int]{
    
    // two pointer
    var left: Int = 0
    var right: Int = nums.count - 1
    
    while left < right {
        if nums[left] + nums[right] > target {
            right -= 1
        }
        else if nums[left] + nums[right] < target{
            left += 1
        }else{
            return [left+1, right+1]
        }
    }
    return []
}

print(twoSum(nums: [1,2,3,4], target: 3)) // [1,2]

func twoSum(nums: [Int], target: Int) -> [Int]{
    
    // brute force
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            if nums[i] + nums[j] == target{
                return [(i+1),(j+1)]
            }
        }
    }
    return []
}
