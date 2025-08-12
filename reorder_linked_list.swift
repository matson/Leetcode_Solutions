








// O(n) but extra space 
func reorderLinkedList(head: ListNode){
    // brute force 
    // append to an array
    var arr: [Int] = []
    var current = head
    
    while current != nil {
        // add to array
        arr.append(current.value)
        current = current.next!
    }
    
    // split and reverse second
    let mid = arr.count / 2
    let firstHalf = Array(arr.prefix(mid))
    let secondHalf = Array(Array(arr.dropFirst(mid)).reversed())
    
    // append one by one
    var dummy = ListNode(value: -1)
    var tail = dummy
    var i = 0
    
    // choose value from firstHalf, then choose value from second half, repeat
    while i < firstHalf.count || i < secondHalf.count{
        if i < firstHalf.count{
            var newNode = ListNode(value: firstHalf[i])
            tail.next = newNode
            tail = tail.next!
        }
        if i < secondHalf.count{
            var newNode = ListNode(value: secondHalf[i])
            tail = tail.next!
        }
        i += 1
    }
    
    head.next = dummy.next?.next 
    
}

// [2,4,6,8]
// [2,8,4,6]
