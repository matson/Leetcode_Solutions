
// subsets
// math problem
// question: given a list of distinct nums, return all possible distinct subsets

// input: [1,2,3]
// make a trie structure


// time: // O(n*2^n)
func subsetsWithoutDuplicates(nums: [Int]) -> [[Int]]{ // example [1,2,3]
    var subsets: [[Int]] = []
    var curset: [Int] = []
    helper(i: 0, nums: nums, curset: &curset, subsets: &subsets)
    return subsets
    
}

func helper(i: Int, nums: [Int], curset: inout [Int], subsets: inout [[Int]]){
    // if out of bounds
    if i >= nums.count{
        subsets.append(curset)
    }
    
    // recursion piece
    // decision to include nums[i]
    // like [1]
    curset.append(nums[i])
    helper(i: i+1, nums: nums, curset: &curset, subsets: &subsets)
    curset.removeLast() // to clear for next case
    
    // decision not to include nums[i]
    // empty array []
    helper(i: i+1, nums: nums, curset: &curset, subsets: &subsets)
}

func subsetsWithDuplicates(nums: [Int]) -> [[Int]]{ // example [1,2,3,2]
    // sort the array first
    var sortedArr = nums.sorted()
    var subsets: [[Int]] = []
    var curset: [Int] = []
    helper2(i: 0, nums: nums, curset: &curset, subsets: &subsets)
    return subsets
} 

func helper2(i: Int, nums: [Int], curset: inout [Int], subsets: inout [[Int]]){
    if i >= nums.count{
        subsets.append(curset)
        return
    }
    
    // include nums[i]
    curset.append(nums[i])
    helper2(i: i+1, nums: nums, curset: &curset, subsets: &subsets)
    curset.removeLast()
    
    // detect duplicates
    // not include nums[i]
    var j = i
    // there are neighboring duplicates
    while j + 1 < nums.count && nums[j] == nums[j+1]{
        j+=1 // skip them
    }
    helper2(i: j+1, nums: nums, curset: &curset, subsets: &subsets)
    
}
