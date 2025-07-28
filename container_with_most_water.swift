

func maxArea(height: [Int]) -> Int {
    
    // two pointer
    var left: Int = 0
    var right: Int = height.count - 1
    var maxArea: Int = 0
    
    while left < right{
        var area = (right - left) * min(height[left], height[right])
        maxArea = max(maxArea, area)
        
        if height[left] < height[right]{
            left += 1
        }else{
            // also covers height[left] > height[right]
            // either shifting is okay for if they are equal 
            right -= 1
        }
    }
    return maxArea
}



func maxArea(heights: [Int]) -> Int {
    
    // brute force
    // max area = min(heights[i], height[j]) * length
    var maxArea: Int = 0
    
    for i in 0..<heights.count{
        for j in i+1..<heights.count{
            // take the minimum of the heights then multiply by the length
            maxArea = max(maxArea, min(heights[i], heights[j]) * (j-i))
        }
    }
    return maxArea
}

print(maxArea(height: [1,7,2,5,4,7,3,6])) // 36
print(maxArea(height: [2,2,2])) // 4
