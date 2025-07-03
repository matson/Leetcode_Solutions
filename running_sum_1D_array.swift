// Category: prefix sum

// king way: O(n)
func running_Sum(nums: [Int]) -> [Int] {
    
    // instead of recomputing the sum from scratch for each index, you keep a running total
    var arr_t: [Int] = []
    var total: Int = 0
    
    for num in nums {
        // update total each time
        total += num
        // append final value to arr
        arr_t.append(total)
    }
    
    return arr_t
}

print(running_Sum(nums: [1,2,3,4])) // should be [1,3,6,10]
print(running_Sum(nums: [1,1,1,1,1])) // should be [1,2,3,4,5]

// brute force: O(n^2)
func running_Sum(nums: [Int]) -> [Int]{
   // brute force way
   var arr_t: [Int] = []
   
   for i in 0..<nums.count {
       var total: Int = 0
       // reduce function
       for j in 0...i{
           total += nums[j]
       }
       arr_t.append(total)
   }
   return arr_t
}

print(running_Sum(nums: [1,2,3,4])) // should be [1,3,6,10]
print(running_Sum(nums: [1,1,1,1,1])) // should be [1,2,3,4,5]
