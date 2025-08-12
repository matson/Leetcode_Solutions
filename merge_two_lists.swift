
// level: easy 
// category: linked lists


// O(n) 
// pointer method 
func mergeTwoLists(list1: ListNode?, list2: ListNode?) -> ListNode?{
   
   // 1 -> 2 -> 4
   // 1 -> 3 -> 4
    var dummy = ListNode(value: -1)
    var tail = dummy
    var l1 = list1
    var l2 = list2
    
    while l1 != nil && l2 != nil{
        if l1!.value < l2!.value{
            // tail is the list1 value
            tail.next = list1
            // reassign the link
            l1 = l1?.next
        }else{
            tail.next = l2
            l2 = l2?.next
        }
        tail = tail.next!
    }
    
    tail.next = l1 ?? l2
    return dummy.next // return the true head of the list

}

// O(n)
func mergeTwoLists(list1: ListNode?, list2: ListNode?) -> ListNode?{
    // brute force 
    // edge cases
    if list1 == nil && list2 == nil{
        return nil
    }
    
    if list1 == nil{
        return list2
    }
    if list2 == nil{
        return list1
    }
    
    // iterate through each one, append to an array
    var arr: [Int] = []
    
    var current1 = list1
    var current2 = list2
    
    while current1 != nil {
        arr.append(current1.value)
        current1 = current1?.next
    }
    while current2 != nil{
        arr.append(current2.value)
        current2 = current2.next
    }
    
    // sort the array
    let sorted = arr.sorted()
    
    // make new linked list
    var head: ListNode? = nil
    var tail: ListNode? = nil
    for i in sorted{
        let newNode = ListNode(value: i)
        if head == nil{
            head = newNode
            tail = newNode
        }else{
            // add to the tail
            tail?.next = newNode
            tail = newNode
        }
        
    }
    return head
}
