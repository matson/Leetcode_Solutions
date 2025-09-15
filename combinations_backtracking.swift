

// combinations
// like subsets, but the combinations are a limited size
// example: n = 5, [1,2,3,4,5] but k = 2 so [1,2], [4,3], [5,1] etc.

func combinations(n: Int, k: Int) -> [[Int]] {
    var combs: [[Int]] = []
    var curcombs: [Int] = []
    helper(i: 1, curcomb: &curcombs, combs: &combs, n: n, k: k)
    return combs
}

func helper(i: Int, curcomb: inout [Int], combs: inout [[Int]], n: Int, k: Int){
    if curcomb.count == k{
        combs.append(curcomb)
        return
    }
    // if it's out of bounds
    if i > n{
        return
    }
    
    // decision to include i
    curcomb.append(i)
    helper(i: i+1, curcomb: &curcomb, combs: &combs, n: n, k: k)
    curcomb.removeLast()
    
    helper(i: i+1, curcomb: &curcomb, combs: &combs, n: n, k: k)
}

// achieve O(k * X) - best we can get
// O(k * 2^n)
// optimized solution
func opt_combinations(n: Int, k: Int) -> [[Int]]{
    var combs: [[Int]] = []
    var curCombs: [Int] = []
    opt_helper(i: 1, curcomb: &curCombs, combs: &combs, n: n, k: k)
    return combs
}

func opt_helper(i: Int, curcomb: inout [Int], combs: inout [[Int]], n: Int, k: Int){
    if curcomb.count == k{
        // append
        combs.append(curcomb)
        return
    }
    if i > n {
        return
    }
    
    // recursion piece
    for j in i..<n+1{
        curcomb.append(j)
        opt_helper(i: j+1, curcomb: &curcomb, combs: &combs, n: n, k: k)
        curcomb.removeLast() // backtracking 
    }
}
