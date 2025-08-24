// TODO: define the 'ranks' constant
// TODO: define the 'files' constant

let ranks = 1...8
let files = "A"..."H"


func isValidSquare(rank: Int, file: String) -> Bool {
    return ranks.contains(rank)
        && file.count == 1
        && files.contains(file)
} 

func getRow(_ board: [String], rank: Int) -> [String] {
    let width = 8
    let start = (rank - 1) * width
     return Array(board[start ..< start + width])
}

