// BOJ_1735_분수 합.swift
// 첫째 줄에 구하고자 하는 기약분수의 분자와 분모를 뜻하는 두 개의 자연수를 빈 칸을 사이에 두고 순서대로 출력한다.

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let (numerator1, denominator1) = (input1[0], input1[1])

let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let (numerator2, denominator2) = (input2[0], input2[1])

// 분수끼리 합한다.
let sumNumerator = numerator1 * denominator2 + numerator2 * denominator1
let sumDenominator = denominator1 * denominator2

// 기약분수로 만들기 위해 분자와 분모의 최대 공약수를 구한다.
let gcdDivde = gcd(sumNumerator, sumDenominator)

// 최대 공약수로 나눈 값이 최종 값
print(sumNumerator/gcdDivde, sumDenominator/gcdDivde)

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        (a, b) = (b, a % b)
    }
    return a
}