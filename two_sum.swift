// Category: hashmap 
// O(n^2)
func twoSum(nums: [Int], target: Int) -> [Int]{
    
    // brute force
    // double loop
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            if nums[i] + nums[j] == target{
                return [i, j]
            }
        }
    }
    return []
}
print(twoSum(nums: [2,7,11,15], target: 9)) // [0,1]
print(twoSum(nums: [3,2,4], target: 6)) // [1,2]

// O(n)
func twoSum(nums: [Int], target: Int) -> [Int]{
    
    // optimized way
    // store in dict
    var dict: [Int:Int] = [:]
    
    // append values and index
    for n in 0..<nums.count{
        dict[nums[n]] = n
    }
    
    // find complement
    for i in 0..<nums.count{
        // 9 - 2
        let complement = target - nums[i]
        // if there is a complement match
        if let j = dict[complement], j != i{
            return [i,j]
        }
    }
    return []
}

print(twoSum(nums: [2,7,11,15], target: 9)) // [0,1
print(twoSum(nums: [3,2,4], target: 6)) // [1,2]
