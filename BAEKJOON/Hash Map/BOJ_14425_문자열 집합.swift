// BOJ_14425_문자열 집합.swift
// 총 N개의 문자열로 이루어진 집합 S가 주어진다.
// 입력으로 주어지는 M개의 문자열 중에서 집합 S에 포함되어 있는 것이 총 몇 개인지 구하는 프로그램을 작성하시오.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var S: Set<String> = []
var stringM: [String] = []

for _ in 0..<N {
    S.insert(readLine()!)
}

for _ in 0..<M {
    stringM.append(readLine()!)
}

print(stringM.filter { S.contains($0) }.count)

//5 11
//baekjoononlinejudge
//startlink
//codeplus
//sundaycoding
//codingsh
//baekjoon
//codeplus
//codeminus
//startlink
//starlink
//sundaycoding
//codingsh
//codinghs
//sondaycoding
//startrink
//icerink

//4