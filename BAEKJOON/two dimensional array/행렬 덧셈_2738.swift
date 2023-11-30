// 46. 행렬 덧셈 (2738)
// N*M크기의 두 행렬 A와 B가 주어졌을 때, 두 행렬을 더하는 프로그램을 작성하시오.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]

// 2차원 배열 선언 방법 [[Type]]
var arrA: [[Int]] = []
var arrB: [[Int]] = []
var result = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)

for _ in 0..<n {
   // 배열안에 배열을 넣는 방법
   arrA.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for _ in 0..<n {
   arrB.append(readLine()!.split(separator: " ").map { Int($0)! })
}

for i in 0..<n {
   for j in 0..<m {
       // 배열에 접근하는건 다른 언어와 같다.
       result[i][j] = arrA[i][j] + arrB[i][j]
   }
}

for i in 0..<n {
   // 배열[i].forEach 함수를 이용해 $0 로 각각의 요소에 접근해서 출력
   result[i].forEach { print($0, terminator: " ") }
   print()
}

// 사실 이거보다 2중 반복으로 더하면서 출력해서 더 짧게 끝낼 수 있는데 컴파일 에러가 나와서 찾아보니 값을 넣고 제대로 출력을 해줘야 되는듯 하다.

//3 3
//1 1 1
//2 2 2
//0 1 0
//3 3 3
//4 4 4
//5 5 100
//
//4 4 4
//6 6 6
//5 6 100