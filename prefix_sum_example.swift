
// Prefix Sums
// Array concept

// Prefix are continous
// [ 2, -1, 3, -3, 4 ]
//   2, 1, 4, 1, 5

// they serve to lower the calculations needed to compute sums in arrays
// example

func prefixSum(nums: [Int]) -> Int{
    
    var prefix: [Int] = []
    var total: Int = 0
    for n in nums{
        total += n
        prefix.append(total)
    }
    
    print(prefix)
    return 0
}

// takes in two indices
func rangeSum(left: Int, right: Int, prefix: [Int]) -> Int {
    var preRight = prefix[right]
    let preLeft: Int
    if left > 0 {
      preLeft = prefix[left - 1]
    } else {
      preLeft = 0
    }
    return (preRight - preLeft)
}

prefixSum(nums: [2,-1,3,-3,4])
