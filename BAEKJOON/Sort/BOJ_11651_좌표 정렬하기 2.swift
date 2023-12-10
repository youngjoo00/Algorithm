// BOJ_11651_좌표 정렬하기 2.swift
//좌표를 y좌표가 증가하는 순으로, y좌표가 같으면 x좌표가 증가하는 순서로 정렬한 다음 출력하는 프로그램을 작성하시오.
//첫째 줄부터 N개의 줄에 점을 정렬한 결과를 출력한다.

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
    if $0.y == $1.y {
        return $0.x < $1.x
    }
    return $0.y < $1.y
}

coordinates.forEach { print($0.x, $0.y) }

//5
//0 4
//1 2
//1 -1
//2 2
//3 3
//
//1 -1
//1 2
//2 2
//3 3
//0 4