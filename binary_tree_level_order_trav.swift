// category: trees
// level: medium
// O(n)
func levelOrderTrav(root: TreeNode?) -> [[Int]]{
    var result: [[Int]] = []
    var queue: [TreeNode?] = []
    
    if root != nil{
        queue.append(root)
    }
    
    // while queue is not empty
    while queue.count > 0{
        var level: [Int] = []
        for i in 0..<queue.count{
            if let current = queue.removeFirst(){
                level.append(current.val)
                queue.append(current.left)
                queue.append(current.right)
            }
        }
        if !level.isEmpty{ // if it's not empty
            result.append(level) // add to the list 
        }
        
    }
    return result
}
