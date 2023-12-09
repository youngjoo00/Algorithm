// BOJ_11650_좌표 정렬하기.swift
//좌표를 x좌표가 증가하는 순으로, x좌표가 같으면 y좌표가 증가하는 순서로 정렬한 다음 출력하는 프로그램을 작성하시오.
//첫째 줄부터 N개의 줄에 점을 정렬한 결과를 출력한다.

// 구조체를 사용하여 변수 하나에 x, y 좌표의 값을 담아둠
struct CoordinateData {
    let x: Int
    let y: Int
}

let N = Int(readLine()!)!
var coordinates: [CoordinateData] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    coordinates.append(CoordinateData(x: input[0], y: input[1]))
}


coordinates.sort {
    // sort 함수에 클로저를 사용하여 x 의 값이 같으면 y 를 오름차순하여 정렬하도록 한다.
    if $0.x == $1.x {
        return $0.y < $1.y
    }
    // x의 값은 무조건 오름차순해서 정렬한다.
    return $0.x < $1.x
}

coordinates.forEach { print($0.x, $0.y) }

//5
//3 4
//1 1
//1 -1
//2 2
//3 3
//
//1 -1
//1 1
//2 2
//3 3
//3 4