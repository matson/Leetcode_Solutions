
// level: med-easy
// category: trees
// O(n)
func diameterOfBinaryTree(root: TreeNode?) -> Int {
    var result: Int = 0
    
    func dfs(root: TreeNode?) -> Int{
        guard let root = root else{
            return 0
        }
        let left = dfs(root: root.left)
        let right = dfs(root: root.right)
        result = max(result, left + right)
        return 1 + max(left, right)
    }
    
    dfs(root: root)
    return result
    
    
}
