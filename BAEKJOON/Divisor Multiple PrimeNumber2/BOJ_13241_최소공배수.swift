// BOJ_13241_최소공배수.swift
// 두 자연수 A, B 에 대한 최소공배수를 각 테스트케이스 별로 출력

let input = readLine()!.split(separator: " ").map { Int($0)! }
let A = input[0], B = input[1]

// 최소 공배수를 구하는 공식
print(abs(A*B) / gcd(A, B))


func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        (a, b) = (b, a % b)
    }
    return a
}