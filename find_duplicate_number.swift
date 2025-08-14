// level: medium 
// two phase pointer floyd's algorithm 
func findDuplicateNumber(nums: [Int]) -> Int{
    // linked list cycle
    // floyd's turtle
    var fast: Int = 0
    var slow: Int = 0
    
    while true{
        // first phase where fast and slow intersect
        slow = nums[slow]
        fast = nums[nums[fast]]
        if slow == fast{
            break
        }
        
    }
    var slow2 = 0
    while true{
        // second phase where two slow pointers intersect 
        slow = nums[slow]
        slow2 = nums[slow2]
        if slow == slow2{
            return slow
        }
        
    }
}

func findDuplicateNumber(nums: [Int]) -> Int{
    //cheating
    var dict: [Int: Int] = [:]
    // brute force use dictionary
    for i in 0..<nums.count{
        dict[nums[i], default: 0] += 1
    }


    for key in dict.keys{
        // value is >= 2
        if dict[key]! >= 2{
            return key
        }
    }
    return -1
}
