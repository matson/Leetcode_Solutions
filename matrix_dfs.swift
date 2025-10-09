// Question: return the count of all unique paths in a grid 
// DFS 
// time complexity: O(4^m * n) - worse case 
func countPaths(grid: [[Int]]) -> Int{
    // dimensions
    var ROWS = grid.count
    var COLS = grid[0].count
    
    
    // for this problem make a helper function
    func dfs(r: Int, c: Int, visited: inout [[Int]]) -> Int{
        // base cases
        if r < 0 || c < 0 || r == ROWS || c == COLS ||  // if out of bounds
            grid[r][c] == 1 || // obstacle == 1
            visited[r][c] == 1{ //  // visited
            return 0
        }
        // if we reach the end of board
        if r == ROWS - 1 && c == COLS - 1{
            return 1
        }
        // valid path
        // mark visited
        visited[r][c] = 1
        
        // dfs
        // all directions
        var count = 0
        count += dfs(r: r + 1, c: c, visited: &visited)
        count += dfs(r: r - 1, c: c, visited: &visited)
        count += dfs(r: r, c: c + 1, visited: &visited)
        count += dfs(r: r, c: c - 1, visited: &visited)
        
        visited[r][c] = 0
        
        return count
    }
    
    var visited = Array(repeating: Array(repeating: 0, count: COLS), count: ROWS)
    return dfs(r: 0, c: 0, visited: &visited)
}
