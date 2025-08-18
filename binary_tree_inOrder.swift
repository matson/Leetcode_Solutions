

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
