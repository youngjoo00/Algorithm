// 39. 킹, 퀸, 룩, 비숍, 나이트, 폰(3003)
// 1 1 2 2 2 8

let piece = [1, 1, 2, 2, 2, 8]
let input = readLine()!.split(separator: " ").map { Int($0)! }

var reslut : [Int] = []

for i in 0..<input.count {
    reslut.append(piece[i] - input[i])
}

reslut.forEach { print($0, terminator: " ") }

// 0 1 2 2 2 7

// 1 0 0 0 0 1
