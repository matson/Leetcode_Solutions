// category: trees 
// Level: easy
// O(n)
func isSubTree(root: TreeNode?, subRoot: TreeNode?) -> Bool {
    
    // if subRoot is nil
    if subRoot == nil{
        return true
    }
    // if root is nil
    if root == nil{
        return false
    }
    // run same tree
    if isSameTree(t1: root, t2: subRoot){
        return true
    }
   // check
    return isSubTree(root: root?.left, subRoot: subRoot) ||
    isSubTree(root: root?.right, subRoot: subRoot)
}

func isSameTree(t1: TreeNode?, t2: TreeNode?) -> Bool{
    if t1 == nil && t2 == nil{
        return true
    }
    
    if t1 != nil && t2 != nil && t1?.val == t2?.val{
        // check left
        // check right
        return (isSameTree(t1: t1?.left, t2: t2?.left)
                && isSameTree(t1: t1?.right, t2: t2?.right))
    }
    
    // if one tree is empty
    return false
    
}
