

// O(logn)
// use a dict of array of tuples
// Level: Medium 
class TimeMap {
    
    private var keyStore: [String: [(String, Int)]] // key : [(value, timestamp)]
    
    init() {
        self.keyStore = [:]
    }
    
    func set(key: String, value: String, timestamp: Int){
        // check if key is in keyStore:
        if keyStore[key] == nil {
            keyStore[key] = [] // set to an empty value
        }
        
        // if it is...
        // append
        keyStore[key]!.append((value, timestamp))
    }
    
    func get(key: String, timestamp: Int) -> String {
        
        guard let values = keyStore[key] else{
            return "" // ensure there is an array of values
        }
        var result: String = ""
        
        // run binary search
        var l: Int = 0
        var r: Int = values.count - 1
        
        while l <= r {
            let m = (r + l) / 2
            if values[m].1 <= timestamp{
                // this is the first valid answer
                result = values[m].0
                l = m + 1
            }else{
                r = m - 1
            }
        }
        return result
    }
}



