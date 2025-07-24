// Category: HashSet
// Level: Medium 
// O(n) + O(nlog(n)) = O(nlog(n))
func longestConsecutive(nums: [Int]) -> Int {
    // brute force
    // sorting
    // make into a set
    var currentLen: Int = 1
    var maxLen: Int = 1
    var set = Set(nums)
    var sorted = set.sorted()
    for i in 0..<sorted.count-1{
        // if the difference is 1
        // add to the counter
        if abs(sorted[i+1] - sorted[i]) == 1{
            currentLen += 1
        } else{
            // end of current sequence
            maxLen = max(maxLen, currentLen)
            // reset 
            currentLen = 1
        }
    }
    // if it goes to the end without breaking you take that max
    maxLen = max(maxLen, currentLen)
    return maxLen
}


print(longestConsecutive(nums: [2,20,4,10,3,4,5])) // 4
print(longestConsecutive(nums: [0,3,2,5,4,6,1,1])) // 7
print(longestConsecutive(nums: [9,1,4,7,3,-1,0,5,8,-1,6])) // 7

// O(n)
func longestConsecutive(nums: [Int]) -> Int {
   
    // use a set
    // check if each have neighbors
    var set = Set(nums)
    var longest: Int = 0
    
    for i in 0..<nums.count{
        // check if it's the start of a sequence
        if !set.contains(nums[i]-1) {
            var length = 1 // add 1 to the start
            // while the additions exist
            while set.contains(nums[i] + length){
                // keep adding to find rest of numbers in sequence
                length += 1
            }
            longest = max(length, longest)
        }
    }
    return longest
}

// [1, 100, 200, 2, 3] -> check left, check i + n, update 
print(longestConsecutive(nums: [2,20,4,10,3,4,5])) // 4
print(longestConsecutive(nums: [0,3,2,5,4,6,1,1])) // 7
print(longestConsecutive(nums: [9,1,4,7,3,-1,0,5,8,-1,6])) // 7
