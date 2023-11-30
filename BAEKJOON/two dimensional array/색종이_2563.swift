// 48. 색종이 (2563)
// 10x10 도화지에 가로세로 크기가 10인 정사각형 색종이를 붙이고, 넓이 구하기

var arr = [[Int]](repeating: [Int](repeating: 0, count: 100), count: 100)

let count = Int(readLine()!)!
var result = 0
for _ in 0..<count {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let x = input[0], y = input[1]
    for i in 0..<10 {
        // 1이라는 값을 10번 반복해서 넣어줘야했기 때문에 repeatElement 함수 사용
        // 만약, 배열 자체를 통째로 넣어서 값을 바꿔준다면 with에 repeatElement 없이 배열 자체를 넣어주면 됨
        arr[x+i].replaceSubrange(y..<y+10, with: repeatElement(1, count: 10))
    }
}

for i in 0..<100 {
    result = result + arr[i].filter { $0 == 1 }.count
}

print(result)

//3
//3 7
//15 7
//5 2
//
//260