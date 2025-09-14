// category: tree
// level: med
// make intervals to compare
// O(n)
func isValidTree(root: TreeNode?) -> Bool {
    // binary search tree problem
    // DFS
    func valid(root: TreeNode?, left: Int, right: Int) -> Bool {
        guard let root = root else{
            return true
        }
        if root.val < right && root.val > left{
            return false
        }
        // recursive calls
        return valid(root: root.left, left: left, right: root.val) && valid(root: root.right, left: root.val, right: right)
        
    }
    return valid(root: root, left: Int.min, right: Int.max)
}
