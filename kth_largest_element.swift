

// medium 
// need to construct your heap class
func findKthLargest(nums: [Int], k: Int) -> Int {
    let minHeap = Heap() // implementation found below
    
    for num in nums{
        minHeap.push(val: num) // push the values onto the heap
        if minHeap.count > k {
            _ = minHeap.pop()
        }
    }
    return minHeap.pop() // return the kth
}

import Foundation

// Kth Largest Element in an Array
// * Use a min-heap

// [X,1,2,3,4,5]

class Heap{
    
    var heap = [0] // dummy index
    
    // get the total number of elements
    var count: Int {
        return heap.count - 1
    }
    
    // return the min value
    func peek() -> Int? {
        return count >= 1 ? heap[1]: nil
    }
    
    // push function (add)
    func push(val: Int){
        heap.append(val) // append to the array
        var i = heap.count - 1 // index
        
        // while the parent > new value
        while (i > 1 && heap[i] < heap[i/2]) {
            heap.swapAt(i, i/2)
            i = i / 2 // move pointer up to parent
        }
        
    }
    
    // pop function (remove then organize)
    func pop() -> Int {
        if heap.count == 1{
            return -1
        }
        
        if heap.count == 2{
            return heap.removeLast()
        }
        
        var result = heap[1]
        // set last to the root
        heap[1] = heap.removeLast() // 30 to the root
        var i = 1 // start at the root index
        
        // perc down
        while(2 * i < heap.count){
            let right = 2 * i + 1
            let left = 2 * i
            // is there a right child
            if (right < heap.count) &&
                // is the right child < left child
                heap[right] < heap[left] &&
                // is the current > right child
                heap[i] > heap[right]{
                heap.swapAt(i, right)
                i = right
            }
            else if heap[i] > heap[left] {
                heap.swapAt(i, left)
                i = left
            }
            else{
                break
            }
        }
        return result
    }
}

// Pushing onto heap
// 1). add the value to the bottom of the tree -> add to the array
// 2). compare the parent up i / 2
// 3). swap the two values - can use swapAt to simplify

// Popping off the heap
// 1). base cases, what is the result?
// 1). remove the last node -> assign to the root
// 2). while there is a left child
// 3). is there a right child as well? -> right is less than left, current > right -> swap
// 4). is the current > left child? -> swap left and current
// 5). else: break
