





// category: linked lists
// level: medium
// O(n)
func addTwoNumbers(l1: ListNode?, l2: ListNode?)-> ListNode?{
    
    // picture
    //           1
    // 5 -> 6 -> 4 -> 0
    // 2 -> 4 -> 3 -> 3
    // r:  7 -> 0 -> 8 -> 3
    
    var dummy = ListNode(value: -1)
    var tail = dummy
    var l1 = l1
    var l2 = l2
    var carry: Int = 0
    
    
    while l1 != nil  || l2 != nil || carry != 0 {
        var v1 = l1?.value ?? 0
        var v2 = l2?.value ?? 0
        
        // new digit
        var sum = v1 + v2 + carry
        carry = sum / 10
        let val = sum % 10
        tail.next = ListNode(value: val)
        
        tail = tail.next!
        // go through the list 
        l1 = l1?.next
        l2 = l2?.next
    }
    return dummy.next
}


func addTwoNumbers(l1: ListNode?, l2: ListNode?)-> ListNode?{
    // brute force 
    guard l1 != nil || l2 != nil else {return nil}
    
    var arr1: [Int] = []
    var arr2: [Int] = []
    
    // traverse through each list
    var current1 = l1
    while current1 != nil {
        arr1.append(current1!.value)
        current1 = current1?.next
    }
    
    var current2 = l2
    while current2 != nil{
        arr2.append(current2!.value)
        current2 = current2?.next
    }
    
    // make the arrays integers // or reverse them
    let str1 = arr1.reversed().map { String($0) }.joined()
    let str2 = arr2.reversed().map { String($0) }.joined()
    
    // then add those
    let num1 = Int(str1) ?? 0
    let num2 = Int(str2) ?? 0
    let sum = num1 + num2
    
    // make into array again
    let sumStr = String(sum)
    let sumArr = sumStr.map { Int(String($0))! }.reversed()
    
    // build list
    var dummy = ListNode(value: -1)
    var tail = dummy
    
    for i in sumArr{
        var newNode = ListNode(value: i)
        tail.next = newNode
        tail = newNode
        
    }
    
    return dummy.next
}
