
// permutations
// where [1,2] and [2,1] are accepted
// time complex. is O(n^2 * n!)

// recursive way
// bottom up 
func permutationsRecursive(nums: [Int]) -> [[Int]]{
    return helper(i: 0, nums: nums)
}

// helper function
func helper(i: Int, nums: [Int]) -> [[Int]]{
    if i == nums.count {
        return [[]]
    }
    
    var resPerms: [[Int]] = []
    let perms = helper(i: i+1, nums: nums)
    for p in perms {
        for j in 0..<p.count + 1 {
            var pCopy = p
            pCopy.insert(nums[i], at: j)
            resPerms.append(pCopy)
        }
    }
    return resPerms
}

// iterative way
func permuationsIterative(nums: [Int]) -> [[Int]] {
    var perms: [[Int]] = [[]]
    
    // go through each number
    for n in nums {
        var nextPerms: [[Int]] = []
        for p in perms {
            for i in 0..<p.count + 1 {
                var pCopy = p
                pCopy.insert(n, at: i)
                nextPerms.append(pCopy)
            }
        }
        perms = nextPerms
    }
    return perms
}
