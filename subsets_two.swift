

// subsets without duplicates 
// medium -> backtracking 
func subsetsTwo(nums: [Int]) -> [[Int]]{
    var sortedNum = nums.sorted()
    var result: [[Int]] = []
    var curSub: [Int] = []
    helper(i: 0, nums: sortedNum, result: &result, curSub: &curSub)
    return result
    
}

func helper(i: Int, nums: [Int], result: inout [[Int]], curSub: inout [Int]){
    // base cases
    if i >= nums.count{
        result.append(curSub)
        return
    }
    
    // add the number
    curSub.append(nums[i])
    helper(i: i+1, nums: nums, result: &result, curSub: &curSub)
    curSub.removeLast()
    // skip the number
    var j = i
    while j+1<nums.count && nums[j] == nums[j+1]{
        j+=1
    }
    helper(i: j+1, nums: nums, result: &result, curSub: &curSub)
}

print(subsetsTwo(nums: [7,7])) // output: [[],[7], [7,7]]
