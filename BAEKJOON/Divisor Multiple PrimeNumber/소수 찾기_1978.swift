// 60. 소수 찾기_1978.swift
//주어진 수 N개 중에서 소수가 몇 개인지 찾아서 출력하는 프로그램을 작성하시오.

let input = Int(readLine()!)!
var num = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0

// 1은 제외
if num.contains(1) {
    num.remove(at: num.firstIndex(of: 1)!)
}

// 소수 판별
for i in num {
    var count = 0
    for j in 1...i {
        if i % j == 0 {
            count += 1
        }
    }
    if count <= 2 {
        result += 1
    }
}

print(result)

//4
//1 3 5 7

//3