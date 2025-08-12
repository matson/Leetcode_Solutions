
// category: linked list 
// level: medium
// O(n)
func reorderLinkedList(head: ListNode?){
    
    // reverse the second link
    // find the middle first - with a fast and slow pointer
    var fast = head?.next
    var slow = head
    
    while fast != nil && fast?.next != nil{
        slow = slow?.next
        fast = fast?.next?.next
    }
    
    var second = slow?.next // find the middle
    var prev: ListNode? = nil
    slow?.next = nil // break the list
    
    // make everything point in reverse
    while second != nil {
        let tmp = second?.next
        second?.next = prev
        prev = second
        second = tmp
    }
    
    var first = head
    second = prev
    
    // rearrange
    while second != nil {
        let tmp1 = first?.next
        let tmp2 = second?.next
        first?.next = second
        second?.next = tmp1
        first = tmp1
        second = tmp2
    }
}






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
