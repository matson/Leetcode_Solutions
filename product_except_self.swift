
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
