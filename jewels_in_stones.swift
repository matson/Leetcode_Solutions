// Category: Sets 

// O(n) 
func jewelsInStones(jewels: String, stones: String) -> Int{
    
    var set_j = Set(jewels)
    var count = 0
    // for each stone, check if it's a jewel
    for char in stones{
        if set_j.contains(char){
            count += 1
        }
    }
    
    return count
    
}

print(jewelsInStones(jewels: "aA", stones: "aAAbbbb")) // 3
print(jewelsInStones(jewels: "z", stones: "ZZ")) // 0
