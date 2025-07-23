func isValidSudoku(board: [[String]]) -> Bool {
    
    // brute force
    // so, go through every row check for duplicates
    // go through every column, check for duplicates
    // go through all 3*3 squares
    
    // part 1
    // rows
    for i in 0..<board.count{
        if hasDuplicate(items: board[i]){
            return false
        }
    }
    
    // part 2
    // columns
    for j in 0..<board.count{
        var columns: [String] = []
        for i in 0..<board.count{
            columns.append(board[i][j])
        }
        if hasDuplicate(items: columns){
            return false
        }
    }
    
    // part 3
    // make the 3 X 3 boxes
    var boxSize = 3
    for boxRow in stride(from: 0, to: board.count, by: boxSize) {
          for boxCol in stride(from: 0, to:  board.count, by: boxSize) {
              var box = [String]()
              for i in 0..<boxSize {
                  for j in 0..<boxSize {
                      box.append(board[boxRow + i][boxCol + j])
                  }
              }
              if hasDuplicate(items: box) { return false }
          }
      }
    
    
    return true
 
    
}

func hasDuplicate(items: [String]) -> Bool{
    // make a helper function
    var seen = Set<String>()
    for str in items where str != "."{
        if seen.contains(str) {return true}
        seen.insert(str)
    }
    return false
}


print(isValidSudoku(board: [["1","2",".",".","3",".",".",".","."],
                            ["4",".",".","5",".",".",".",".","."],
                            [".","9","8",".",".",".",".",".","3"],
                            ["5",".",".",".","6",".",".",".","4"],
                            [".",".",".","8",".","3",".",".","5"],
                            ["7",".",".",".","2",".",".",".","6"],
                            [".",".",".",".",".",".","2",".","."],
                            [".",".",".","4","1","9",".",".","8"],
                            [".",".",".",".","8",".",".","7","9"]])) // true

print(isValidSudoku(board: [["1","2",".",".","3",".",".",".","."],
                            ["4",".",".","5",".",".",".",".","."],
                            [".","9","1",".",".",".",".",".","3"],
                            ["5",".",".",".","6",".",".",".","4"],
                            [".",".",".","8",".","3",".",".","5"],
                            ["7",".",".",".","2",".",".",".","6"],
                            [".",".",".",".",".",".","2",".","."],
                            [".",".",".","4","1","9",".",".","8"],
                            [".",".",".",".","8",".",".","7","9"]])) // false
