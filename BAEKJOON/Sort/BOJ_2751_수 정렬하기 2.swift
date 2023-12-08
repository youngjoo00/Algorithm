// BOJ_2751_수 정렬하기 2.swift
// N개의 수가 주어졌을 때, 이를 오름차순으로 정렬하는 프로그램을 작성하시오.

var arr: [Int] = []

for _ in 0..<Int(readLine()!)! {
    arr.append(Int(readLine()!)!)
}

arr.sorted().forEach { print($0) }


//5
//5
//4
//3
//2
//1
//
//1
//2
//3
//4
//5