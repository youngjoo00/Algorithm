// 8. 구구단

//import Foundation
//
//let num = Int(readLine()!)!
//
//for i in stride(from: 1, through: 9, by: 1) {
//    print("\(num) * \(i) = \(num*i)")
//}

// 9. 두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오

// 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
// 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)

//import Foundation
//
//let T = Int(readLine()!)!
//
//var cal: [Int] = []
//
//for _ in stride(from: 0, to: T, by: 1) {
//    let testCase = readLine()!.split(separator: " ").map { Int($0)! }
//    // 배열을 초기화하고 append 를 이용하여 배열에 값을 넣어주자
//    cal.append(testCase[0] + testCase[1])
//}
//
//for i in cal {
//    print(i)
//}

// 10. n이 주어졌을 때, 1부터 n까지 합을 구하는 프로그램을 작성하시오.

//import Foundation
//
//let n = Int(readLine()!)!
//var result = 0
//
//for i in stride(from: 1, through: n, by: 1) {
//    result += i
//}
//
//print(result)

// 11. 구매한 각 물건의 가격과 개수, 구매한 물건들의 총 금액을 보고,
// 구매한 물건의 가격과 개수로 계산한 총 금액이 영수증에 적힌 총 금액과 일치하는지 검사해보자.

// 첫째 줄에는 영수증에 적힌 총 금액 X
// 둘째 줄에는 영수증에 적힌 구매한 물건의 종류의 수 N

//import Foundation
//
//let money = Int(readLine()!)!
//let kind = Int(readLine()!)!
//
//var cal = 0
//
//for _ in stride(from: 0, to: kind, by: 1) {
//    let thing = readLine()!.split(separator: " ").map { Int($0)! }
//
//    cal = cal + thing[0] * thing[1]
//}
//
//if money == cal {
//    print("Yes")
//} else {
//    print("No")
//}

// 12. long int 출력
// 무조건 n은 4배수

//import Foundation
//
//let n = Int(readLine()!)!
//var result : [String] = []
//
//if n % 4 == 0 {
//    let type = n / 4
//    for _ in stride(from: 0, to: type, by: 1) {
//        result.append("long")
//    }
//}
//
//let resultString = result.joined(separator: " ")
//print("\(resultString) int")

// n / 4 = 1 -> long
// 4
// long int

// n / 4 = 5 -> long*5
// 20
// long long long long long int

// 13. 첫째 줄에 테스트 케이스의 개수 T가 주어진다.
// 각 테스트 케이스는 한 줄로 이루어져 있으며, 각 줄에 A와 B가 주어진다. (0 < A, B < 10)

//let T = Int(readLine()!)!
//var result : [Int] = []
//
//for _ in 0..<T {
//    let numInput = readLine()!.split(separator: " ").map { Int($0)! }
//    result.append(numInput[0] + numInput[1])
//}
//
//for i in 0..<result.count {
//    print("Case #\(i+1): \(result[i])")
//}
// input
// 5
//1 1
//2 3
//3 4
//9 8
//5 2

// output
//Case #1: 2
//Case #2: 5
//Case #3: 7
//Case #4: 17
//Case #5: 7

// 14. 별 찍기
// swift 의 print는 기본적으로 terminator 에 \n (개행)이 디폴트 값으로 되어 있어서 직접 값을 변경해주면 된다.

//let n = Int(readLine()!)!
//
//for i in 1...n {
//    for j in 1...i {
//        print("*", terminator: "")
//    }
//    print()
//}

//5

//*
//**
//***
//****
//*****

// 15. 별 찍기 2
// swift 의 print는 기본적으로 terminator 에 \n (개행)이 디폴트 값으로 되어 있어서 직접 값을 변경해주면 된다.

//let n = Int(readLine()!)!
//
//for i in 1...n {
//    for _ in stride(from: n-i, through: 1, by: -1) {
//        print(terminator: " ")
//    }
//    for _ in stride(from: 1, through: i, by: 1) {
//        print("*", terminator: "")
//    }
//    print()
//}

//5

//    *
//   **
//  ***
// ****
//*****

// 16. A + B , 마지막에 0 0 입력
// repeat - while 사용

//var n : [Int] = []
//var cal : [Int] = []
//
//repeat {
//    n = readLine()!.split(separator: " ").map{ Int($0)! }
//    if n[0] == 0 && n[1] == 0 {
//        break
//    }
//    cal.append(n[0] + n[1])
//} while !(n[0] == 0 && n[1] == 0)
//
//for i in 0..<cal.count {
//    print(cal[i])
//}

// 17. A + B 4
// EOF 에 대한 이해를 묻는 문제

//while let testCase = readLine() {
//    print(testCase.split(separator: " ").map { Int($0)! }.reduce(0, +))
//    // reduce 함수는 배열의 값들을 연산해서 리턴해준다.
//}

// reduce 함수 예시
//let numbers = [1, 2, 3, 4]
// 0은 초기값, 이니셜 머시기
//let numberSum = numbers.reduce(0, { x, y in
//    x + y
//})
// numberSum == 10
