
// category: tree
// level: med
// O(n) time
func findGoodNodes(root: TreeNode?) -> Int{
    // need a counter
    // DFS
    func dfs(node: TreeNode?, maxValue: Int)->Int{
        // base case
        guard let root = root else{
            return 0
        }
        // good or bad node
        var result = root.val >= maxValue ? 1 : 0
        var newmaxValue = max(maxValue, root.val)
        result += dfs(node: root.left, maxValue: newmaxValue)
        result += dfs(node: root.right, maxValue: newmaxValue)
        return result
    }
    // negative infinity for min
    return dfs(node: root, maxValue: root?.val ?? Int.min)
    
}
