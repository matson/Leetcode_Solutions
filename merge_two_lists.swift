
// level: easy 
// category: linked lists
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
