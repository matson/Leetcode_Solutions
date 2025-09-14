// category: tree
// level: med
// O(n)
func kthSmallest(root: TreeNode?, k: Int) -> Int{
    // smallest element in the tree
    // iteratively w/stack
    var stack = [TreeNode]()
    var current = root
    var k = k
    
    
    while current != nil || !stack.isEmpty{
        // keep going left
        while current != nil {
            stack.append(current!)
            current = current?.left
        }
        current = stack.removeLast() // popping
        k -= 1
        if k == 0{
            return current!.val
        }
        // if there are no more left
        current = current?.right
    }
    return -1
    
}
