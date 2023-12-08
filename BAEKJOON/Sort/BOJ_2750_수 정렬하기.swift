// BOJ_2750_수 정렬하기.swift
//첫째 줄부터 N개의 줄에 오름차순으로 정렬한 결과를 한 줄에 하나씩 출력한다.

var arr: [Int] = []

for _ in 0..<Int(readLine()!)! {
    arr.append(Int(readLine()!)!)
}

arr.sorted().forEach { print($0) }

//5
//5
//2
//3
//4
//1

//1
//2
//3
//4
//5