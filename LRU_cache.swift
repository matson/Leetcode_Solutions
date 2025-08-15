
class ListNode {
    
    var key: Int
    var value: Int
    var next: ListNode?
    var prev: ListNode?
    
    
    init(key: Int, value: Int, next: ListNode? = nil, prev: ListNode? = nil) {
        self.key = key
        self.value = value
        self.next = next
        self.prev = prev
    }
}

class LRUCache {
    // capacity
    private var capacity: Int
    var cache: [Int: ListNode] = [:]
    var left: ListNode
    var right: ListNode
    
    init(capacity: Int, left: ListNode, right: ListNode) {
        self.capacity = capacity
        self.left = ListNode(key: 0,value: 0)
        self.right = ListNode(key: 0,value: 0)
        self.left.next = self.right
        self.right.prev = self.left
    }
    
    func get(key: Int) -> Int {
        if let node = cache[key]{
            // update to most recent
            self.remove(node: node)
            self.insert(node: node)
            return node.value
        }
        return -1
    }
    
    func put(key: Int, value: Int) {
        if let node = cache[key]{
            remove(node: node)
        }
        cache[key] = ListNode(key: key, value: value)
        insert(node: cache[key])
        
        // remove from list and delete the LRU from hashmap
        if cache.count > capacity{
            var lru = left.next
            remove(node: lru)
            cache.removeValue(forKey: lru?.key)
        }
    }
    
    // helper functions
    func insert(node: ListNode?){
        var prev = right.prev
        let next = right
        prev?.next = node
        next.prev = node
        node?.prev = prev
        node?.next = next
    }
    
    func remove(node: ListNode?){
        // remove from middle
        var prev = node?.prev
        var next = node?.next
        prev?.next = next
        next?.prev = prev
    }
    
    
}
