
// level: easy
// category: trees 
// DFS? again
func sameBinaryTree(p: TreeNode?, q: TreeNode?) -> Bool {
    
    // base case
    // if p and q are both nil
    if p == nil && q == nil {
        return true
    }
    // there are not the same
    if p == nil || q == nil || p?.val != q?.val{
        return false
    }
    // both of nodes are the same values and non nil
    return sameBinaryTree(p: p?.left, q: q?.left) &&
    sameBinaryTree(p: p?.right, q: q?.right)
    
}
