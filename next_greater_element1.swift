

// Category: Stack
// level: medium 
// O(m*n)
func nextGreaterElement(nums1: [Int], nums2: [Int]) -> [Int] {
    // brute force
    var result: [Int] = []
    
    for i in 0..<nums1.count{
        var j = returnIndex(value: nums1[i], nums2: nums2) // get the index
        var found = false
        for k in j+1..<nums2.count{
            // if there a greater element - we can use the first to compare
            if nums2[k] > nums1[i] {
                result.append(nums2[k])
                found = true
                break
            }
        }
        if !found{
            result.append(-1)
        }
    }
    return result
}



func returnIndex(value: Int, nums2: [Int]) -> Int {
    
    for i in 0..<nums2.count{
        if value == nums2[i]{
            return i
        }
    }
    return -1 // assume we will always have a match
}
// 2, 0, 3
print(nextGreaterElement(nums1: [4,1,2], nums2: [1,3,4,2])) // [-1, 3, -1]
print(nextGreaterElement(nums1: [2,4], nums2: [1,2,3,4])) // [3,-1]
