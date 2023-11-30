// 네 번째 점_3009.swift
// 세 점이 주어졌을 때, 축에 평행한 직사각형을 만들기 위해서 필요한 네 번째 점을 찾는 프로그램을 작성하시오.

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let input3 = readLine()!.split(separator: " ").map { Int($0)! }

var x = [input1[0], input2[0], input3[0]].sorted()
var y = [input1[1], input2[1], input3[1]].sorted()

// 각 열에서 가장 적은 횟수로 나온 값을 찾는것이 포인트
// 배열을 정렬해주고 [0]-[1] 을 빼주면 가장 적은 횟수로 나온 값이 나온다.
x[0]-x[1] == 0 ? print(x[2], terminator: " ") : print(x[0], terminator: " ")
y[0]-y[1] == 0 ? print(y[2]) : print(y[0])

//5 5
//5 7
//7 5

//7 7

//30 20
//10 10
//10 20

//30 10