
// Level: Easy
// Category: linked list 
// O(n)
func middleNode(_ head: ListNode?) -> ListNode? {
      // slow and fast pointer
      var fast: ListNode? = head
      var slow: ListNode? = head

      while fast != nil && fast?.next != nil {
          slow = slow?.next
          fast = fast?.next?.next
      }
      return slow 
}
