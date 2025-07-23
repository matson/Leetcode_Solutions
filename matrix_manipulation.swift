
// matrix basics 

var matrix = [[1,2,3],
             [4,5,6]]

// to go through rows
for i in 0..<matrix.count{
    print(matrix[i])
}

// to make columns
for j in 0..<matrix[0].count{
    var columns: [Int] = []
    for i in 0..<matrix.count{
        columns.append(matrix[i][j])
    }
    print(columns)
}

var complexMatrix = [[1,2,3,4],
                     [5,6,7,8],
                     [9,10,11,12],
                     [13,14,15,16]]

// goal:
// print 2 X 2 squares
// use stride

let boxSize = 2
for boxRow in stride(from: 0, to: complexMatrix.count, by: boxSize){
    for boxCol in stride(from: 0, to: complexMatrix.count, by: boxSize){
        var box: [Int] = []
        for i in 0..<boxSize{ // individual box
            for j in 0..<boxSize {
                box.append(complexMatrix[boxRow + i] [boxCol + j])
            }
        }
        print(box)
    }
}
