// Category: Sets, Hashmap 
func singleNumber(nums: [Int]) -> Int {
    
    //brute force
    var dict: [Int: Int] = [:]
    
    for i in 0..<nums.count{
        dict[nums[i], default: 0] += 1
    }
    
    for key in dict.keys{
        // if it's value is one return key
        if dict[key] == 1 {
            return key
        }
    }
   return -1
}

print(singleNumber(nums: [2,2,1])) // 1
print(singleNumber(nums: [4,1,2,1,2])) // 4
print(singleNumber(nums: [1])) // 1
