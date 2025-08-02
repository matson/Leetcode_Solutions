

// O(n)
func backspaceCompare(s: String, t: String) -> Bool {
    
    var string1 = backspace(s: s)
    var string2 = backspace(s: t)
    // compare s and t
    return string1 == string2
}


func backspace(s: String) -> String{
    var arr_s = Array(s)
    var result: [Character] = []
    
    // remove the trinkets
    for char in arr_s {
        if char != "#"{
            result.append(char)
        }else if !result.isEmpty{
            // if #
            result.removeLast()
        }
    }
    
    return String(result)
}
print(backspaceCompare(s: "ab#c", t: "ad#c")) // true
print(backspaceCompare(s:"a#c", t: "b")) // false
