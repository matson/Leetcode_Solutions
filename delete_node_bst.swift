

// find max would just replace with right
func findMin(root: TreeNode?) -> TreeNode?{
    // just need to go to the left down side of tree
    var current = root
    while current != nil && current?.left != nil{
        current = current?.left
    }
    return current
}

// two cases of removal:
// Case 1: 0 or 1 child - simple
// Case 2: 2 children - harder
// O(logn)
func removeTreeNode(root: TreeNode?, key: Int) -> TreeNode?{
    
    guard let root = root else{
        // if root is null
        return root
    }
    
    if key > root.val{
        root.right = removeTreeNode(root: root.right, key: key)
    } else if key < root.val{
        root.left = removeTreeNode(root: root.left, key: key)
    } else {
        if root.left == nil{
            return root.right
        } else if root.right == nil{
            return root.left
        } else {
            // need minNode from right subTree
            var minNode = findMin(root: root.right)
            root.val = minNode?.val
            root.right = removeTreeNode(root: root.right, key: root.val)
            
        }
    }
    return root 
}
