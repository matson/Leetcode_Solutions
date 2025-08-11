
// Category: linked list
// Level: Medium 
// O(n) O(1) mem
func reverse_linked_list(head: ListNode) -> ListNode?{
    
    // traverse through and point backwards
    var prev: ListNode? = nil
    var current: ListNode = head
    
    while current != nil{
        let temp = current?.next
        current.next = prev // <-
        prev = current // set prev to current
        current = temp // set current to the temp 
    }
    return prev // return the new head
}


// brute force 
// O(n) 
func reverse_linked_list(head: ListNode) -> ListNode?{
    
    var arr: [Int] = [] // to store and reverse
    var current = head
    
    // append
    while current.next != nil{
        arr.append(current.val)
        current = current?.next
    }
    
    // reverse the array
    let reverse = arr.reversed()
    
    // turn back into linked list
    var newHead: ListNode? = nil // make the head
    var tail: ListNode? = nil // make the tail
    for i in reverse{
        let newNode = ListNode(val: i)
        if newHead == nil{
            newHead = newNode
            tail = newNode
        }else{
            tail?.next = newNode
            tail = newNode
        }
    }
    return newHead
}
