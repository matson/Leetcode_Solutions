

// * Binary Search *
// will be sorted order always type problems 
// O(n) -> O(log n)
// Level: easy 
func binarySearch(nums: [Int], target: Int) -> Int {
    
    var right: Int = nums.count - 1 // right
    var left: Int = 0 // // left
    
    while left <= right {
        var middle: Int = (right + left) / 2 // middle
        // if value is less than target
        if target > nums[middle]{
            left = middle + 1
        } else if target < nums[middle]{
            right = middle - 1
        }else{
            return middle
        }
    }
    return -1
}

print(binarySearch(nums: [-1,0,2,4,6,8], target: 4)) // 3
print(binarySearch(nums: [-1,0,2,4,6,8], target: 3)) // -1
