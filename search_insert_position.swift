
// Category: Binary Search 

func searchInsert(nums: [Int], target: Int) -> Int {
    // binary search:
    var n: Int = nums.count
    //left
    var left: Int = 0 // first index
    //right
    var right = n - 1
    // if the target is present
    while left <= right{
        var middle = left + (right - left) / 2
        if nums[middle] == target{
            return middle
        }
        else if nums[middle] < target{
            left = middle + 1
        }else{
            right = middle - 1
            
        }
    }
    //else return the left
    return left
    
}

 // O(nlogn)
func searchInsertPosition(nums: [Int], target: Int) -> Int {
    var arr = nums
    // brute force
    
    for i in 0..<nums.count{
        if target == nums[i]{
            return i
        }
    }
    
    // if not already present
    arr.append(target)
    arr.sort()
    for j in 0..<arr.count{
        if target == arr[j]{
            return j
        }
    }
    return -1
}

// test cases
print(searchInsert(nums: [1,3,5,6], target: 5)) // should be 2
print(searchInsert(nums: [1,3,5,6], target: 2)) // should be 1
