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

// original algorithm
func levelOrder(root: TreeNode?){
    // using a queue
    var queue: [TreeNode?] = []
    
    if root != nil{
        queue.append(root)
    }
    
    var level = 0
    while queue.count > 0{
        // nodes in queue
        print("level", level)
        for i in 0...queue.count - 1{
            // first in first out
            let current = queue.removeFirst()
            // does it have right or left children
            print(current?.val)
            if current?.left != nil{
                queue.append(current?.left)
            }
            if current?.right != nil {
                queue.append(current?.right)
            }
        }
        level += 1
    }
}
