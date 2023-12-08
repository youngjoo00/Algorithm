// BOJ_25305_커트라인.swift
// 상을 받는 커트라인을 출력하라.

let input = readLine()!.split(separator: " ").map { Int($0)! }
var score = readLine()!.split(separator: " ").map { Int($0)! }

print(score.sorted(by: >)[input[1]-1])


//5 2
//100 76 85 93 98
//
//98