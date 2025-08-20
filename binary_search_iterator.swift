// category: trees 
// level: medium
// O(n)
class BSTIterator {

    private var arr: [Int] = [] 
    private var itr: Int = 0 

    init(_ root: TreeNode?) {
        var stack: [TreeNode] = []
        var current = root

        while current != nil || !stack.isEmpty{
            while current != nil {
                stack.append(current!)
                current = current?.left
            }
            current = stack.removeLast()
            // add to the arr 
            arr.append(current!.val) // printing tree, but in order in the array 
            current = current?.right 
        }
    }
    
    func next() -> Int {
        let value = arr[itr]
        // progress iterator 
        itr += 1
        return value
    }
    
    func hasNext() -> Bool {
        return itr < arr.count
    }
}
