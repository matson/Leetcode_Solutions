func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    // we will make use of BST
    for i in 0..<matrix.count{
        // we do BST on each row
        // count of each row
        var n = matrix[i].count
        var right: Int = n - 1
        var left: Int = 0
        // split array in half - find the half index
        while left <= right {
            var middle = left + (right - left) / 2
            if matrix[i][middle] == target {
                return true
            } else if matrix[i][middle] < target {
                left = middle + 1
            } else{
                right = middle - 1
            }
            
        }
    }
    
    return false
}
