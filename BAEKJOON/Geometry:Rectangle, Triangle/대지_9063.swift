// 대지_9063.swift
// 첫째 줄에 N 개의 점을 둘러싸는 최소 크기의 직사각형의 넓이를 출력하시오.

let N = Int(readLine()!)!
var x = [Int]()
var y = [Int]()
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    x.append(input[0])
    y.append(input[1])
}

// x max - x min * y max - y min 하면 되는 문제
print((x.max()!-x.min()!)*(y.max()!-y.min()!))

//3
//20 24
//40 21
//10 12

//360

//1
//15 13

//0