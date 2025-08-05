


// O(n^2)
// this will time exceed on leetcode *
func minEatingSpeed(piles: [Int], h: Int) -> Int {
    
    // brute force
    var speed = 1
    
    while true {
        var totalTime: Int = 0
        for pile in piles{
            // round up for the total time
            totalTime += Int(ceil(Double(pile) / Double(speed)))
        }
        // if its the first lowest time
        if totalTime <= h{
            return speed
        }
        speed += 1
    }
    // return speed
}

print(minEatingSpeed(piles: [1,4,3,2], h: 9)) // 2
print(minEatingSpeed(piles: [25,10,23,4], h: 4)) // 25
