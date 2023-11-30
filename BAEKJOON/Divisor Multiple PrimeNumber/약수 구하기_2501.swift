// 58. 약수 구하기_2501.swift
// 두 개의 자연수 N과 K가 주어졌을 때, N의 약수들 중 K번째로 작은 수를 출력하는 프로그램을 작성하시오.
// 첫째 줄에 N의 약수들 중 K번째로 작은 수를 출력한다. 만일 N의 약수의 개수가 K개보다 적어서 K번째 약수가 존재하지 않을 경우에는 0을 출력하시오.

let input = readLine()!.split(separator: " ").map { Int($0)! }
var result = [Int]()

for i in 1...input[0] {
    if input[0] % i == 0 {
        result.append(i)
    }
}

print(result.count >= input[1] ? result[input[1]-1] : 0)

// 6 3
// 3

// 25 4
// 0

// 2735 1
// 1