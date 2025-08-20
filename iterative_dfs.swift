

// Iterative DFS
// this is in case they do not want the recursive version

// O(n)
func inOrderIterative(root: TreeNode?){
    var stack: [TreeNode?] = []
    var current = root
    
    // stack is not empty
    while !stack.isEmpty || current != nil{
        // keep going left for inorder trav
        if current != nil{
            stack.append(current)
            current = current?.left
        }
        // pop up to the parent
        // pop up to the root then go right
        current = stack.removeLast()
        print(current?.val)
        current = current?.right
    }
}

func preOrderIterative(root: TreeNode?){
    var stack: [TreeNode?] = []
    var current = root
    
    while current != nil || !stack.isEmpty{
        if current != nil{
            // print the node (root) first
            print(current?.val)
            // if there is a right node, add to stack
            if current?.right != nil{
                stack.append(current?.right)
            }
            // keep going left 
            current = current?.left
            
        }else{
            current = stack.removeLast()
        }
    }
}

func postOrderIterative(root: TreeNode?){
    var stack = [root]
    var visit = [false]
    while !stack.isEmpty{
        let current = stack.removeLast()
        let visited = visit.removeLast()
        if current != nil{
            if visited {
                print(current?.val)
            }
            else{
                // add the current and mark it true 
                stack.append(current)
                visit.append(true)
                // children mark false 
                stack.append(current?.right)
                visit.append(false)
                stack.append(current?.left)
                visit.append(false)
            }
        }
    }
    
}
