// 48. 세로읽기 (10798)
// 값이 없으면 넘김

var arr = [[String]](repeating: [String](repeating: "", count: 15), count: 5)

for i in 0..<5 {
    let input = readLine()!.map { String($0) }
    arr[i].replaceSubrange(0..<input.count, with: input)
}

for i in 0..<15 {
    for j in 0..<5 {
        print(arr[j][i], terminator: "")
    }
}

// replaceSubrange 를 이용하여 input 배열을 arr[i] 에 통째로 변경시켰다.

//AABCDD
//afzz
//09121
//a8EWg6
//P5h3kx

// Aa0aPAf985Bz1EhCz2W3D1gkD6x