



// O(n) 
// Category: stack
// Level: Easy 
func removeOuterParen(s: String)-> String{
    
    var counter: Int = 0
    var result: [Character] = []
    
    for char in s{
        if char == "("{
            if counter > 0 {
                result.append(char)
            }
            counter += 1
        }else{ // if ")"
            counter -= 1
            if counter > 0{
                result.append(char)
            }
        }
    }
    return String(result)
}
print(removeOuterParen(s: "(()())(())")) // should be "()()()"
