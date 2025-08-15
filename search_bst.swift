

// category: trees
// Level: easy
// O(logn)
func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    // run binary search on the tree
    guard let root = root else{
        return nil
    }
    
    // at root
    if val > root.value{
        // search to the right
        searchBST(root.right, val: value)
        
    }else if val < root.value{
        // search to the left
        searchBST(root.left, val: value)
    } else {
        // we found that node
        return root
    }
    
}

func searchTree(root: TreeNode?, target: Int) -> Bool{
    guard root != nil else {return false}
    
    if target > root?.value{
        // go right
        return searchTree(root: root?.right, target: target)
    }
    else if target < root?.value{
        // go left
        return searchTree(root: root?.left, target: target)
    }else{
        // return the node 
        return true
    }
}

// * Trees *
// Things on trees:
// Binary trees are not allowed cycles
// at least one root node, some leaf nodes
// Binary Search Trees: they have a sorted property
// all right nodes need to be greated than
// all left nodes need to be less than root, it's recursive for each node
