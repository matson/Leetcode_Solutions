


func addTwoNumbers(l1: ListNode?, l2: ListNode?)-> ListNode?{

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
