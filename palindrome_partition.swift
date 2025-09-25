


// subset -> medium
func partition(s: String) -> [[String]]{
    // return a list
    // the base case is if they are the same reversed
    var result: [[String]] = []
    var part: [String] = []
    var sArray = Array(s) // need i to go thru string
    
    func dfs(i: Int){
        // base case
        if i >= sArray.count{
            result.append(part)
            return
        }
        
        for j in i..<sArray.count {
            if isPali(s: sArray, l: i, r: j){
                part.append(String(sArray[i...j]))
                dfs(i: j+1)
                part.removeLast()
            }
            
        }
    }
    
    func isPali(s: [Character], l: Int, r: Int) -> Bool{
        var l = l, r = r
        while l < r{
            if s[l] != s[r] {
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }
    dfs(i: 0)
    return result
}

print(partition(s: "aab")) // [["a","a","b"],["aa","b"]]
