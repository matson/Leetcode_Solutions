

// back tracking
// idea: we are in a maze.  we need the way out.
// we hit a dead end, we backtrack to get out through all possible paths

// question: determine if a path exists from the root of the tree to a leaf node.
// it may not contain any zeros

class TreeNode{
    var right: TreeNode?
    var left: TreeNode?
    var value: Int
    
    init(right: TreeNode? = nil, left: TreeNode? = nil, value: Int? = nil) {
        self.right = right
        self.left = left
        self.value = value
    }
}

func canReachLeaf(root: TreeNode) -> Bool{
    if (root == nil || root.value == 0){
        return false
    }
    
    // you are at the end of the valid path
    if root.left == nil && root.right == nil{
        return true
    }
    // recursion
    if (canReachLeaf(root: root.left!)){
        return true
    }
    if (canReachLeaf(root: root.right!)){
        return true
    }
    
    return false
}

func leafPath(root: TreeNode, path: inout [Int]) -> Bool{
    if (root == nil || root.value == 0){
        return false
    }
    // append to path
    path.append(root.value)
    
    if root.left == nil && root.right == nil{
        return true
    }
    
    if leafPath(root: root.left, path: &path){
        return true
    }
    if leafPath(root: root.right, path: &path){
        return true
    }
    // pop from the path if not true
    path.removeLast()
    
    return false
}
// determine if there is a path sum that equates to the target sum input in a tree 
func pathSum(root: TreeNode?, targetSum: Int) -> Bool{
    // recursive dfs?
    // run dfs
    func dfs(root: TreeNode?, curSum: Int)-> Bool {
        // base
        if root == nil {
            return false
        }
        curSum += root?.value
        if root?.left == nil && root?.right == nil{
            return curSum == targetSum // does the total match?
        }
        
        return dfs(root: root?.left, curSum: curSum) || dfs(root: root?.right, curSum: curSum)
        
    }
    
    return dfs(root: root, curSum: 0)
}
