
// Category: linked list 
class ListNode {
    
    var value: Int
    var next: ListNode?
    
    init(value: Int, next: ListNode? = nil) {
        self.value = value
        self.next = next
    }
}

class LinkedList {
    
    // create the head and tail
    var head: ListNode
    var tail: ListNode
    
    // initialize an empty linked list
    init(){
        head = ListNode(value: -1)
        tail = head
    }
    
    // function get(int i)
    func get(index: Int) -> Int{
        var current = head.next // dummy's next
        var i = 0 // set the range
        while current != nil{
            if i == index{
                return current!.value
            }
            i+=1
            current = current?.next
        }
        return -1
    }
    
    // insert a node at head of list
    func insertHead(value: Int){
        var newNode = ListNode(value: value) // create new node
        newNode.next = head.next // dummy node's next is the next placement
        head.next = newNode // assign newNode
        if newNode.next == nil {
            tail = newNode
        }
    }
    
    // insert a node at the tail of list
    func insertTail(value: Int){
        var newNode = ListNode(value: value) // create new node
        tail.next = newNode // dummy node's next to newNode
        tail = newNode
        
    }
    
    // remove the ith node
    func remove(index: Int) -> Bool {
        // get to the ith node
        var current = head
        var i = 0
        while i < index && current != nil {
            i += 1
            current = current.next!
        }
        
        // remove node
        if current != nil && current.next != nil {
            if current.next === tail {
                tail = current
            }
            current.next = current.next?.next
            return true
        }
        return false
        
    }
    
    // getValues return an array of all values in the linked list
    func getValues() -> [Int]{
        // get all values with traversing
        var current = head.next
        var results: [Int] = []
        while current != nil {
            results.append(current!.value)
            current = current?.next
        }
        return results
    }
    
}

// ListNodes are not stored in memory the same way referenced out of memory
// To loop through nodes:

// O(n)
/*
 current = ListNode1
 while (current != null){
 current = current.next
 }
 */

// To add another node at the end of the list
// O(1)
/*
 tail.next = ListNode4
 tail = ListNode4 - or tail = tail.next -> two operations
 */

// To remove a node
// O(1) - O(n) if we search for an element specifically
/*
 head.next = head.next.next
 */
