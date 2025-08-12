
// level: medium
// category: linked list 

func removeNthNode(head: ListNode?, n: Int) -> ListNode?{
    // two pointer
    // offset of R and L
    var dummy = ListNode(value: -1, next: head) // start with dummy node
    var left: ListNode? = dummy
    var right: ListNode? = head
    var n = n
    
    // shift right to spot
    while n > 0 && right != nil{
        right = right?.next
        n -= 1
    }
    
    // shift until condition is met 
    while right != nil{
        left = left?.next
        right = right?.next
    }
    
    // delete the node
    left?.next = left?.next?.next
    // return true head of list 
    return dummy.next
}
