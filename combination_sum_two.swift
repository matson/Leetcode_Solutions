

// O(2^N * K)
// unique combinations 
func combinationSum2(nums: [Int], target: Int) -> [[Int]]{
    // unique combinations
    var combos: [[Int]] = []
    var curCombo: [Int] = []
    var numSorted = nums.sorted() // sort the array - trick
    helper(i: 0, nums: numSorted, total: 0, target: target, curCombo: &curCombo, combos: &combos)
    return combos
}

func helper(i: Int, nums: [Int], total: Int, target: Int, curCombo: inout [Int], combos: inout [[Int]]){
    // base case
    // if total matches target, appends this combination
    if total == target{
        combos.append(curCombo)
        return
    }
    
    if i == nums.count || total > target{
        return
    }
    
    // include
    curCombo.append(nums[i])
    helper(i: i+1, nums: nums, total: total + nums[i], target: target, curCombo: &curCombo, combos: &combos)
    curCombo.removeLast()
    // not include
    // loop
    var j = i
    while j + 1 < nums.count && nums[j] == nums[j+1]{
        j += 1
    }
    helper(i: j+1, nums: nums, total: total, target: target, curCombo: &curCombo, combos: &combos)
    
}

print(combinationSum2(nums: [9,2,2,4,6,1,5], target: 8))
/*
 Output: [
   [1,2,5],
   [2,2,4],
   [2,6]
 ]
 */
