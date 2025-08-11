class ListNode {
    var val: Int
    var next: ListNode?
    init(value: Int) {
        self.val = value
        self.next = nil
    }
}

class MyLinkedList {
    var head: ListNode?
    var tail: ListNode?
    
    init() {
        head = ListNode(value: -1)
        tail = head
    }
    
    // Get the value of the node at the given index
    func get(_ index: Int) -> Int {
        if index < 0 {
            return -1
        }
        var current = head?.next // Start after dummy node
        var i = 0
        while current != nil && i < index {
            current = current?.next
            i += 1
        }
        return current?.val ?? -1 // Return -1 if index out of bounds
    }
    
    // Add node at head (after dummy node)
    func addAtHead(_ value: Int) {
        let newNode = ListNode(value: value)
        newNode.next = head?.next
        head?.next = newNode
        if newNode.next == nil { // Update tail if list was empty
            tail = newNode
        }
    }
    
    // Add node at tail
    func addAtTail(_ value: Int) {
        let newNode = ListNode(value: value)
        tail?.next = newNode
        tail = newNode
    }
    
    // Add node at specific index
    func addAtIndex(_ index: Int, _ value: Int) {
        if index < 0 {
            return
        }
        var current = head
        var i = 0
        while i < index && current?.next != nil {
            current = current?.next
            i += 1
        }
        if current == nil {
            return
        }
        let newNode = ListNode(value: value)
        newNode.next = current?.next
        current?.next = newNode
        if newNode.next == nil {
            tail = newNode
        }
    }
    
    // Delete node at specific index
    func deleteAtIndex(_ index: Int) {
        if index < 0 {
            return
        }
        var current = head
        var i = 0
        while i < index && current?.next != nil {
            current = current?.next
            i += 1
        }
        if current?.next == nil {
            return
        }
        if current?.next === tail {
            tail = current
        }
        current?.next = current?.next?.next
    }
}
