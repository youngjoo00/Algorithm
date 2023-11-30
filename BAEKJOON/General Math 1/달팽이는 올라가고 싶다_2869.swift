// 56. 달팽이는 올라가고 싶다_2869.swift
// 높이 V미터, 낮에는 A올라감, 밤에는 B미터 내려감, 정상에 올라간 후에는 미끄러지지 않는다.
// 달팽이가 나무 막대를 모두 올라가려면, 며칠이 걸리는지 구하는 프로그램을 작성하시오.
// 첫째 줄에 세 정수 A, B, V가 공백으로 구분되어서 주어진다.

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let A = Double(input[0]), B = Double(input[1]), V = Double(input[2])

// day 를 구하는 문제
//1. V - a * day + b * (day-1) <= 0
//2. V <= a * day - b * (day-1)
//3. V <= day * (a-b)    +b
//4. -day * (a-b) <= -V + b
//5. day * (a-b) >=  V-b
//6. day >= (V-b)/(a-b)
print(Int(ceil((V-B)/(A-B))))


// 2 1 5
// 4

// 5 1 6
// 2

// 100 99 1000000000
// 999999901