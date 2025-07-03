


import Foundation

func is_ValidPS(num: Int) -> Bool {
    // binary search
    // edge cases:
    if num < 2 {
        return true
    }
    
    var left: Int = 1
    var right: Int = num / 2
    
    while left <= right {
        let middle = (right + left) / 2
        let square = middle * middle
        
        if square == num {
            // we found a perfect square!
            return true
        }
        else if square < num {
            left = middle + 1
        }else{
            right = middle - 1
        }
    }
    // we did not find a perfect square!
    return false
    
}
print(is_ValidPS(num: 16)) // true
print(is_ValidPS(num: 14)) // false
print(is_ValidPS(num: 15)) // false




