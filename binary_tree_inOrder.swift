

// level: easy
// category: trees

// O(n)
func inOrderTrav(root: TreeNode?) -> [Int]{
    var arr: [Int] = []

  // to not overwrite the arr every recursive call 
    func inOrder(root: TreeNode?){
        guard let root = root else{
            return
        }
        inOrder(root: root.left)
        arr.append(root.val)
        inOrder(root: root.right)
    }
    
    inOrder(root: root)
    return arr
}

// Depth First Search
// In Order traversal
// O(n)
func inOrder(root: TreeNode?){
    guard let root = root else{
        return
    }
    
    inOrder(root: root.left)
    print(root.val)
    inOrder(root: root.right)
}

func postOrder(root: TreeNode?){
    guard let root = root else{
        return
    }
    postOrder(root: root.left)
    postOrder(root: root.right)
    print(root.val)
}

func preOrder(root: TreeNode?){
    guard let root = root else{
        return
    }
    print(root.val)
    preOrder(root: root.left)
    preOrder(root: root.right)
    
}
