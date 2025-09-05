
// BFS
func rightSideView(root: TreeNode?) -> [Int]{
    
    var arr: [Int] = []
    var q = Deque<TreeNode?>() // apparently you can make queues this way
    q.append(root) // start with root
    
    while !q.isEmpty{
        var rightSide: TreeNode?
        let queueLen = q.count
        
        for i in 0..<queueLen{
            if let node = q.removeFirst(){
                rightSide = node
                q.append(node.left)
                q.append(node.right)
            }
            
        }
        if let rightSide = rightSide{
            arr.append(rightSide.val)
        }
    }
    // return the values
    return arr
    
    
}
