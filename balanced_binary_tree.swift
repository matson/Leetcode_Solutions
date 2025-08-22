
// level: easy 
// category: trees
// O(n)
// DFS trav.
func balancedBinaryTree(root: TreeNode?) -> Bool?{
    // find the right and left heights
    
    func dfs(root: TreeNode?) -> (Bool, Int){
        guard let root = root else{
            return (true, 0)
        }
        
        var left = dfs(root: root.left)
        var right = dfs(root: root.right)
        
        var balanced = left.0 && right.0 && abs(left.1 - right.1) <= 1 // height at most 1
        return (balanced, 1 + max(left.1, right.1))
    }
    return dfs(root: root).0
    
}
