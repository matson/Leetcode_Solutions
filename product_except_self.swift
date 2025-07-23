
// O(n) 
// Level: Medium
// Category: Arrays 
func productExceptSelf(nums: [Int]) -> [Int]{
    // brute force is
    // get total product
    // for each value product / divide by nums[i]
    var result: [Int] = []
    let zeroCount = nums.filter { $0 == 0 }.count // how many zeros in the array
    
    // based on how many zeros
    let totalProduct = nums.reduce(1, { (accumulator: Int, currentElement: Int) -> Int in
        if currentElement == 0 {
            return accumulator
        } else {
            return accumulator * currentElement
        }
    })
    
    
    for i in 0..<nums.count{
        if zeroCount >= 2 {
            result.append(0)
        }else if zeroCount == 1 {
            if nums[i] == 0{
                result.append(totalProduct)
            } else{
                result.append(0)
            }
        }else{
            result.append(totalProduct / nums[i])
        }
    }
    return result
}


print(productExceptSelf(nums: [1,2,4,6])) // [48, 24, 12, 8]
print(productExceptSelf(nums: [-1,0,1,2,3])) // [0, -6, 0, 0, 0]

// this one is tricky review it
func productExceptSelf(nums: [Int]) -> [Int] {
    
    // say n is the value self
    // now not using division
    // we need to just multiply the values before n, and after n.
    // has a prefix and postfix
    
    var result = Array(repeating: 1, count: nums.count)
    var leftProduct = 1
    var rightProduct = 1
    
    // prefix pass
    for i in 0..<nums.count {
        result[i] = leftProduct
        leftProduct *= nums[i]
    }
    
    // postfix pass
    for i in (0..<nums.count).reversed(){
        result[i] *= rightProduct
        rightProduct *= nums[i]
    }
    
    return result 
    
}


print(productExceptSelf(nums: [1,2,3,4])) // [24, 12, 8, 6]
