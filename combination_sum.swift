

// combination problem 
// O(2^N*t)
// N is length of nums, t is target value 
func combinationSum(nums: [Int], target: Int) -> [[Int]] {
    var combos: [[Int]] = []
    var curCombo: [Int] = []
    helper(i: 0, nums: nums, total: 0, target: target, curCombo: &curCombo, combos: &combos)
    return combos
    
}

func helper(i: Int, nums: [Int], total: Int, target: Int, curCombo: inout [Int], combos: inout [[Int]]){
    // base case
    // if total matches target, appends this combination
    if total == target{
        combos.append(curCombo)
        return
    }
    
    if i >= nums.count || total > target{
        return
    }
    
    // include
    curCombo.append(nums[i])
    helper(i: i, nums: nums, total: total + nums[i], target: target, curCombo: &curCombo, combos: &combos)
    curCombo.removeLast()
    // not include
    helper(i: i+1, nums: nums, total: total, target: target, curCombo: &curCombo, combos: &combos)
}
