   func mySqrt(_ x: Int) -> Int {
        // what m * m = x?
        // check for 1 case
        // return 1
        if x < 2 {
            return x
        }
        
        var left: Int = 1
        var right: Int = x / 2
        
        while left <= right {
            // find middle
            let middle = (left + right) / 2
            let square = middle * middle
            
            if square == x {
                return middle
            }else if square < x {
                left = middle + 1
            }else{
                right = middle - 1
            }
        }
        
        return right
    }
