
// Category: greedy 
// O(n^2)
func maxProfit(prices: [Int]) -> Int {
    
    // brute force
    // 2 loops
    // take the diff
    // place it on a max
    // return max
    var maxProfit: Int = 0
    
    for i in 0..<prices.count{
        for j in i+1..<prices.count{
            let diff = prices[j] - prices[i]
            maxProfit = max(diff, maxProfit)
        }
    }
    return maxProfit
}

print(maxProfit(prices: [7,1,5,3,6,4]))
print(maxProfit(prices: [7,6,4,3,1]))

// O(n)
// greedy approach 
func maxProfit(prices: [Int]) -> Int {
    
    // min price:
    var minPrice: Int = Int.max
    var maxProfit: Int = 0
    
    for price in prices{
        if price < minPrice {
            minPrice = price
        }else{
            maxProfit = max(maxProfit, price - minPrice)
        }
    }
    return maxProfit
}

print(maxProfit(prices: [7,1,5,3,6,4]))
print(maxProfit(prices: [7,6,4,3,1]))
