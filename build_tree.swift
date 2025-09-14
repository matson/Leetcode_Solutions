
// level: med
// category: tree 
func buildTree(preorder: [Int], inorder: [Int]) -> TreeNode?{
    // preorder - first value is the root
    if preorder.isEmpty || inorder.isEmpty{
        return nil
    }
    
    // make the root
    let rootValue = preorder[0]
    let root = TreeNode(val: rootValue)
    guard let middle = inorder.firstIndex(of: rootValue) else{
        return root
    }
    
    root.left = buildTree(
        preorder: Array(preorder[1..<(middle + 1)]),
        inorder: Array(inorder[0..<middle])
    )

    root.right = buildTree(
        preorder: Array(preorder[(middle + 1)..<preorder.count]),
        inorder: Array(inorder[(middle + 1)..<inorder.count])
    )
    
    return root
    
    
}
