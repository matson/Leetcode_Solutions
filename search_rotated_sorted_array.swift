// Category: binary search 
// Level: Medium
// O(logn)
func search(nums: [Int], target: Int) -> Int {
    
    var left: Int = 0
    var right: Int = nums.count - 1
    
    // find the pivot
    while left < right {
        var middle = (right + left) / 2
        if nums[middle] > nums[right]{
            left = middle + 1
        }else{
            right = middle // review this part here
        }
    }
    
    let pivot = left
    
    func binarySearch(left: Int, right: Int) -> Int{
        
        var l = left, r = right
        
        while l <= r {
            let mid = (r + l) / 2
            
            if target > nums[mid]{
                l = mid + 1
            }else if target < nums[mid]{
                r = mid - 1
            }else{
                return mid
            }
        }
        return -1
    }
    
    // use this to run binary on both bounds
    // 1st half
    let result = binarySearch(left: 0, right: pivot - 1)
    if result != -1{
        return result
    }
    
    // 2nd half
    return binarySearch(left: pivot, right: nums.count - 1)
}

func search(nums: [Int], target: Int) -> Int {
   
   // brute force
   for i in 0..<nums.count{
       if target == nums[i]{
           return i
       }
   }
   return -1
}

print(search(nums: [3,4,5,6,1,2], target: 1)) // 4
print(search(nums: [3,5,6,0,1,2], target: 4)) // -1
