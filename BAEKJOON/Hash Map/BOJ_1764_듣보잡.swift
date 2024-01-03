// BOJ_1764_듣보잡.swift
// 듣보잡의 수와 그 명단을 사전순으로 출력한다.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var setA: Set<String> = []
var setB: Set<String> = []

for _ in 0..<N {
    setA.insert(readLine()!)
}

for _ in 0..<M {
    setB.insert(readLine()!)
}

let intersection = setA.intersection(setB).sorted()

print(intersection.count)
intersection.forEach { print($0) }

//3 4
//ohhenrie
//charlie
//baesangwook
//obama
//baesangwook
//ohhenrie
//clinton
//
//2
//baesangwook
//ohhenrie