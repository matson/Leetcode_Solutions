
// O(n^2)
// Category: Two pointer
// Level: Medium 
func threeSum(nums: [Int]) -> [[Int]]{
    
         var res = [[Int]]()
         var nums = nums.sorted()

         for i in 0..<nums.count {
             let a = nums[i]
             // no further triplets possible once a is positive
             if a > 0 {
                 break
             }
             // skip duplicate a values so we don't process the same first element twice
             if i > 0 && a == nums[i - 1] {
                 continue
             }

             var l = i + 1, r = nums.count - 1
             while l < r {
                 let threeSum = a + nums[l] + nums[r]
                 if threeSum > 0 {
                     r -= 1
                 } else if threeSum < 0 {
                     l += 1
                 } else {
                     res.append([a, nums[l], nums[r]])
                     l += 1
                     r -= 1
                     while l < r && nums[l] == nums[l - 1] {
                         l += 1
                     }
                 }
             }
         }
         return res
     
}

// O(n^3) 
func threeSum(nums: [Int]) -> [[Int]]{
    
    // brute force
    var result = Set<[Int]>() // make a set
    
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            for k in j+1..<nums.count{
                if nums[i] + nums[j] + nums[k] == 0{
                    let triplet = [nums[i], nums[j], nums[k]].sorted() // need to sort
                    result.insert(triplet)
                }
            }
        }
    }
    return Array(result)
}

print(threeSum(nums: [-1, 0, 1, 2, -1, -4])) // [[-1,-1,2],[-1,0,1]]
