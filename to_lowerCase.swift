
// Level: easy
// Category: ascii 

func toLowerCase(s: String) -> String{
    
    // Uppercase letters are from 65 to 90
    // Lowercase letters are from 97 to 122
    
    var arr_s = Array(s)
    
    for i in 0..<arr_s.count{
        // if it's uppercased
        if arr_s[i].isUppercase{
            // turn the value into an ascii
            if let ascii = arr_s[i].asciiValue{
                // add 32 to the ascii
                let lowerAscii = ascii + 32
                // convert to a unicode scalar
                let lowerScalar = UnicodeScalar(lowerAscii)
                // assign to the array
                arr_s[i] = Character(lowerScalar)
            }
        }
    }
    return String(arr_s)
    
}

print(toLowerCase(s: "Hello")) // hello
print(toLowerCase(s: "here")) // here
print(toLowerCase(s: "LOVELY")) // lovely


// lol for funzies
func toLowerCase(s: String) -> String{
   
   return s.lowercased()
   
}
