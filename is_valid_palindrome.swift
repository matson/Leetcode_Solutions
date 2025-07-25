

// Category: Two Pointer
// Level: Easy 

// O(n) 
func isPalindrome(s: String) -> Bool {
    
    // make all lowercase
    // brute force
    var str = s.lowercased()
    var finalString = str.filter { $0.isLetter || $0.isNumber}
    return finalString == String(finalString.reversed())
}

// Two pointer solution  
func isPalindrome(s: String) -> Bool {
    // take all spaces, non-alpha numeric char out
    var filtered = s.filter { $0.isLetter || $0.isNumber }
    var str = Array(filtered.lowercased())
    var left: Int = 0
    var right: Int = str.count - 1
    while left < right {
        if !(str[left] == str[right]){
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

print(isPalindrome(s: "Was it a car or a cat I saw?")) // true
print(isPalindrome(s: "tab a cat")) // false

// Integer array example 
// O(n) 
func isPalindrome(nums: [Int]) -> Bool {
    // two pointer solution
    var left: Int = 0 // make a pointer in the beginning
    var right: Int = nums.count - 1 // make a pointer for the end
    while left < right {
        if nums[left] != nums[right]{
            return false
        }
        left += 1
        right -= 1
    }
    return true
    
}

print(isPalindrome(nums: [1,2,7,7,2,1]))

// Given a sorted array of integers, return the indices of two elements
// in different positions that sum up to the target value.  Assume there is
// exactly one solution
func targetSum(nums: [Int], target: Int) -> [Int]{
    var left: Int = 0
    var right: Int = nums.count - 1
    while left < right {
        if nums[left] + nums[right] > target {
            right -= 1
        }else if nums[left] + nums[right] < target {
            left += 1
        }
        else{
            return [left, right] // assuming there is exacly one solution
        }
        
    }
    return []
}

print(targetSum(nums: [-1, 2, 3, 4, 8, 9], target: 7)) //
