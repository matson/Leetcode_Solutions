

// category: trees
// Level: medium 
// O(logn)
func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    // base case
    guard let root = root else{
        return TreeNode(val)
    }
    // compare values
    if val > root.val{
        // place to the right
        root.right = insertIntoBST(root.right, val)
    }
    else if val < root.val{
        root.left = insertIntoBST(root.left, val)
    }
    return root
}
