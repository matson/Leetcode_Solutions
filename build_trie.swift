// Tries = Prefix Trees
// Used for inserting a word
// Search a word
// Search Prefix -> this is the main thing it's used for
// Question: we have the word apple, but how many other words have the prefix "ap"?
// It's a tree of characters -> each node is a letter
// Nodes are letters - can have 26 children or any value in between 0-26
// we will store the children in a hashmap?
// time complexity: O(w) where w is the length of the word

// category: trie 
// level: med
class TrieNode{
    var children = [Character: TrieNode]() // -> hashmap
    var word = false
}

class PrefixTree{
    var root: TrieNode
    
    init(root: TrieNode) {
        self.root = root
    }
    
    // insert word
    func insertWord(word: String){
        // insert apple
        var current = root
        for char in word{
            if current.children[char] == nil{
                // insert the character
                current.children[char] = TrieNode()
            }
            current = current.children[char]!
        }
        current.word = true // completes the word
    }
    // search word
    func searchWord(word: String) -> Bool {
        var current = root
        for char in word{
            if current.children[char] == nil{
                return false
            }
            current = current.children[char]!
        }
        return current.word
    }
    
    // starts with
    func hasPrefix(prefix: String) -> Bool {
        // start with prefix
        var current = root
        for char in prefix{
            if current.children[char] == nil{
                return false
            }
            current = current.children[char]!
        }
        return true
    }
}
