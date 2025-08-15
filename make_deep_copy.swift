
// level: Medium
// category: linked list 
// O(n)
func makeDeepCopy(head: ListNode?) -> ListNode? {
    // create a deep copy
    // two pass
    // create a hashmap
    
    // first pass
    var oldToCopy: [ListNode?: ListNode?] = [nil: nil]
    var current = head
    while current != nil {
        var copy = ListNode(value: current!.value) // creating a copy of the node
        oldToCopy[current] = copy // place in dict
        current = current?.next // update current pointer
    }
    
    // second pass
    var current2 = head
    while current2 != nil{
        let copy = oldToCopy[current2]! // get the copy
        copy.next = oldToCopy[current2.next]
        copy.random = oldToCopy[current2.random]
        current2 = current2?.next
    }
    
    return oldToCopy[head]
}
