// BOJ_10815_숫자 카드.swift
// 상근이는 숫자 카드 N개를 가지고 있다. 정수 M개가 주어졌을 때, 이 수가 적혀있는 숫자 카드를 상근이가 가지고 있는지 아닌지를 구하는 프로그램을 작성하시오.
// 첫째 줄에 입력으로 주어진 M개의 수에 대해서, 각 수가 적힌 숫자 카드를 상근이가 가지고 있으면 1을, 아니면 0을 공백으로 구분해 출력한다.

let n = Int(readLine()!)!
let nCard: Set<Int> = Set(readLine()!.split(separator: " ").map { Int($0)! })

let m = Int(readLine()!)!
let mCard = readLine()!.split(separator: " ").map { Int($0)! }

for i in mCard {
    print(nCard.contains(i) ? 1 : 0, terminator: " ")
}

//5
//6 3 2 10 -10
//8
//10 9 -5 2 3 4 5 -10
//
//1 0 0 1 1 0 0 1