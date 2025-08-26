// category: trees
// level: medium 
// O(logn)
func lowestCommonAncestor(root: TreeNode?, p: TreeNode?, q: TreeNode?) -> TreeNode?{
    // start at root - will always be the common ancestor of every node
    
    var current = root
    
    while let node = current{
        if let p = p, let q = q {
            if p.val > node.val && q.val > node.val {
                current = node.right
            } else if p.val < node.val && q.val < node.val{
                current = node.left
            }else{
                // LCA is the same node
                return node
            }
        }
    }
    return nil
}
