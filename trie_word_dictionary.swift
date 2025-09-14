


class TrieNode{
    var children = [Character: TrieNode]() // -> hashmap
    var word = false
}


class WordDictionary{
    var root = TrieNode()
    
    init(root: TrieNode = TrieNode()) {
        self.root = root
    }
    
    // add word
    func addWord(word: String){
        var current = root
        for char in word{
            if current.children[char] == nil{
                // insert a new node
                current.children[char] = TrieNode()
            }
            current = current.children[char]!
        }
        current.word = true // mark end of word
    }
    
    // search word
    func searchWord(word: String) -> Bool{
        
        func dfs(j: Int, root: TrieNode) -> Bool{
            var current = root
            // turn word into an array
            var arrWord = Array(word)
            for i in j..<arrWord.count{
                var char = arrWord[i]
                // if it's a dot
                if char == "."{
                    for child in current.children.values{
                        if dfs(j: i+1, root: child){
                            return true
                        }
                    }
                    return false
                }
                // if not
                else{
                    if current.children[char] == nil{
                        return false
                    }
                    current = current.children[char]!
                }
            }
            // if no dots...
            return current.word
        }
        return dfs(j: 0, root: root)
        
    }
    
}
