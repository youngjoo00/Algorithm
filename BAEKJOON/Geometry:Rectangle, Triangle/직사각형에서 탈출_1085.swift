// 직사각형에서 탈출_1085.swift
// 한수는 지금 (x, y)에 있다.
// 직사각형은 각 변이 좌표축에 평행하고, 왼쪽 아래 꼭짓점은 (0, 0), 오른쪽 위 꼭짓점은 (w, h)에 있다.
// 직사각형의 경계선까지 가는 거리의 최솟값을 구하는 프로그램을 작성하시오.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], y = input[1], w = input[2], h = input[3]

// 위치 값을 계산했을 때 가장 낮은 값이 탈출하기 가장 빠른 값
var result = [x, y, w-x, h-y]

print(result.min()!)


// 653 375 1000 1000
// 347

// 161 181 762 375
// 161