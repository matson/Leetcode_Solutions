// Level: medium
// Category: hashmap 
// O(n*log(n))
func topKFreq(nums: [Int], k: Int) -> [Int]{
    
    // brute force way
    // make a dict of each value
    var dict: [Int: Int] = [:]
    
    for i in 0..<nums.count {
        dict[nums[i], default: 0] += 1
    }
    
    // then, we need to sort them by increasing...decreasing and loop K times
    // we can sort the dictionary...
    let sortedFreq = dict
        .sorted { value1, value2 in
        return value1 > value2
    }
    
    // take first k keys
    var result: [Int] = []
    // k I don't think will be greater than sortedFreq.count
    for i in 0..<k{
        result.append(sortedFreq[i].key)
    }
    
    return result
}

print(topKFreq(nums: [1,2,2,3,3,3], k: 2)) // [2,3]
print(topKFreq(nums: [7,7], k: 1)) // [7]
