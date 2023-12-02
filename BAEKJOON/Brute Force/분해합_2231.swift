// 분해합_2231.swift
// 자연수 N이 주어졌을 때, N의 가장 작은 생성자를 구해내는 프로그램을 작성하시오.

// 1. 간단하게 의식의 흐름대로 2중 for문을 사용
let N = Int(readLine()!)!
var result = 0
for i in 1...N {
    var num = i
    var sum = 0

    while num > 9 {
        sum += num % 10
        num /= 10
    }

    sum += i + num
    if sum == N {
        result = i
        break
    }
}

print(result)

// 2. i 값을 map 을 사용하여 Int 배열로 각각 자릿수를 나눠주고, reduce 로 모두 더하기
let N = Int(readLine()!)!
var result = 0

for i in 1...N {
   if String(i).map({ Int(String($0))! }).reduce(0, +) + i == N {
       result = i
       break
   }
}

print(result)

// 216

// 198