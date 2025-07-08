
// Category: greedy 

func canPlaceFlowers(flowerbed: [Int], n: Int) -> Bool {
    
    var bed = flowerbed
    var count = n
    
    // brute force
    for i in 0..<bed.count {
        if bed[i] == 0{
            // is the left neighbor empty or doesn't exist
            let emptyLeft = ( i == 0 || bed[i-1] == 0)
            // is the right neighbor empty or doesn't exist 
            let emptyRight = (i == bed.count - 1 || bed[i+1] == 0)
            
            if emptyLeft && emptyRight {
                bed[i] = 1
                // decrement count
                count -= 1
                if count == 0 {
                    return true
                }
            }
        }
    }
    // if the count is 0 then it will be true
    return count <= 0
}

print(canPlaceFlowers(flowerbed: [1,0,0,0,1], n: 1)) // true
print(canPlaceFlowers(flowerbed: [1,0,0,0,1], n: 2)) // false
