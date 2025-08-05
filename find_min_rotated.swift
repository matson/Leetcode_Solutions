

// Category: binary search
// Level: Medium 
// O(logn)
// this one is fun
func findMin(nums: [Int]) -> Int {
    
    var left: Int = 0
    var right: Int = nums.count - 1
    var result: Int = nums[left]
    
    while left <= right{
        // if its sorted
        if nums[left] < nums[right]{
            result = min(result, nums[left])
            break
        }
        var middle = (right + left) / 2
        result = min(result, nums[middle])
        // left sorted portion
        if nums[middle] >= nums[left]{
            left = middle + 1
        }else{
            // right sorted portion
            right = middle - 1
        }
    }
    return result
}

// O(n)
func findMin(nums: [Int]) -> Int {
   
   // find the minimum element of the array
   // brute force
   return nums.min()!

}

print(findMin(nums: [3,4,5,6,1,2])) // 1
print(findMin(nums: [4,5,0,1,2,3])) // 0
