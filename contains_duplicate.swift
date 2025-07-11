
// Category: Hashmap, Sets

// brute force
// O(n^2)
// this will exceed time limit - do not try at home 
func containsDuplicate(nums: [Int]) -> Bool {
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            if nums[i] == nums[j]{
                return true
            }
        }
    }
    return false
}

print(containsDuplicate(nums: [1,2,3,1]))
print(containsDuplicate(nums: [1,2,3,4]))

// better, but eh 
// O(n) 
func containsDuplicate(nums: [Int]) -> Bool {
    
    var dict1: [Int: Int] = [:]
    
    for i in 0..<nums.count{
        dict1[nums[i], default: 0] += 1
    }
   
    for j in dict1.keys{
        if let key = dict1[j]{
            if key >= 2{
                return true
            }
        }
    }
    return false
}


// Even better
// use a set instead 
func containsDuplicate(nums: [Int]) -> Bool {
    var set1 = Set(nums)
    return !(set1.count == nums.count)
}

print(containsDuplicate(nums: [1,2,3,1]))
print(containsDuplicate(nums: [1,2,3,4]))



