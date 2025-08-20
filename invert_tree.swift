// category: trees
// level: easy
// O(n)

func invertTree(root: TreeNode?)-> TreeNode?{
    // base case 
    guard let root = root else{
        return nil
    }
    // switch the pointers
    // need to do this right or else it will screw up the pointers
    (root.left, root.right) = (root.right, root.left)
    // DFS 
    invertTree(root: root.left)
    invertTree(root: root.right)
  
    return root
}
