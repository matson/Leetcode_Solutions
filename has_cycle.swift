

// determine if a linked list has a cycle
// Category: linked list
// Level: easy
// O(n)
func hasCycle(head: ListNode) -> Bool {
    // fast and slow pointer
    var fast: ListNode? = head
    var slow: ListNode? = head
    
    while fast != nil && fast?.next != nil{
        slow = slow?.next
        fast = fast?.next?.next 
        if fast === slow{
            return true
        }
    }
    return false
}
