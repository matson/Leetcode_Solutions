
// Category: Two Pointer 
// Level: Easy
//O(n) 
func isPalindrome(x: Int) -> Bool {
    
    // two pointer solution
    // is it negative?
    guard x >= 0 else {return false}
    var arr = String(x).compactMap { $0.wholeNumberValue}
    var left: Int = 0
    var right: Int = arr.count - 1
    
    while left < right {
        // compare
        if arr[left] != arr[right]{
            return false
        }
        right -= 1
        left += 1
    }
    
    return true
    
    
}

print(isPalindrome(x: 121))
print(isPalindrome(x: 10))
print(isPalindrome(x: -121))

func isPalindrome(x: Int) -> Bool {
   // brute force
   // reverse int then compare to the input string
   var reversed = String(x)
       .compactMap { $0.wholeNumberValue }
       .reversed()
   return x == Int(reversed.map(String.init).joined())
}
