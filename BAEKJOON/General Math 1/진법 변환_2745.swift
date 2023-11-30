// 48. 진법 변환_2745.swift
// B진법 수 N이 주어진다. 이 수를 10진법으로 바꿔 출력하는 프로그램을 작성하시오.

let input = readLine()!.split(separator: " ").map { String($0) }
let N = input[0]
let B = Int(input[1])!

print(Int(N, radix: B)!)

// 10진수 -> N진수 변환
//var value = 100
//var result : String = String(value,radix: 2) // 1100100
// String(n, radix: m) -> n값을 m진법으로 변환시켜서 문자열로 뱉어내줘!

// N진수 -> 10진수 변환
//var returnResult = Int(result, radix: 2)! // 100
// Int(String: n, radix: m)! -> String 값인 n값은 m진법이니 10진수로 변환시켜서 숫자로 뱉어내줘!

// ZZZZZ 36
// 60466175

// (N*B^4)
// (N*B^4)+(Z(35)*36^3)+(Z(35)*36^2)+(Z(35)*36^1)+(Z(35)*36^0)