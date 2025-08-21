
// category: tree
// level: easy 
// O(n)
func maxDepth(root: TreeNode?) -> Int {
    guard root != nil else{
        return 0
    }
    var depth: Int = 1
    // recursion
    // BFS
    // you can use both
    var leftDepth = maxDepth(root: root?.left)
    var rightDepth = maxDepth(root: root?.right)
    return max(leftDepth, rightDepth) + depth
    
}
