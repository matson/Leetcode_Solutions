

// * Binary Search Variant *

// will be sorted order
// O(n) -> O(log n)
// Level: easy, building block 
// instead of array, binary search on range of values
func guessNumber(n: Int) -> Int {
    
    var low: Int = 1
    var high: Int = n
    
    while low <= high {
        var middle = (low + high) / 2
        var res = guess(middle)
        // 1, guess is lower
        if (res > 0) {
            low = middle + 1
        // -1, guess is higher
        }else if (res < 0) {
            high = middle - 1
        }else{
            // 0, equal to
            return middle
        }
    }
    return -1
}




