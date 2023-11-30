// 51. 진법 변환 2_11005.swift
// 10 진법 수 N이 주어진다. 이 수를 B 진법으로 바꿔 출력하는 프로그램을 작성하시오.

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let B = input[1]

print(String(N, radix: B).uppercased()) // 알파벳은 소문자로 나와서 uppercased() 를 사용한다.

// 10진수 -> N진수 변환
//var value = 100
//var result : String = String(value,radix: 2) // 1100100
// String(Int: n, radix: m) -> n값을 m진법으로 변환시켜서 문자열로 뱉어내줘!

// N진수 -> 10진수 변환
//var returnResult = Int(result, radix: 2)! // 100
// Int(String: n, radix: m)! -> String 값인 n값은 m진법이니 10진수로 변환시켜서 숫자로 뱉어내줘!

// 60466175 36
// ZZZZZ