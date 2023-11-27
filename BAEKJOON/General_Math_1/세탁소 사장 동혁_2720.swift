// 51. 세탁소 사장 동혁_2720.swift
// 쿼터(Quarter, $0.25)의 개수, 다임(Dime, $0.10)의 개수, 니켈(Nickel, $0.05)의 개수, 페니(Penny, $0.01)의 개수 구하기
// 각 테스트케이스에 대해 필요한 쿼터의 개수, 다임의 개수, 니켈의 개수, 페니의 개수를 공백으로 구분하여 출력한다.
// ex) $1.24를 거슬러 주어야 한다면, 손님은 4쿼터, 2다임, 0니켈, 4페니를 받게 된다.

let money : [Int] = [25, 10, 5, 1]
let T = Int(readLine()!)!

for _ in 0..<T {
    var result : [Int] = []
    var input = Int(readLine()!)!
    for i in 0..<4 {
        result.append(input / money[i])
        input = input % money[i]
    }
    result.forEach { print( $0, terminator: " " )}
    print()
}

//3
//124
//25
//194

//4 2 0 4
//1 0 0 0
//7 1 1 4