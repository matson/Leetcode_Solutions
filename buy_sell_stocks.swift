
// Category: greedy, two pointer 

// O(n)
func maxProfit(prices: [Int]) -> Int {
    // two pointer approach
    var left: Int = 0 // day 1
    var maxProfit: Int = 0
    var right: Int = 1 // day 2
    
    while right < prices.count {
        // if there is a profit
        if prices[left] < prices[right]{
            let profit = prices[right] - prices[left]
            maxProfit = max(maxProfit, profit)
        } else {
            left += 1
        }
        right += 1
    }
    return maxProfit

}
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
