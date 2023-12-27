// BOJ_10816_숫자 카드 2.swift
// 숫자 카드는 정수 하나가 적혀져 있는 카드이다. 상근이는 숫자 카드 N개를 가지고 있다.
// 정수 M개가 주어졌을 때, 이 수가 적혀있는 숫자 카드를 상근이가 몇 개 가지고 있는지 구하는 프로그램을 작성하시오.

let N = Int(readLine()!)!
// uniquingKeysWith: + : Dictionary 초기화시 key 기준으로 중복된 값을 체크하여 병합해준다.
var cardList = Dictionary(readLine()!.split(separator: " ").map { (Int($0)!, 1) }, uniquingKeysWith: +)

let M = Int(readLine()!)!
var checkList = readLine()!.split(separator: " ").map { Int($0)! }

for check in checkList {
    print(cardList[check, default: 0], terminator: " ")
}

//10
//6 3 2 10 10 10 -10 -10 7 3
//8
//10 9 -5 2 3 4 5 -10
//
//3 0 0 1 2 0 0 2