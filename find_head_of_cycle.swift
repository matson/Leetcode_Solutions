// Level: easy 
// Category: linked list
// O(n) 
func findHeadOfCycle(head: ListNode) -> ListNode? {
    // find the cycle
    var slow: ListNode = head
    var fast: ListNode = head
  
    while fast != nil && fast.next != nil{
        if slow === fast{
            break
        }
    }
    
    // if there is not a cycle
    if fast == nil || fast.next == nil{
        return nil
    }
    
    var slow2: ListNode = head // create second slow pointer
    // they will intersect
    while slow !== slow2 {
        slow = slow?.next
        slow2 = slow2?.next
        
    }
    return slow
    
}
