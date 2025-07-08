// Category: prefix sum 

class NumArray {
    // brute force I know 
    private var nums: [Int]

    init(_ nums: [Int]) {
       self.nums = nums 

    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        var sum: Int = 0
        for i in left...right {
            sum += nums[i]
        }
        return sum
    }
}
